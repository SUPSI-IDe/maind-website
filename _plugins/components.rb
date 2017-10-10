class ComponentsBlock < Liquid::Block
	def initialize(tag_name, markup, tokens)
		super
		@markup = markup
	end

	def lookup(context, name)
		lookup = context
		name.split(".").each { |value| lookup = lookup[value] }
		lookup
	end

	# recursively walk given node and transform any string value which begins with "->" to it's corresponding value in the context
	# TODO: somehow lookup values in arrays too...
	def walk_and_lookup(context, node) 

		for k,v in node
			if v.is_a?(Hash)
				walk_and_lookup(context, v)
			
			elsif v.is_a? String
				if v.strip =~ /^->\s*[^\s]+$/ 
					name = v.strip.sub(/^->\s*/, '').strip
					node[k] = lookup(context, name)
				end
			end
		end
	end

	def load_if_changed(path) 
		@@ctrlTimes = Hash.new unless defined? @@ctrlTimes

		if not defined?(@@ctrlTimes[path]) or @@ctrlTimes[path] != File.mtime(path)
			puts "load #{path}. ctrlTimes is '#{@@ctrlTimes[path]}' - mtime is #{File.mtime(path)}"
			load path
		end

		@@ctrlTimes[path] = File.mtime(path)
	end

	def render(context)
		str = super.to_s


		# this needs to work with tabs too.. replace each tab with 4 spaces
		str = str.gsub(/\t/, "    ")

		if str.strip.empty? 
			attrs = Hash.new
		else
			attrs = YAML.load(str)

			# this evaluates "pointers" to variables in context
			walk_and_lookup context, attrs
		end
		
		component_name = @markup.strip
		path = File.join('_components', component_name, 'index.html')

		if File.exists? path
			partial = File.read(path)
			template = Liquid::Template.parse(partial)
			site = context.registers[:site]

			controllerPath = File.join(site.source, '_components', component_name, 'index.rb')
			if File.exists? controllerPath
				load_if_changed controllerPath
				
				classname = component_name + "Controller" 
				classname[0] = classname[0].capitalize #transform "imgBoxController" to "ImgBoxController"

				ctrlclass = Object.const_get(classname)
				ctrl = ctrlclass.new

				attrs = ctrl.transform(context, attrs)
			end

			info = {
				:filters   => [Jekyll::Filters],
				:registers => context.registers
			}
			result = template.render!(attrs.merge(site.site_payload), info)
			return result
		else
			puts "WARN: component #{component_name} does not exist"
			return "WARN: component #{component_name} does not exist"
		end
	end
end

class SassComponentsGenerator < Jekyll::Generator
	def generate (site)
		site.data['component_scss'] = Dir.glob("_components/**/*.scss")
	end
end


Liquid::Template.register_tag('component', ComponentsBlock)
