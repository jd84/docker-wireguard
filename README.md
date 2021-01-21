# docker-wireguard

A WireGuard in client mode run in docker.

# Build

```bash
docker build . -t wireguard
```

# Run

```bash
docker run -v /path/to/wg0.conf:/etc/wireguard/wg0.conf wireguard
```