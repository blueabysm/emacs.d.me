(require 'package)

;;-------------------------------------------------------------
;; On-demand installation of packages
;;-------------------------------------------------------------
(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given package."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

;;-------------------------------------------------------------
;; Set up repositories
;;-------------------------------------------------------------
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("mepla" . "http://melpa.milkbox.net/packages/"))

;;-------------------------------------------------------------
;; Install packages
;;-------------------------------------------------------------
(package-initialize)

(require-package 'ac-slime)
(require-package 'anything)
(require-package 'all)
(require-package 'auto-complete)
(require-package 'auto-indent-mode)
(require-package 'browse-kill-ring)
(require-package 'color-theme)
(require-package 'crosshairs)
(require-package 'css-mode)
(require-package 'csv-mode)
(require-package 'ctags)
(require-package 'ctags-update)
(require-package 'doc-mode)
(require-package 'dpaste)
(require-package 'ecb)
(require-package 'egg)
(require-package 'eldoc-eval)
(require-package 'elisp-slime-nav)
(require-package 'flymake)
(require-package 'flymake-php)
(require-package 'flymake-jslint)
(require-package 'flymake-shell)
(require-package 'furl)
(require-package 'highlight-80+)
(require-package 'html-script-src)
(require-package 'htmlize)
(require-package 'ido-better-flex)
(require-package 'json)
(require-package 'js3-mode)
(require-package 'nginx-mode)
(require-package 'paredit)
(require-package 'php-mode)
(require-package 'rainbow-mode)
(require-package 'rainbow-delimiters)
(require-package 'redo+)
(require-package 'slime)
(require-package 'smex)
(require-package 'w3)
(require-package 'wgrep)

(provide 'init-elpa)
