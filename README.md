# Building & Packaging OpenCV 4.3.0 on NVIDIA Jetson TX2
This project allows you to build and package OpenCV 4.3.0 inside the l4t-base container from NVIDIA.
Afterwards you'll have the package files on the host machine for quick deployment in other containers rather than building it again and again.
Benefit: Fast OpenCV deployment and small container sizes.

CUDA, CUDNN, GStreamer, FFMPEG, Nonfree-stuff, Python-Support, etc. is enabled. (see Build Information)

Most of the build script was taken from [buildOpenCVTX2 GitHub Repository](https://github.com/jetsonhacks/buildOpenCVTX2)

# Requirements
* NVIDIA Jetson TX2
* JetPack 4.3

# How To
0. Run "nvpmodel -m 0" and "jetson_clocks.sh" on host for faster building. (Optional)
1. Clone this repository
2. Run "OpenCV-JetsonBuilder.sh"
3. Find the package files in "opencv-aarch64-deb"
4. Install your package files with apt-get install -f on host or in other containers

Make sure you are running your containers with the nvidia runtime. (Containers will share cuda files with host)

# OpenCV Build Information
