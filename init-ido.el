;; enable ido and use ido-better-flex
(ido-mode t)
(ido-everywhere t)
(ido-better-flex/enable)
(setq ido-use-virtual-buffers t)
(setq ido-default-buffer-method 'selected-window)

;; ido completion in M-x, maybe slow
(smex-initialize)
(global-set-key "\M-x" 'smex)

(provide 'init-ido)
