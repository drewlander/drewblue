rpm-ostree install intel-media-driver
rpm-ostree override remove mesa-va-drivers --install mesa-va-drivers-freeworld
rpm-ostree override remove mesa-vdpau-drivers --install mesa-vdpau-drivers-freeworld

rpm-ostree install gstreamer1-plugin-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-vaapi

rpm-ostree override remove libavcodec-free libavfilter-free libavformat-free libavutil-free libpostproc-free libswresample-free libswscale-free --install ffmpeg
