# Docker node api
Demo nodejs application development with docker. This repository is the source code for my blog post [Từ phát triển tới triển khai phần 1: Backend, NodeJS, API](https://kipalog.com/posts/Tu-phat-trien-toi-trien-khai-phan-1--Backend--NodeJS--API)

## How to use

It's easy, just follow these steps:

**Clone this repository:**
```bash
$ git clone https://github.com/minhpq331/docker-node-api.git
$ cd docker-node-api
```

**Make environment file, change your compose project name and put your `uid` and `gid` in**
```bash
$ cp .env.example .env
$ echo $(id -u):$(id -g)
1000:1000
# This is your uid and gid, copy all this line and paste it in .env file
```

**Install dependencies**
```bash
$ script/compose_run.sh yarn
```

**Start developing with**

```bash
$ script/compose_start.sh dev
```

or run it in production environment:

```bash
$ script/compose_start.sh
```
```

or run it in test environment

```bash
$ script/compose_start.sh test
```

To stop running, press `<Ctrl> + <C>`

## Useful commands

If you need to run any command with `yarn`, `npm`,... try this but remember to change your service name in `script/compose_run.sh` file:
```bash
$ script/compose_run.sh <your command>
```

After changing `Dockerfile`, please run this command:
```bash
$ docker-compose build
```