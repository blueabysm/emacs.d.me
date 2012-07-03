(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq ac-auto-start t)
(setq ac-dwim t)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(dolist (mode '(php-mode js3-mode sql-mode))
  (add-to-list 'ac-modes mode))
(provide 'init-auto-complete)
