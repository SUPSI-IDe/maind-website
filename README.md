This is the website for [MAIND](http://www.maind.supsi.ch/).

It is built with [Jekyll](https://jekyllrb.com/).

It uses [Bourbon](http://bourbon.io/) and [neat.bourbon](http://neat.bourbon.io/) for now.

## Development

* Install jekyll with ```gem install jekyll```
* Install sass with ```gem install sass```
* (If you have a mac, you may need to update Ruby)
* Install bourbon and neat with ```gem install bourbon``` and ```gem install neat```
* Install mini_magick ```gem install mini_magick``` (requires you to have imagemagick installed)
* (If you have a mac you may need to [install make with either xcode or gcc tools](https://stackoverflow.com/questions/6767481/where-can-i-find-make-program-for-mac-os-x-lion)
* Run the jekyll and browsersynch with ```make -j2 dev``` or ``` bundle exec make -j2 dev```
* Access the website at [localhost:3000](http://localhost:3000/)

All the changes will be automatically reloaded.
