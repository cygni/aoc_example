# Node with yarn

This project adds the code to an image and runs yarn install.

## How to build Docker image
```bash
docker build -t aoc_javascript . 
```

## How to run Docker image
The environment variable "part" specifies which part of the solution to run. Please adjust your code accordingly (see example in index.js).
```bash
docker run -e part=part1 aoc_javascript
```

## Development

To run without Docker, just do

```bash
node index.js
```

To run the unit tests (found in the ``test`` directory), run 
```bash
yarn install
yarn test
```
