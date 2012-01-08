#Callback OSX

Callback mac aims to provide HTML/JS/CSS developers an xCode project for developing Native OSX Apps that run in UIWebView and take advantage of WebKit technologies. 
 
##Pre-requisites

Make sure you have installed the latest Mac OSX Core Library. Download at [http://developer.apple.com/](http://developer.apple.com/)

##API

callback.app.terminate()
callback.app.activate()
callback.app.hide()
callback.app.unhide()
callback.app.beep()

callback.path.application
callback.path.resource

callback.dock.badge

callback.sound.play(name)
callback.sound.playSystem(name)

callback.growl.notify({
  title: '',
  content: ''
});