#!/bin/bash

export IMAGE_VIEWER=sxiv
export VIDEO_PLAYER=ffplay
export BROWSER=chromium

# img/vid
xdg-mime default $IMAGE_VIEWER.desktop 'image/jpg'
xdg-mime default $IMAGE_VIEWER.desktop 'image/jpeg'
xdg-mime default $IMAGE_VIEWER.desktop 'image/png'
xdg-mime default $IMAGE_VIEWER.desktop 'image/gif'
xdg-mime default $IMAGE_VIEWER.desktop 'image/pjpeg'
xdg-mime default $IMAGE_VIEWER.desktop 'image/tiff'
xdg-mime default $VIDEO_PLAYER.desktop 'image/mp4'

# browser
xdg-mime default $BROWSER.desktop 'x-scheme-handler/http'
xdg-mime default $BROWSER.desktop 'x-scheme-handler/https'
xdg-mime default $BROWSER.desktop 'text/html'
xdg-mime default $BROWSER.desktop 'x-scheme-handler/chrome'
xdg-mime default $BROWSER.desktop 'application/x-extension-htm'
xdg-mime default $BROWSER.desktop 'application/x-extension-html'
xdg-mime default $BROWSER.desktop 'application/x-extension-shtml'
xdg-mime default $BROWSER.desktop 'application/xhtml+xml'
xdg-mime default $BROWSER.desktop 'application/x-extension-xhtml'
xdg-mime default $BROWSER.desktop 'application/x-extension-xht'
xdg-mime default $BROWSER.desktop 'x-scheme-handler/http'
xdg-mime default $BROWSER.desktop 'x-scheme-handler/https'
xdg-mime default $BROWSER.desktop 'text/html'

