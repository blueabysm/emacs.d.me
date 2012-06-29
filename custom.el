(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "blue")))))

;; customize mode line

;; auto indent = 4
(add-hook 'lisp-mode-hook '(lambda ()
			     (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'c-mode-common-hook '(lambda ()
				 (local-set-key (kbd "RET") 'newline-and-indent)))
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq ruby-indent-level 4)
(setq-default tab-width 4)
