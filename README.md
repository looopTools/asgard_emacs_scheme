Asgard colour scheme for Emacs


    (add-to-list 'load-path "~/.emacs.d/modes")
    (load "asgard-mode")
    (add-to-list 'auto-mode-alist '("\\.yew\\'" . asgard-mode))
