;; -*- coding: utf-8 -*-

;; environments
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; custom.el
(setq custom-file "~/.emacs.d/custom.el")

;; packages on elpa.gnu.org
(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-ido)
(require 'init-auto-complete)

;; stand alone key bindings
(require 'init-keybindings)

;; modes
(require 'init-php)
(require 'init-sql)

;; miscs
(require 'init-misc)

;; customizations
(load custom-file)
