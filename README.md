# How to develop and deploy any app using Docker

Working with PaaS like Heroku makes it very simple to deploy any application, no matter what's the runtime stack.
But is it also simple to develop it locally? Fantastic architecture of buildpacks which make it so appealing doesn't work very well with development environment, since it's basic philosophy is to build a slug - compiled version of an app, and then run it inside dyno - a heroku container.

But docker made true dev-prod parity possible. Since using docker you can optionally mount host directories to the running container, injecting application source and configuration to the runtime, develop it and then make the "injection" permanent with Dockerfile ADD directive.
