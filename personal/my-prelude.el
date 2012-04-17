(remove-hook 'text-mode-hook 'turn-on-auto-fill)
(remove-hook 'text-mode-hook 'prelude-turn-on-flyspell)

(defun my-prelude-prog-mode-defaults ()
  "Default coding hook, useful with any programming language."
  ;;(flyspell-prog-mode)
  (prelude-local-comment-auto-fill)
  (prelude-turn-on-whitespace)
  (prelude-turn-on-abbrev)
  (prelude-add-watchwords)
  ;; keep the whitespace decent all the time (in this buffer)
  (add-hook 'before-save-hook 'whitespace-cleanup nil t))

(setq prelude-prog-mode-hook 'my-prelude-prog-mode-defaults)

(prelude-restore-arrow-keys)
