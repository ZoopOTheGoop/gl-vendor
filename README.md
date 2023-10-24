gl_vendor
=========

Gives the name of the vendor of the currently active display driver for GLX context purposes. This allows getting the vendor info without having to install all of `mesa-utils` just to grep `glxinfo` from a snap.

## Build Instructions

Just use `make` or `gcc gl_vendor -lGL -lGLX -lX11 -o gl_vendor`. Make sure `libxcb1-dev` and `libglx-dev` are installed for building.

You can also install into `/usr/local/bin` with `make install` (requires root), or give your own `INSTALL_TARGET` by giving a directory with no trailing slash.