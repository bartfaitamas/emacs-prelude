(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig$" . jinja2-mode))

(add-hook 'jinja2-mode-hook
          '(lambda () (run-hooks 'prelude-prog-mode-hook)))

(defun my-php-setup ()
  (setq comment-start "//"
        comment-end "")
  ;;(c-set-offset 'arglist-close 'c-lineup-arglist-operators)
  ;;(c-set-offset 'arglist-cont-nonempty '+)
  ;;(c-set-offset 'arglist-intro '+)
  )
(add-hook 'php-mode-hook 'my-php-setup)
