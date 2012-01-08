#Callback OSX

Callback mac aims to provide HTML/JS/CSS developers an xCode project for developing Native OSX Apps that run in UIWebView and take advantage of WebKit technologies. 
 
##Pre-requisites

Make sure you have installed the latest Mac OSX Core Library. Download at [http://developer.apple.com/](http://developer.apple.com/)

##API


    // Quit application
    callback.app.terminate()

    // Activate application (bring to front)
    callback.app.activate()
    
    // Hide application
    callback.app.hide()
    
    // Un-hide application
    callback.app.unhide()
    
    // System Beep
    callback.app.beep()

    // Path to application
    callback.path.application
    
    // Path to application's resources
    callback.path.resource

    callback.dock.badge

    callback.sound.play(name)
    callback.sound.playSystem(name)

    callback.growl.notify({
      title: '',
      content: ''
    });