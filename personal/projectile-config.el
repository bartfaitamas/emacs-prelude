;; move .projectile to the front of the list to treat a hierarchy like
;; this one project:
;; /root_dir
;;  .projectile
;;  /vendor
;;    /subdir
;;     .git
(setq projectile-project-root-files '(".projectile" ".git" ".hg" ".bzr"))
