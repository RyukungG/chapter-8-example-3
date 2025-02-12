#
# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "flixtubepakorn.azurecr.io"
: "1"

docker build -t $CONTAINER_REGISTRY/video-streaming:$VERSION --file ./Dockerfile-prod .
