# laravel
A [Laravel application installer](https://packagist.org/packages/laravel/installer) container.

## Build It
1. from the project directory execute a docker build (or use the [awhughes/laravel](https://hub.docker.com/r/awhughes/laravel) image)
```bash
bash-3.2$ docker image build -t YOUR_TAG .
```

## Use It
1. create a helper script and add it to your PATH
```bash
bash-3.2$ cat <<EOF > laravel
#!/usr/bin/env sh
docker container run --rm -t -v "$(pwd):/code" YOUR_TAG laravel $@
EOF
bash-3.2$ chmod +x laravel
```
2. confirm it's working
```bash
bash-3.2$ laravel
Laravel Installer 2.0.1

Usage:
  command [options] [arguments]

Options:
  -h, --help            Display this help message
  -q, --quiet           Do not output any message
  -V, --version         Display this application version
      --ansi            Force ANSI output
      --no-ansi         Disable ANSI output
  -n, --no-interaction  Do not ask any interactive question
  -v|vv|vvv, --verbose  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Available commands:
  help  Displays help for a command
  list  Lists commands
  new   Create a new Laravel application.
```
3. create a new laravel project
```bash
bash-3.2$ laravel new YOUR_PROJECT
```
