# Tage's keyboard layout

This repo contains my specifications for my own keyboard layout based on the [Cole Mac-DH][1] layout with some additional swedish and esperanto characters added to the Iso dead key.

## Building

The keyboard layout can be built with the program [klfc][2].
I recommend installing it with [Nix][3].
Once you have Nix installed just clone the repo and install it:

```
$ git clone https://github.com/39aldo39/klfc
$ cd klfc
$ nix-env -i -f .
```

### Installing to Windows

Installing to Windows is a bit complicated since Windows is so bad. But if you really want, here's a step-by-step guide:

1. Install [Microsoft Keyboard Layout Creator (MSKLC)][4]. Because Microsoft don't want their users to be creative, you might need to install .net3.5 for the MSKLC installation to succeed.
2. Run `./make_klc` from the root of this repo.
3. Open `build/klc/cp_encoded.klc` with MSKLC.
4. If you have already installed a version of this layout on your system you must goto `Project -> Properties` and change the name and description to something different in order to avoid a name conflict.
5. Click on `Project -> Build...` and don't care about the warnings, they just try to scare you.
6. Hopefully the build succeeded without any hard errors and you were able to open the directory with the setup files.
7. Run `setup.exe`.
8. Open the Settings app, search on language and open "Language settings", select "English United States" (or what ever prefered language you have), click on more options and then click on "Language Options".
9. Tab to the keyboards list, select the old keyboard layout and click "Keyboard options" after which you remove the old layout so only the new layout remains in the keyboard list. (Warning: Sometimes Microsoft tries to give you a last nightmare by naming the keyboard layout you've just created "Unavaillable keyboard layout". You should take it personally, but don't be afraid, you're close to victory.)
10. Make sure the only keyboard layout listed is the keyboard layout you've just created.
11. Now you should be able to press Alt+Shift a few times to select the new keyboard layout.
12. If it doesn't work, either resign or drop Windows completely.

[1]: https://colemakmods.github.io/mod-dh/
[2]: https://github.com/39aldo39/klfc
[3]: https://nixos.wiki/wiki/Nix_package_manager
[4]: https://www.microsoft.com/en-us/download/details.aspx?id=102134
