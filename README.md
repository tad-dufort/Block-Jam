# Block Jam Info

## Cloning from github

In either [GitHub Desktop](https://central.github.com/deployments/desktop/desktop/latest/win32) or [GitKraken](https://www.gitkraken.com/download/windows64) log in with your Github and press clone on the homepage, type ```https://github.com/lavadaragon15396/Block-Jam``` in the repo field and clone to anywhere on your PC.
once cloned open the folder in any code editor (VSC recommended), select your branch (Tad, Cass or main) and start editing. once done you can commit and push the files and they will be uplaoded!
## Editing the game

Open the source folder in whatever IDE you're using and you can just edit it like normal

I also recommend using visual studio code (as it has github integration) with these addons:

- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- [Better Comments](`https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Markdown All in one](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
- [Github](https://marketplace.visualstudio.com/items?itemName=KnisterPeter.vscode-github)

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
Always build it in -w mode (```pyinstaller -w (path to python file)```) and for the icon do ```pyinst`alller -w -i (path to icon) (path to python file)```

These are both options in auto-py-to-exe

If you get a permission error run the command in somewhere other than the working directory of the ```source``` folder

Once build copy ```source\resources``` into the build folder and rename the build folder to ```Block Jam```

![settings](https://i.imgur.com/cEdFsYJ.png)

## Building the installer

First, install [Batch to exe converter](https://bat-to-exe-converter.sooftware.com/windows) and open it
Next press open and select the installer.bat file, set icon to
- [x] Icon ```(filepath)\source\resources\icon.ico```

set ```Working Directory:``` and ```Extract to:``` to ```Current Directory```, ```Delete on Exit``` to ```Yes``` and finally set ```UAC``` to
- [x] Request administrator privilages
- [ ] Request user privilages

Finally go to the ```Embed``` section and drag the ```Block Jam``` build folder to the embed section and press convert!