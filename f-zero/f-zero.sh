docker buildx create --name captain-falcon --use
docker buildx build --platform linux/amd64,linux/arm64 -t blue-falcon .
