# docker-redmon

redis web client [redmon](https://github.com/steelThread/redmon) Dockerfile.

## Usage

pull
```bash
$ docker pull sqrt3/redmon
```

run default redis url "redis://127.0.0.1:6379"
```bash
$ docker run --name redmon -d -t -p 4567:4567 redmon
```

other redis url
```bash
$ docker run --name redmon -d -t -p 4567:4567 redmon -r redis://redis-host:6379
```
