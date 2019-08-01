# my-minina

```shell
docker run --rm -e "OWN=$(id -u):$(id -g)" \
  -v /path/to/evernote_md_files:/from -v /path/to/output_site:/to daocloud.io/shutdown/my-minima:latest
```
