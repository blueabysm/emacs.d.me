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
(require 'init-editing-utils)
;; stand alone key bindings
(require 'init-keybindings)
(require 'init-php)
;;(require 'init-jdee)
;;(require 'init-sql)
(require 'init-misc)
(require 'init-look)
(require 'init-abbrev)
(require 'init-utils)
(require 'init-ruby-mode)
(require 'init-rails)
(require 'init-applescript-mode)

(require 'init-lisp)
(require 'init-slime)
(require 'init-common-lisp)

;; customizations
(load custom-file)

;; End of buffer
