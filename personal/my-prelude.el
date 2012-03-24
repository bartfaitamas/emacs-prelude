(remove-hook 'text-mode-hook 'turn-on-auto-fill)
(remove-hook 'text-mode-hook 'prelude-turn-on-flyspell)
(remove-hook 'prog-mode-hook 'prelude-turn-on-whitespace)

;; (defun prelude-prog-mode-defaults ()
;;   "Default coding hook, useful with any programming language."
;;   (prelude-local-comment-auto-fill)
;;   (prelude-turn-on-abbrev)
;;   (prelude-add-watchwords)
;;   ;; keep the whitespace decent all the time (in this buffer)
;;   (add-hook 'before-save-hook 'whitespace-cleanup nil t))
(add-hook 'prelude-prog-mode-hook
          (lambda ()
            (prelude-turn-off-whitespace)) t)

(prelude-restore-arrow-keys)
