FROM ubuntu:14.04

RUN adduser --disabled-password --disabled-login --gecos 'GitLab' gitlab-runner
ENV DOCKER_VERSION=1.9.0
RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION -o /usr/local/bin/docker && chmod +x /usr/local/bin/docker

# https://github.com/gitlabhq/gitlab-ci-runner/issues/56#issuecomment-59450728
COPY ./data/git /usr/local/bin/git

# Install any software you'd like, you're even free to change the base image.
# The only important bit is the entrypoint.

COPY ./data/runner-entrypoint /runner-entrypoint
ENTRYPOINT ["/runner-entrypoint"]
USER gitlab-runner
CMD ["true"]
