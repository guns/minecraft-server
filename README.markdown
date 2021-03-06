```
   _____   ___ _______ ______________________________   _____ _____________________
  /     \ |   |\      \\_   _____/\_   ___ \______   \ /  _  \\_   _____/__    ___/
 /  \ /  \|   |/   |   \|    __)_ /    \  \/|       _//  /_\  \|    __)   |    |
/    Y    \   /    |    \        \\     \___|    |   \    |    \     \    |    |
\____|__  /___\____|__  /______  / \______  /____|_  /____|__  /___  /    |____|
        \/            \/       \/         \/       \/        \/    \/

Usage: minecraft [options] start|stop|restart|update|repl

Options:
    -g, --gamedir PATH   Path to minecraft directory [DEFAULT: /srv/games/minecraft]
    -j, --jar PATH       Path to server jar
    -w, --world NAME     Name of world to play; creates new world if not found
    -m, --memory SIZE    Memory in MB [DEFAULT: 256]
    -d, --debug          Keep server process in foreground

Environment Variables:
    MINECRAFT_GAMEDIR    Sets the current gamedir; alternative to --gamedir flag
```

# Installation

* Install Java, Ruby, and make

  On Debian / Ubuntu / Elementary OS, run:
```
sudo sh -c "aptitude update; aptitude install java7-runtime-headless ruby make"
```

  On Arch Linux, run:
```
sudo sh -c "pacman -Sy; pacman -Ss jre7-openjdk-headless ruby make"
```

* Run `sudo make install` to install script to `/usr/local/bin` and completion
  file to `/etc/bash_completion.d`.

  This also creates the game directory at `/srv/games/minecraft` with your
  user as the owner unless it already exists.

* Run `minecraft update` to download the current Minecraft server jar to the
  game directory.

# Usage

* Start the server with `minecraft start`, stop it with `minecraft stop`, and
  restart with `minecraft restart`.

  You can create new worlds with the `--world` flag:
```
minecraft restart --world new-world
```

  Use the `--jar` flag to play with mods:
```
minecraft restart --jar jars/mod.jar --world mod-world
```

  If you want to use a different directory for the gamedir, use `--gamedir`:
```
minecraft restart --gamedir /home/me/minecraft
```
  or set `MINECRAFT_GAMEDIR`:
```
export MINECRAFT_GAMEDIR=/home/me/minecraft
minecraft restart
```

* Update the official Minecraft server jar with `minecraft update`.

* Drop into the Minecraft admin console for a running server with `minecraft
  repl`. Hit `Control-C` to exit.

* Have fun! Email me if you have any questions (about anything).

# License

The MIT License (MIT)

Copyright © 2015 Sung Pae <self@sungpae.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
