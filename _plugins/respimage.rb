require_relative 'respimage_lib/utils'
require_relative 'respimage_lib/respimage'
require_relative 'respimage_lib/respicture'

Liquid::Template.register_tag('respimage', RespImage::RespImage)
Liquid::Template.register_tag('respicture', RespImage::ResPicture)
