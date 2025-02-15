# GPIOShortcuts

A Raspberry Pi service to permanently map GPIO button presses to keyboard shortcuts.

Works and tested on Raspbian GNU/Linux 10 (buster).

## Installation

0. Install required packages instead download and compile

```
    sudo apt-get install python-pil
    sudo apt-get install python-xlib
    sudo apt-get install python-evdev
```

1. Clone repo and enter directory.

    `git clone https://github.com/TeaM-TL/GPIOShortcuts/`

    `cd GPIOShortcuts`

2. Edit config file to configure your shortcuts. Buttons should be connected to GND on one side and directly to the GPIO pin on the other.

    Predefines shortcuts are prepared for OpenCPN on my [OpenPlotter](https://openmarine.net/openplotter).

    `vim config.txt`

3. Make installation script executable and install.

    `chmod +x install.sh`

    `./install.sh`

4. Make sure service is up and running.

    `sudo systemctl status GPIOShortcuts`

5. Done!

## Updating configuration
To update the configuration, just change the cloned `config.txt` and re-run `config.sh` .

## Supported keys
`rightclick` and `leftclick` are supported in `sequence` keybinds only (as defined in `config.txt`). 
```
['\t', '\n', '\r', ' ', '!', '"', '#', '$', '%', '&', "'", '(',
')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7',
'8', '9', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_', '`',
'a', 'b', 'c', 'd', 'e','f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|', '}', '~',
'accept', 'add', 'alt', 'altleft', 'altright', 'apps', 'backspace',
'browserback', 'browserfavorites', 'browserforward', 'browserhome',
'browserrefresh', 'browsersearch', 'browserstop', 'capslock', 'clear',
'convert', 'ctrl', 'ctrlleft', 'ctrlright', 'decimal', 'del', 'delete',
'divide', 'down', 'end', 'enter', 'esc', 'escape', 'execute', 'f1', 'f10',
'f11', 'f12', 'f13', 'f14', 'f15', 'f16', 'f17', 'f18', 'f19', 'f2', 'f20',
'f21', 'f22', 'f23', 'f24', 'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9',
'final', 'fn', 'hanguel', 'hangul', 'hanja', 'help', 'home', 'insert', 'junja',
'kana', 'kanji', 'launchapp1', 'launchapp2', 'launchmail',
'launchmediaselect', 'left', 'modechange', 'multiply', 'nexttrack',
'nonconvert', 'num0', 'num1', 'num2', 'num3', 'num4', 'num5', 'num6',
'num7', 'num8', 'num9', 'numlock', 'pagedown', 'pageup', 'pause', 'pgdn',
'pgup', 'playpause', 'prevtrack', 'print', 'printscreen', 'prntscrn',
'prtsc', 'prtscr', 'return', 'right', 'scrolllock', 'select', 'separator',
'shift', 'shiftleft', 'shiftright', 'sleep', 'space', 'stop', 'subtract', 'tab',
'up', 'volumedown', 'volumemute', 'volumeup', 'win', 'winleft', 'winright', 'yen',
'command', 'option', 'optionleft', 'optionright'] 
```
List from `pyautogui` docs.

## To Do

- make deb package to easy install
- verify delays after click or press

