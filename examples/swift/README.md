# Swift

Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community.

## How to run tests
Use the integrated testrunner in Xcode or run `swift test`

## How to build and run
Run the command `swift build -c release` to build a release version of the application.
Then type `./.build/release/AoC` to run the application.

## Docker
The example DockerFile contains instructions to build and run the application in a Docker container. 
Use `docker build -t day01` to build the image of for example the first day 
Then run `docker run day01` to run the image of that the day

## Creating a Swift folder structure for a new AoC day
Use the command `swift package init --type executable --name AoC` to create the package structure.

