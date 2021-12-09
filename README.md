# Ansible Role: csr_autoapprove

![MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/gepaplexx/ansible-role-csr-autoapprove/Main?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/gepaplexx/ansible-role-csr-autoapprove?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/gepaplexx/ansible-role-csr-autoapprove?style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)

Automatically approving CSR from new openshift nodes. Also installing oc if not present.

## Role Variables

Variable Name | Default Value | Description
------------ | ------------- | -------------
openshift_mirror_url | https://openshift.infra.gepaplexx.com | Openshift Mirror URL
csr_autoapprove_oc_binary_url | {{ openshift_mirror_url }}/clients/oc/latest/linux/oc.tar.gz | URL to OC archive

## Role Usage Examples

```yaml
- hosts: all
  roles:
  - role: gepaplexx.csr_autoapprove
```

## License

MIT

## Author Information

This role was created in 2021 by [Marcel Haupt](https://ehaupt.de/).

Contributions by:

- [@mahaupt](https://github.com/mahaupt)
- [@ckaserer](https://github.com/ckaserer)
