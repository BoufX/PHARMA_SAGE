# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@2.15.0/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
    pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
    pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
    pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
    pin_all_from "app/javascript/controllers", under: "controllers"