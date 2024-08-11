# dprep50

Automated preparation script for CS50 problem sets' distribution code

---

## Description

This Bash script automates the commands (about six) you would need to type to set up the distrubution code provided by CS50 for some of the problem sets. You can also set up a directory to put them in, in case they do not unzip into one already.

## Installation

Make sure you are in the default codespace directory (Terminal shows '$' sign only). Execute `cd` by itself otherwise.

Next execute the following in the terminal:

```Bash
cd .. && cd .. && cd usr/local/bin
```

Then execute:

```Bash
sudo nano dprep50
```

After that copy the content of the `dprep50.sh` file on this repo and paste into the opening nano terminal using **Ctrl+Shift+V**.

Now press **Ctrl+O** to save the script, press **Enter** to save the filename and **Ctrl+X** to close.

Finally execute `cd` by itself again to return to your codespace.

## Usage

```Bash
dprep50 <URL> [DIRECTORY] 
```

- `URL`: Mandatory. Should be the URL following the `wget` command in the distribution code section.
- `DIRECTORY`: Optional. Directory to extract the zip file into. If the specified directory does not exist yet, a new one will be made. If unspecified, unzipped codes will be stored in your codespace directory (e.g. /workspaces/12345678).  

Example:

```Bash
dprep50 https://cdn.cs50.net/2023/fall/psets/5/speller.zip my_directory
```
