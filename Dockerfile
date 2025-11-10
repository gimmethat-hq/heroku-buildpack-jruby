# Force change 1

FROM heroku/heroku:24

# NOTE: was seeing permissions issues with heroku:24 over heroku:22. Fixed by setting root user explictly, as per:
# https://devcenter.heroku.com/articles/heroku-24-stack#changes-to-the-docker-images-published-to-docker-hub
# "The default Linux user for these images is heroku, which does not have root permissions. If you need to modify
# locations outside of /home/heroku or /tmp you will need to switch back to the root user. To do this add USER root to
# your Dockerfile when building images, or pass --user root to any docker run commands."
USER root

# Set the locale
# THANKS https://web.archive.org/web/20230323021946/http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

ADD . /vagrant
WORKDIR /vagrant