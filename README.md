![Ephect](app/Assets/img/salamandra.png)

# Create-App

This is a quick start to help you create a working Ephect project.

This repository is not intended to be cloned. Instead, follow the instructions below.

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

If no problems appear in the console, you can generate your application outside the browser.

However, you first need to launch the embedded web server.

If you're under Windows, you need to type this:

    php -S localhost:8000 -t src/public

otherwise, MacOS and Linux accept this syntax:

    php egg serve

Open another terminal, move to your project directory and type:

    php egg build

If you installed the QuickStart application as said previously, you should see something like this:

    npm run dev

    > logo@1.0.0 dev
    > sh scripts/dev.sh all

    Building frontend app...
    asset app.min.js 2.31 KiB [emitted] (name: main)
    runtime modules 274 bytes 1 module
    ./app/JavaScripts/index.js 212 bytes [built] [code generated]
    webpack 5.89.0 compiled successfully in 161 ms

    Publishing assets...
    app/Assets/css -> public/css
    app/Assets/css/app.css -> public/css/app.css
    app/Assets/css/index.css -> public/css/index.css
    app/Assets/css/setup.css -> public/css/setup.css
    app/Assets/img -> public/img
    app/Assets/img/css -> public/img/css
    app/Assets/img/css/app.css -> public/img/css/app.css
    app/Assets/img/css/index.css -> public/img/css/index.css
    app/Assets/img/css/setup.css -> public/img/css/setup.css
    app/Assets/img/salamandra.png -> public/img/salamandra.png
    node_modules/human-writes/dist/web/human-writes.min.js -> public/modules/human-writes.min.js
    Compiling App ... 016ms
    Compiling Home, querying http://localhost:8000/ ... 060ms

It's a simple page with 2 children components; the first passes values to the second with useState hook.
- http://localhost:8000/

You will find the generated application in the directory *cache*.

## Nota bene

While this sample works well enough in the PHP embedded server, consider setting up a dedicated web server for your project.

Find more information in the Documentation repository https://github.com/ephect-io/documentation.

