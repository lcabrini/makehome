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

;; C and related languages
(require 'cc-mode)
(setq c-default-style "linux")
