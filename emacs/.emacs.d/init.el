;; Add repositories
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(let ((config-file (expand-file-name "config.org" user-emacs-directory)))
  (when (file-readable-p config-file)
(org-babel-load-file config-file)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/Dokumente/Orga/kalender.org" "~/Dokumente/Orga/fairtsg.org")))
 '(package-selected-packages
   (quote
    (ess ess-R-data-view eldoc-cmake cyberpunk-theme base16-theme which-key use-package treemacs popup-kill-ring nyan-mode magit expand-region counsel company auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
