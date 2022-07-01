#! /bin/sh

jack_control start
jack_control ds alsa
jack_control dps device hw:UR22mkII,0
jack_control dps rate 44100
jack_control dps nperiods 2
jack_control dps period 256

# I barely know what I'm even doing here, but it works
# and puts stuff through pulse which then puts it into jack, so goal achieved despite being ugly ig
pulseaudio --start
pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source
pacmd set-default-sink jack_out
