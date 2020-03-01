;; Personal Emacs configuration
;; Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

;; Package management
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")))
(package-initialize)

;; Set up UTF-8 environment
(set-language-environment "UTF-8")

;; Start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; User interface
(blink-cursor-mode 0)  ; Cursor, don't blink
(tool-bar-mode -1)

;; Theme
(load-theme 'wheatgrass t)

;; Powerline
(require 'powerline)
(powerline-default-theme)

;; Smart tabs
(smart-tabs-insinuate 'c)
(setq-default indent-tabs-mode nil)

;; C
(add-hook 'c-mode-common-hook
	  (lambda () (setq indent-tabs-mode t
			   c-basic-offset 4
			   tab-width 4
			   c-default-style "bsd")))

;; LISP
(add-hook 'emacs-lisp-mode-hook
	  (lambda() (setq indent-tabs-mode t)))

;; Org mode
(setq org-agenda-files '("~/org"))

;; Gnus
(setq nnrss-directory "~/news/rss")
