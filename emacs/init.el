;; Personal Emacs configuration
;; Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
