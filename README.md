# Docker image for Elastalert and Lifen Platform

https://elastalert.readthedocs.io

## Rules

All rules are present in the `rules/files` directory. They are organized by types in their respective folder.

### Model

`model` directory contains some cross config for rules.

## Changing config and rules

You can mount these three volumes when launching your docker container.

* `/config` -> contains a `config.yml`
* `/rules` -> contains all the rules. Everything in the `.yml` extension will be loaded. (required)

Elastalert should be able to dynamically apply changes to config files.

## TODO

- Setup elastalert in production
- Separate this repo: "docker image" and "rules for lifen-platform"
