FROM rust:1.31.0

LABEL "com.github.actions.name"="cargo"
LABEL "com.github.actions.description"="Run `cargo` commands"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/onbjerg/actions"
LABEL "homepage"="https://github.com/onbjerg/actions"
LABEL "maintainer"="Oliver Nordbjerg <hi@notbjerg.me>"

RUN rustup component add clippy

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
