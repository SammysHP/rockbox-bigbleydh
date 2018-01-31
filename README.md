# BigBleydh

Simple Rockbox theme for 176x220 music players (e.g. Sansa Fuze) inspired by the Clip+ theme "[Bleydh](https://github.com/SammysHP/rockbox-bleydh)".

![WPS with cover art](https://raw.githubusercontent.com/SammysHP/rockbox-bigbleydh/screenshots/wps.png) ![Icons in statusbar](https://raw.githubusercontent.com/SammysHP/rockbox-bigbleydh/screenshots/wps_icons.png)

![WPS without cover art](https://raw.githubusercontent.com/SammysHP/rockbox-bigbleydh/screenshots/wps_noart.png) ![SBS](https://raw.githubusercontent.com/SammysHP/rockbox-bigbleydh/screenshots/sbs.png)


### Features

- WPS (While Playing Screen):
    - Artist, album, year and big title
    - Fallback for untagged files
    - Album art if available, otherwise full screen title info
    - Large progress bar with current time, remaining time and track time
    - Current index in playlist and size of the playlist
    - Flashing remaining time at the end of a song
- SBS (Base Skin):
    - Same statusbar as in WPS
    - Artist and title at bottom of the screen while playing
    - Themed menu title, but full UI viewport if no title available
- Statusbar:
    - Volume icon, shown in dB while changing
    - Line-out
    - Hold button
    - Channel configuration (custom, left, right, karaoke)
    - Crossfeed
    - Equalizer
    - Shuffle
    - Repeat (all, single, shuffle, A-B)
    - Playback status (play, pause, rewind, forward)
    - Animated charging indicator with AC status
- No FMS yet


### Makefile

The makefile can be used to simplify some tasks:

```
$ make install DESTDIR=/path/to/player/.rockbox
$ make zip
```

### License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
