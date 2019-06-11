#!bin/bash
IMAGE_NAME=$1
echo "$IMAGE_NAME"
docker pull $1
sleep 10
Image_count=$(docker images ls | grep "$IMAGE_NAME" | wc -l)

if [ "$Image_count" -gt 0 ]
then
        echo "Image not available"
else
kubectl run --image="$IMAGE_NAME" $1
sleep 5
echo "Deployment created , creating service..."
kubectl expose deployment "$IMAGE_NAME" --name=hello-world-service
fi