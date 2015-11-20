# gitlab-ci-runner-docker-example

> This was written in response to some issues I had with how GitLab CI
> handles builds.
>
> Issues references:
> https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/issues/289
> https://gitlab.com/gitlab-org/gitlab-ce/issues/3506

This is of course just an example. Your builds will happen in
`/builds-persistent/$NAMESPACE--$PROJECT--$BRANCH`, as opposed to
`/builds/$PROJECT`. This means no collision between projects / forks /
branches and thus you are free from collisions.

It also exports new environment variables: `CI_PROJECT_NAME` and
`CI_PROJECT_NAMESPACE`.
