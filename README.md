![Ephect](app/Assets/img/salamandra.png)

# Create-App

This is a quick start to help you create a working Ephect project.

This repository is not intended to be cloned. Instead, follow the instructions below.

## Requirements

Since Ephect is an hybrid environment, you need both PHP and NodeJS installed.

It's highly recommended to use the last versions. 

Ephect is compatible with PHP 8.3 and NodeJS LTS 20.12.0.

## Create a basic Ephect application project

Open a terminal and type:

```bash
composer create-project ephect-io/create-app my-project
```
Move to *my-project* directory.

You will see an **app** directory in which you will find the standard structure of an Ephect application:

```
    app
    ├── Assets
    │   ├── css
    │   │   ├── app.css
    │   │   ├── index.css
    │   ├── img
    │   │   └── salamandra.png
    │   ├── .htaccess
    │   ├── bootstrap.php
    │   ├── favicon.ico
    │   ├── index.php
    │   └── web.config
    ├── Commands
    │   └── Hello.php
    ├── Components
    │   ├── Additionals
    │   │   ├── Footer.phtml
    │   │   ├── Header.phtml
    │   │   ├── HeaderAndFooter.phtml
    │   │   └── Mother.phtml
    │   └── Home
    │       ├── Com.phtml
    │       └── Dummy.phtml
    ├── JavaScripts
    │   └── index.js
    ├── Pages
    │   └── Home.phtml
    ├── App.phtml
    └── Switcher.phtml
```

the **public** directory is not empty but its files are later overwritten by assets files:

```
    public
    ├── bootstrap.php
    ├── favicon.ico
    └── index.php
```

## Build the application

First, install all needed modules.

```bash
npm install
```

To run the application without setting up a web server, you need to serve the application in a separate terminal. 

Open another terminal, move to your project directory and type:

```bash
php use serve
```

Come back to the first terminal and type
```bash
npm run dev
```

 You should see something like this:

```bash
> create-app@0.7.0 dev
> run-script-os

> create-app@0.7.0 dev:darwin:linux
> bash scripts/dev.sh all

Running webpack...
asset app.min.js 2.32 KiB [emitted] (name: main)
runtime modules 274 bytes 1 module
./app/JavaScripts/index.js 212 bytes [built] [code generated]
webpack 5.91.0 compiled successfully in 257 ms

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

Sharing modules...
node_modules/human-writes/dist/web/human-writes.min.js -> public/modules/human-writes.min.js

Building the app...
Compiling App ... 021ms
Compiling Home, querying http://localhost:8000/ ... 017ms
```

It's a simple page with 2 children components; the first passes values to the second with useState hook.
- http://localhost:8000/

You will find the generated application in the directory *cache*.

## Nota bene

While this sample works well enough in the PHP embedded server, consider setting up a dedicated web server for your project.

Find more information in the Documentation repository https://github.com/ephect-io/documentation.

