# Podman_GoHugo
1. BUILD IMAGE

    podman build --pull-always --tag fedora:4l3chugo -f ./Dockerfile

2. CREATE NEW SITE

   podman run -it --rm --name 4l3chugo -v "$PWD":/src:Z  fedora:4l3chugo new site src

3. RUN SHELL

    podman run -it --rm --name 4l3chugo -p 1313:1313 -v "$PWD"/src:/src:Z  fedora:4l3chugo shell

4. RUN SERVE

    podman run -it --rm --name 4l3chugo -p 1313:1313 -v "$PWD"/src:/src:Z  fedora:4l3chugo serve

5. RUN BUILD

    podman run -it --rm --name 4l3chugo -v "$PWD"/src:/src:Z  fedora:4l3chugo

6. ADD CONTENT

    podman run -it --rm --name 4l3chugo -v "$PWD"/src:/src:Z  fedora:4l3chugo new

7. RUN BASH

    podman exec -it 4l3chugo /bin/bash
