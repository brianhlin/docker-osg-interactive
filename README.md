# Interactive OSG Docker Images

Simple docker image with EPEL and OSG repositories.

## Example Usage

The `osg-pki-tools` tests require a certificate-key pair for its integration tests. If you want to test in a clean environment, you can volume mount your credentials into the container:

```
# docker create -itv ~/.globus:/tmp/globus osg-interactive
# docker start -ai <CONTAINER ID>
```

