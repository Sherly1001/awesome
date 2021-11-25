# Necessary settings for better use
This is the note to my forgetful a$$ (not me, it's my wife). Feel free to skip.  
*stealing from [here](https://github.com/yurukute/dotfiles#readme)*

## Awesomewm
### Fonts
- [consolas-font](https://aur.archlinux.org/packages/consolas-font)
- [ttf-joypixels](https://www.archlinux.org/packages/community/any/ttf-joypixels)
- [ttf-font-awesome](https://www.archlinux.org/packages/community/any/ttf-font-awesome/)
- [noto-fonts](https://www.archlinux.org/packages/extra/any/noto-fonts)

### Screen brightness
Install [light](https://archlinux.org/packages/community/x86_64/light/) 

Change permission
```
sudo chmod +s /usr/bin/light
```

### Volume
Install
- [alsa-utils](https://archlinux.org/packages/extra/x86_64/alsa-utils/)
- [alsa-plugins](https://archlinux.org/packages/extra/x86_64/alsa-plugins/)
- [pulseaudio-alsa](https://archlinux.org/packages/extra/x86_64/pulseaudio-alsa/)
- [pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)

Start the PulseAudio daemon
```
pulseaudio --start
```
*Optional* Install [sox](https://archlinux.org/packages/community/x86_64/sox/) to play sound when adjusting volume

## Bluetooth headset
Insttall
- [pulseaudio-bluetooth](https://archlinux.org/packages/extra/x86_64/pulseaudio-bluetooth/)
- [bluez](https://archlinux.org/packages/extra/x86_64/bluez/)
- [bluez-utils](https://archlinux.org/packages/extra/x86_64/bluez-utils/)

Make sure bluetooth is running and automatically starts after booting:
```
systemctl enable bluetooth
systemctl start bluetooth
```
In `/etc/bluetooth/main.conf` file, find `[Policy]` section and add/uncomment:
```
AutoEnable=true
```

## Lightdm
### Themes
Install [lightdm-webkit2-greeter](https://archlinux.org/packages/community/x86_64/lightdm-webkit2-greeter/)

Add the following line to `/etc/lightdm/lightdm.conf` at `[Seat:*]` session
```
greeter-session=lightdm-webkit2-greeter
```

### Dual monitor
*To prevent mouse and login screen from displaying on separate screens*

Install [xorg-xrandr](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)

Add the following line to `/etc/lightdm/lightdm.conf`
```
display-setup-script=/path/to/.screenlayout/Noob.sh
```
*Noob.sh from my wife's repo*

### Enable numlock
Install [numlockx](https://archlinux.org/packages/community/x86_64/numlockx/)

Add the following line to `/etc/lightdm/lightdm.conf`
```
greeter-setup-script=/usr/bin/numlockx on
```
## Picom
Install [picom-jonaburg-git](https://aur.archlinux.org/packages/picom-jonaburg-git/) from AUR
