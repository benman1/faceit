# FaceIt

This repository is to support the Deep Fake recipe in chapter 8 of the book [*Artificial Intelligence with Python*](https://www.amazon.co.uk/gp/product/B08GQ8TN8C). Please see the recipe for instructions on how to build a deep fake using python. 

This repository contains many resources related to the recipe, which should make it much quicker to produce a deep fake such as
* lots of images of the actor to be replaced and the actor to replace with
* a Docker environment with all the libraries installed (start it with `./dockerbuild.sh && ./dockerrun.sh`)

You can run most commands in the book from within the docker container. You need, however, a powerful GPU to run this. It took me about a few days if not a week to get a passable deep fake.
