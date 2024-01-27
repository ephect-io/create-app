![Ephect](app/Assets/img/salamandra.png)

# Create-App

This is a quickstart to help you create a functional Ephect project.

This repository is not meant to be cloned. Instead, follow the instruction below. 

## Create a basic Ephect application project

Open a terminal and type:

```bash
composer create-project ephect-io/create-app my-project
```
## Install the sample application

Move to *my-project* directory and type:

    php egg make:skeleton

You will see a **app** directory in which you will find the standard structure of an Ephect application and a **public** 
directory in which is stored the index.php. 

## Build the application

If no issue is popping up on the console then you can generate your application outside the browser.

However, you first need to launch the embedded web server.

If you're under Windows, you need to type this:

    php -S localhost:8888 -t src/public

otherwise, MacOS and Linux accept this syntax:

    php egg serve

Open another terminal, move to your project directory and type:

    php egg build

If you installed the QuickStart application as said previously, you should see something like this:

    Compiling App ... 059ms
    Compiling Home, querying http://localhost:8000/ ... 193ms

It's a simple page with 2 children components; the first passes values to the second with useState hook.
- http://localhost:8000/

You will find the generated application in the directory *cache*.

## Nota bene

While this sample works well enough in the PHP embedded server, consider setting up a dedicated web server for your project.

Find more information in the Documentation repository https://github.com/ephect-io/documentation.

