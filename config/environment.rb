require 'bundler'
Bundler.require

require_all 'lib'

require_relative '../lib/concerns/findable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
require_relative '../lib/genre.rb'