WHEREAMI=$PWD
mkdir $WHEREAMI/opencv-aarch64-deb
sudo cp /usr/include/cudnn.h $WHEREAMI/
sudo docker run -it --rm --net=host --runtime=nvidia -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -v $WHEREAMI:/hostdata nvcr.io/nvidia/l4t-base:r32.3.1 /bin/bash -C '/hostdata/buildAndPackageOpenCV_4.3.0.sh'
sudo rm $WHEREAMI/cudnn.h
echo "Building and Packaging OpenCV finished"
