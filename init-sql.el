(require 'sql-completion)
(setq sql-interactive-mode-hook
      (lambda ()
        (define-key sql-interactive-mode-map "TAB" comint-dynamic-complete)
        (sql-mysql-completion-init)))

;; save database schema
(require 'desktop)
(add-to-list 'desktop-globals-to-save 'sql-mysql-schema)

;; frequently used pools
(setq sql-connection-alist
      '(
	(mybook66
	 (sql-product 'mysql)
	 (sql-server "10.3.254.97")
	 (sql-user "bookAdmin")
	 (sql-password "bookAdmin")
	 (sql-database "mybook66")
	 (sql-port 3307))
	(zongheng-t
	 (sql-product 'mysql)
	 (sql-server "10.3.254.97")
	 (sql-user "bookAdmin")
	 (sql-password "bookAdmin")
	 (sql-database "zongheng_t")
	 (sql-port 3307))))

(defun sql-connect-preset (name)
  "Connect to a predefined SQL connection listed in `sql-connection-alist'"
  (eval `(let ,(cdr (assoc name sql-connection-alist))
	   (flet ((sql-get-login (&reset what)))
	     (sql-product-interactive sql-product)))))

(defun sql-pool-connect ()
  (interactive)
  (sql-connect-preset (intern (read-string "Enter connection name: "))))

(global-set-key (kbd "C-c C-j") 'sql-pool-connect)

(provide 'init-sql)
