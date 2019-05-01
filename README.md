[![Build][badge_build]][link_build]
[![Size][badge_image_size]][link_build]
[![Layers][badge_image_layers]][link_build]
[![Stars][badge_pulls]][link_pulls]

# synology-tor-client-minimal

Tor client (Socks proxy ) version 0.3.3.7 - 21MB image - Tor client image qualified for Docker on Synology NAS. This Docker image launch a Tor client with a Socks proxy on port 9150 (SocksPort 0.0.0.0:9150). The proxy is opened for hosts on the local network with 172.17.0.X IP (SocksPolicy accept 172.17.0.0/16).

https://hub.docker.com/r/4sag/synology-tor-client-minimal/

### Versions

OS : Alpine Linux 3.9 - [http://alpinelinux.org](http://alpinelinux.org) - Alpine Linux is a security-oriented, lightweight Linux distribution based on musl libc and busybox.

Tor : version 0.3.3.7 

### Install

1. In the Synology NAS admin interface, launch Docker package
2. In the registry tab, search for the image (search for "tor client") and double click to download
3. When the download is finished, in the image tab, select the tor-client image and launch to create the container.
4. Choose a container name and add port settings : local port (9150) and container port (9150)
5. Click "Next" and adjust ressource limitation if you want. Click "Next" then click "Apply"
6. Launch the container.
7. To use, configure your browser/client to use a SOCKS server with the IP of the NAS and server port: 9150. (Use TorBrowser and change connection settings in preferences panel)
8. Your Tor client is running.

[badge_build]:https://img.shields.io/docker/build/4sag/synology-tor-client-minimal.svg?style=flat-square&maxAge=30
[badge_image_size]:https://img.shields.io/microbadger/image-size/4sag/synology-tor-client-minimal.svg?style=flat-square&maxAge=30
[badge_image_layers]:https://img.shields.io/microbadger/layers/4sag/synology-tor-client-minimal.svg?style=flat-square&maxAge=30
[badge_pulls]:https://img.shields.io/docker/pulls/4sag/synology-tor-client-minimal.svg?style=flat-square&maxAge=30
[link_build]:https://hub.docker.com/r/4sag/synology-tor-client-minimal/builds/
[link_pulls]:https://hub.docker.com/r/4sag/synology-tor-client-minimal/
