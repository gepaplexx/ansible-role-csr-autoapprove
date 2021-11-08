# Ansible Role: csr_autoapprove

![MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/racqspace/ansible-role-csr_autoapprove/Main?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/racqspace/ansible-role-csr_autoapprove?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/racqspace/ansible-role-csr_autoapprove?style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)

Installing csr_autoapprove in Kubernetes.

## Role Variables

Variable Name | Default Value | Description
------------ | ------------- | -------------
csr_autoapprove_cache_valid_time | 3600 | Cache update time for apt module.
csr_autoapprove_namespace | default | Specify the kubernetes namespace to install resources to.

## Role Usage Examples

Example for installing csr_autoapprove in a dedicated namespace `csr_autoapprove`.

```yaml
- hosts: all
  roles:
  - role: racqspace.csr_autoapprove
    vars:
      csr_autoapprove_namespace: csr_autoapprove
```

## License

MIT

## Author Information

This role was created in 2021 by [Clemens Kaserer](https://www.ckaserer.dev/).

Contributions by:

- [@ckaserer](https://github.com/ckaserer)
