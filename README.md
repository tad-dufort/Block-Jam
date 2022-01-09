# Block Jam Info

## Editing the game

open the source folder in whatever IDE you're using and you can just edit it like normal

## Building the game

First, install these modules :

```bash
pip install pyinstaller
```

```bash
pip install auto-py-to-exe
```

Then in advanced system settings, got to environment variables, under user open 'Path' and add the Python AppData script folder to it

Now You're ready to build

I recommend using auto-py-to-exe but if you prefer you can just use pyinstaller
Always build it in -w mode (```pyinstaller -w (path to python file)```) and for the icon do ```pyinstalller -w -i (path to icon) (path to python file)```

These are both options in auto-py-to-exe

![settings](https://i.imgur.com/cEdFsYJ.png)

## The installer

the installer just needs a folder called ```Block Jam``` in the same directory as it to install Block jam and to have it as a packaged exe just open ```installer.bat``` with ```convert.exe``` and drag the ```Block Jam``` folder  to the embed location, set working directory and extract directory to current directory and set to delete files once closed

You can set an icon on the settings page too.
