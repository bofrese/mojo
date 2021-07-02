# A basic Mojo / Perl / Docker Development Environment

A 'blank' Docker image setup for development in Perl / Mojolicious

It includes a few convenience scripts for windows :

- [build.bat](build.bat) - Build the docker image
- [runshell.bat](runshell.bat) - Run the image in interactive mode. The image will exit when the shell exits.
- [run.bat](run.bat) - Run the image in detached mode. Requires change to the Dockerfile, so it starts a deamon, otherwise it will exit instantly 
- [shell.bat](shell.bat) - Attach an interactive shell to the running image

They all work in 'development mode' - They mount the entire /app directory to the source directory, supporting instant updating of the files inside the running docker image.

## Getting started with Mojolicious:

- run `build`
- run `runshell`
- run `mojo generate lite-app` (will generate `myapp.pl`)
- run `morbo myapp.pl`
- See it running at http://localhost:3000/
- Edit myapp.pl and see it update instantly :-)

See https://docs.mojolicious.org/Mojolicious/Guides/Tutorial

To create a full app:

- run `mojo generate app MyAppName` (will generate a `my_app_name` subdirectory with a basic directory structure and files)

See https://docs.mojolicious.org/Mojolicious/Guides/Growing


