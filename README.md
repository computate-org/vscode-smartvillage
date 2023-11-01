# vscode-smartvillage

## Build the container with podman

```bash
cd ~/.local/src/vscode-smartvillage
podman build -t computateorg/vscode-smartvillage:latest .
```

## Test the container locally
```bash
podman run --rm -it computateorg/vscode-smartvillage:latest /bin/bash
```

## Push the container up to quay.io
```bash
podman login quay.io
podman push computateorg/vscode-smartvillage:latest quay.io/computateorg/vscode-smartvillage:latest
```
