# Docker image for Elastalert

https://elastalert.readthedocs.io

## Changing config and rules

You can mount these three volumes when launching your docker container.

* `/config` -> contains a `config.yml`
* `/rules` -> contains all the rules. Everything in the `.yml` extension will be loaded. (required)

Elastalert should be able to dynamically apply changes to config files.
