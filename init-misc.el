;; Weather Report --------------------------------------------------
;; this api key is owned by Lei Wang (blueabysm@gmail.com)
;; (require 'weather)
;; (setq weather-key "b0fb853ab7071518122006")

;; save places -----------------------------------------------------
(setq save-place-file "~/.saveplace")
(setq-default save-place t)
(require 'saveplace)

;; nginx mode ------------------------------------------------------
(add-to-list 'auto-mode-alist '("\\.nginx$" . nginx-mode))
(add-to-list 'auto-mode-alist '("nginx.conf$" . nginx-mode))

;; disable menu bar ------------------------------------------------
;; (menu-bar-mode 0)

(provide 'init-misc)
