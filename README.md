Asgard colour scheme for Emacs
==============================
This repository contains an emacs colour scheme for the programming language Asgard.

Usage
-----
I recommend that you create a folder for languages modes in your `emacs.d` directory and added the `asgard-mode.el` to the folder.

After you have created the folder, append this to your `.emacs` file (I asume you have called the language modes folder, for `modes`)

    (add-to-list 'load-path "~/.emacs.d/modes")
    (load "asgard-mode")
    (add-to-list 'auto-mode-alist '("\\.yew\\'" . asgard-mode))
