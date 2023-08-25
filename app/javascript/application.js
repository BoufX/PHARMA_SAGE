// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

// add these 2 lines
import 'src/stylesheets/application'
const images = require.context('../images', true)
