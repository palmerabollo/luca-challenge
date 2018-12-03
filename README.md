# luca-challenge

LUCA challenge for responsible use of AI

## how to run it

We provide a docker image for convenience.

```bash
git clone git@github.com:palmerabollo/luca-challenge.git
docker build -t luca .
docker run --rm -p 8888:8888 -v $(pwd):/notebook luca
```

It will show you a token.
Open http://localhost:8888, enter the token, and play with the notebook.
