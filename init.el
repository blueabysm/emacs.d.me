;; -*- coding: utf-8 -*-

;; environments
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; custom.el
(setq custom-file "~/.emacs.d/custom.el")

(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-ido)
(require 'init-auto-complete)
(require 'init-uniquify)
;; stand alone key bindings
(require 'init-keybindings)
(require 'init-php)
;;(require 'init-sql)
(require 'init-misc)
(require 'init-look)

;; customizations
(load custom-file)

;; End of buffer
(global-set-key (kbd "C-/") 'undo)
