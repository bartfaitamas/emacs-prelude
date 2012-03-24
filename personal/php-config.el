(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig$" . jinja2-mode))

(add-hook 'php-mode-hook
          '(lambda ()
             (setq comment-start "//"
                   comment-end "")))
