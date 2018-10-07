;; Personal Emacs configuration
;; Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

;; MELPA package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Set up UTF-8 environment
(set-language-environment "UTF-8")

;; Start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set some sensible values
(setq-default
 indent-tabs-mode nil) ; Don't use tabs for indenting

(blink-cursor-mode 0)  ; Cursor, don't blink
(menu-bar-mode    -1)  ; No menubar
(tool-bar-mode    -1)  ; No toolbar
(scroll-bar-mode  -1)  ; No scrollbar

;; Theme
(load-theme 'zenburn t)

;; Powerline
(require 'powerline)
(powerline-default-theme)

;; Get 256 colors in term
(add-hook 'term-mode-hook #'eterm-256color-mode)
