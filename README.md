# Configurations
My windows configurations for uni.
This contains stuff like nvim, powershell profiles, git configuration. I wish to update this with configs for other tools I might use in the future.

## Getting Started
First of all, if you haven't already, make sure you download scoop!
```sh
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```
or
```sh
iwr -useb get.scoop.sh | iex
``` 

Now that scoop is installed, you can see your apps at "USERPROFILE\scoop".

## Installing Git for Windows
To clone this repo, first install Git for Windows!
```sh
winget install -e --id Git.Git
```

## Cloning this repository
With Git for Windows installed, use this command to clone this repo.

Since this is meant to be installed to "USERPROFILE\.config", use copy this command to clone.
```sh
cdx; git clone "https://github.com/balits/.config"; .\.config\main.ps1
```




