# Docker node api
Demo nodejs application development with docker. This repository is the source code for my blog post [Developer hiện đại phần 2: Chạy ứng dụng trên... localhost](https://kipalog.com/posts/Developer-hien-dai-phan-2--Chay-ung-dung-tren----localhost)

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

**Start docker compose**

```bash
$ docker-compose up
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

After changing your code, please stop your app with `<Ctrl> + <C>` and start over with `docker-compose up`. This behavior will be improved in my next blog.