lockscreen
==========

Command line application to lock Mac OS X screen


Compile
-------

Use XCode or the following command from the same lockscreen subdirectory:
```sh
clang -framework Foundation main.m -o lockscreen
```


Setup Automator
---------------

Copy executable to an easy to access directory (ie "~")

Open a new automater document, and choose "Service".

Choose Service recieves "no input" and in "any application"

Drag and drop "Run Shell Script" to the workflow, and choose "/bin/bash" for the Shell.

In the text box put the path to the lockscreen executable file (ie. "~/lockscreen")

Save and name the service.


Setup Keyboard Shortcut
-----------------------

Open System Preferences -> Keyboard -> Shortcuts

Under Services -> General select your new service and assign a keyboard shortcut to it.

*** Application shortcuts will override these shortcuts, so choose one that is unlikely to be used. ***
