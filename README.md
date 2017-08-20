# eta-aws-lambda example

This project is a sample of how to build an [Eta](http://eta-lang.org) application that can be run on AWS Lambda.

# Getting Etlas

In order to build this project you will need to get etlas installed by [following the instructions here](http://eta-lang.org/docs/html/getting-started.html#method-1-binary-installation).

Once you have etlas installed run the following to initialize the configuration and package repositories.

```bash
$ etlas update
```

# Building

In order to build the project so that it can be run as a Lambda you will need to enable "uberjar" mode for etlas.  This will ensure that all required dependencies for the application are linked into the jar file.

```bash
etlas clean
etlas configure --enable-uberjar-mode
```

Then in order to build the jar run:

```bash
$ etlas build
```

# Create a Lambda Function

Upload the resulting jar file that is placed in `./dist/build/eta-aws-lambda/eta-aws-lambda.jar` as a lambda, and for the handler function reference use `com.example.LambdaTest::handler`.

That's all!