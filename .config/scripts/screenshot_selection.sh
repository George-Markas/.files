#!/bin/sh -e

# takes screenshot with selection and copies to clipboard

selection=$(hacksaw -f "-i %i -g %g")
shotgun $selection - | xclip -t 'image/png' -selection clipboard
