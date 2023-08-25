// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Application } from "@hotwired/stimulus"
import 'src/stylesheets/application'
// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
const images = require.context('../images', true)

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application


eagerLoadControllersFrom("controllers", application)
export { application }

