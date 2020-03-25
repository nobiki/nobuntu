## How to restore this configuration file to Gnome Desktop

```
# dconf
cat dconf-settings.ini | dconf load /

# terminator
mkdir -p ~/.config/terminator
cp terminator.config ~/.config/terminator

# libinput
cp libinput-gestures.conf ~/.config/
```

