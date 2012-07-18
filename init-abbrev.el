;; abbrev file settings
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)
(if (file-exists-p abbrev-file-name)
    (quietly-read-abbrev-file))

;; default enable abbrev mode
(setq default-abbrev-mode t)
(add-hook 'text-mode-hook (lambda () (abbrev-mode 1)))
(dolist (hook '(erc-mode-hook
                emacs-lisp-mode-hook
                text-mode-hook))
  (add-hook hook (lambda () (abbrev-mode 1))))
(provide 'init-abbrev)
