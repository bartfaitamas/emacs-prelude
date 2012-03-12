(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

;; local sources
(setq el-get-sources
      '(
        (:name magithub
               :build ("makeinfo --no-warn --force magithub.texi")
               :info "." )
        (:name geben
               :description "A remote debugging environment for Emacs."
               :type elpa)
        (:name php-mode
               :website "https://github.com/ejmr/php-mode"
               :description "Major mode for editing PHP code"
               :type github
               :pkgname "ejmr/php-mode")))

(setq my-packages
      (append
       '(el-get magithub)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
