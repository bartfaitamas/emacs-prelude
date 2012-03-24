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
        ;; (:name js2-mode
        ;;        :website "https://github.com/mooz/js2-mode"
        ;;        :type github
        ;;        :description "An improved JavaScript editing mode"
        ;;        :pkgname "mooz/js2-mode"
        ;;        :prepare (autoload 'js2-mode "js2-mode" nil t))
        (:name js3-mode
               :website "https://github.com/thomblake/js3-mode"
               :type github
               :description "An improved JavaScript editing mode"
               :pkgname "thomblake/js3-mode"
               :prepare (autoload 'js3-mode "js3-mode" nil t))
        (:name jinja2-mode
               :website "https://github.com/paradoxxxzero/jinja2-mode"
               :type github
               :description "Jinja2 mode for emacs"
               :pkgname "paradoxxxzero/jinja2-mode")
        (:name php-mode
               :website "https://github.com/ejmr/php-mode"
               :description "Major mode for editing PHP code"
               :type github
               :pkgname "ejmr/php-mode")))

(setq my-packages
      (append
       '(el-get magithub js3-mode jinja2-mode)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
