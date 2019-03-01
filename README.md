# Supported tags and respective `Dockerfile` links
* [latest (Dockerfile)](https://github.com/awhughes/laravel/blob/master/Dockerfile)

# Quick reference
* **Where to file issues:**    
<https://github.com/awhughes/laravel/issues>

* **Supported architectures:**    
amd64

# What is Laravel?
Laravel is a PHP framework for web artisans.

<https://en.wikipedia.org/wiki/Laravel>

![logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/220px-Laravel.svg.png)

# How to use this image

1. create a helper script and add it to your PATH
```bash
$ cat <<EOF > laravel
#!/usr/bin/env bash
docker container run --rm -t -v "\$(pwd):/code" awhughes/laravel laravel \$@
EOF
$ chmod +x laravel
```

2. create a new laravel project
```bash
$ laravel new YOUR_PROJECT
```
