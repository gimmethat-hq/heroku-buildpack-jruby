# README
## Commands for local development
```
# Build project after changes (be explicit on platform, to match heroku)
docker build --platform=linux/amd64 -t heroku-buildpack-jruby .

# Run bash in container locally (be explicit on platform, to match heroku)
docker run -it --rm --platform linux/amd64 heroku-buildpack-jruby bash
```