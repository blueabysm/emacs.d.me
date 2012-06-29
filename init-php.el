(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.pss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.pjs$" . js3-mode))

(add-hook 'php-mode-hook 'flymake-php-load)

(provide 'init-php)
