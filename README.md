# INTENS INTRODUCTORY TEST APP

## App Description

This is a simple Maven Java application. It returns a simple string "Intens Praksa 2022!" when a GET call is made to [this endpoint](https://bogdan-intens.herokuapp.com/).

## Running the app locally

For these purposes a Dockerfile is to be created. From the root folder run

```
docker image build -t bogdan-intens:v1.0.0 .
```

This will build the docker image needed to run the application. 

The app requires an environment variable to be set, so that can be done:
1. On Linux and Mac: `export PORT=8080`
2. On Windows: `setx PORT "8080"`

Now to run a container with this image:

```
docker run -d -p 8080:8080 bogdan-intens:v1.0.0
```

Where:
    * -d stands for detached, meaning that the container that we are spinning up is not going to take control of our terminal 
    * -p 8080:8080 is mapping the port 8080 of the container to our localhost:8080 so that we can test it on our own machine. 

To test the app, make a GET request to `http://localhost:8080` or just open the address in a browser.

## App deployment

App deployment is done through Github Actions. There are two actions:
1. Test - run whenever there is a PR created against the "master" branch
2. Publish - run whenever a push has been made to the "master" branch

What do they do:
1. Test - builds the code with Maven and runs unit tests
2. Publish - creates an image of the application using Heroku cli and publishes it to the Heroku repo, replacing the previous one and using it to run the app

Note: so as not to have the test phase skipped in case of a direct push to the master branch, I've protected the master branch so it only accepts pushes from branch merges.

## Environments

When it comes to environments, it is rather simple - there are none.

## Contribution

Is anyone really going to contribute to this?
