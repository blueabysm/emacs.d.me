(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil))

;; auto indent = 4
(add-hook 'lisp-mode-hook '(lambda ()
			     (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'c-mode-common-hook '(lambda ()
				 (local-set-key (kbd "RET") 'newline-and-indent)))
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq ruby-indent-level 4)
(setq-default tab-width 4)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "blue"))))
 '(font-lock-constant-face ((t (:foreground "brightred"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "blue"))))
 '(font-lock-function-name-face ((t (:foreground "brightblue"))))
 '(font-lock-keyword-face ((t (:foreground "brightyellow"))))
 '(font-lock-string-face ((t (:foreground "brightgreen")))))
