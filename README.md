# create-app
Create a basic ephect application project

## Installation

### 1 - Call Composer update:

```bash
composer u
```

### 2 - Setup a sample application

To help you start quickly you can install either an empty project with only one ready-to-use component:

```bash
php egg make:skeleton
```

Otherwise you can learn more about _**ephect**_ features by testing the QuickStart samples:

```bash
php egg make:quickstart
```

### 3 - Compile the application

The pages can be compiled in two different ways: on CLI or on browser first opening.

#### 3.1 - Using the CLI

You must have a ZTS enabled version of PHP

```bash
php egg compile
```

or

```bash
yarn build
```

#### 3.2 - Using the web browser

Open your application in a browser, all the pages will be compiled before the page called is displayed.

This may be heavy so the CLI approach is recommended. 

### 4 - Serve the Application

You can easily test the result of your application by serving it with the server emebedded in PHP.

```bash
php -S localhost:8888 -t public/
```

or

```bash
yarn serve
```

However, it's recommended to setup a real web server like Apache or Nginx.
