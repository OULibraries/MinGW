#DEPRECATED

# MinGW Setup
Some convenience config for our Windows users who want to work with MinGW and Git Bash. 


## download and install mingw (run as administrator)
<http://sourceforge.net/projects/mingw/files/latest/download?source=files>

1. Install for all users
2. Once downloaded, in the MinGW Installation Manager window, select mingw-developer-toolkit
3. Under Installation tab, select Apply changes

You may also want to install additional Unix tools, such as the nano text editor. 


## Download mintty for msys
<https://code.google.com/p/mintty/downloads/list>

example: mintty-1.1.3-msys.zip

and extract to mingw:
    C:\MinGW\msys\1.0\bin\

## Make a shortcut
Create a shortcut called Terminal (or whatever you like) using the following settings:
```
Target:   C:\MinGW\msys\1.0\bin\mintty.exe /bin/env CHERE_INVOKING=1 /bin/bash -l
```

If you'd like the shortcut to appear in your Start Menu, you can open the following path in Windows Explorer and create it there. 
```
%APPDATA%\Microsoft\Windows\Start Menu\Programs
```

Pinning the shortcut to the Windows Start Bar doesn't currently work. 


## Download Git SCM
<https://msysgit.github.io/>


## Install Git
1. Uncheck all components except Use a trutype font
2. Choose to Use Git from git bash only
3. If the installer asks you to choose an SSH executable, use OpenSSH
4. checkout as-is style, commit unix style
 
Previous versions of the instructions recommended "checkout windows, commit unix" but that is a less good option. If you need to change this setting, you can just re-run the Git installer. 

## Get the 'make work good' sauce
Open git bash and run the following commands:
```
cd /C/MinGW
git init
git remote add origin https://github.com/OULibraries/MinGW-Setup.git
git fetch
git checkout --track origin/master
```
Close git bash.


Open terminal. It will do some configuration and ask you to close out.

Open terminal again, and you should have a nice shell that fires up an ssh agent
and has your windows user profile mounted to /home/username


## Your`.ssh` folder 

When you get to this point, you probably won't have a `/home/username/.ssh` folder, so you'll need to create taht. 

## Your ssh keys

Use `ssh-keygen` to generate a public/private keypair and email Jason your public key. 

## Your `.ssh/config` file

You'll also need an `.ssh/config` file that has the right set up for the broker boxes that you'll be using. Ask Jason or Logan for a copy. 

