(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(setq package-list '(autopair el-get form-feed gist gh logito pcache git f dash s dash s git-gutter+ dash git-commit with-editor dash async dash idle-highlight-mode jedi auto-complete popup jedi-core python-environment deferred epc ctable concurrent deferred jedi-core python-environment deferred epc ctable concurrent deferred js2-mode json-mode json-snatcher json-reformat json-reformat json-snatcher logito lua-mode markdown-mode pcache popup python-environment deferred s sublime-themes web-mode with-editor dash async yasnippet solarized))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(inhibit-startup-screen t)
 '(jdee-server-dir "~/.emacs.d/")
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Mono" :foundry "unknown" :slant normal :weight normal :height 158 :width normal)))))
(package-initialize)
;; THEME LOAD
(load-theme 'solarized-light t)
;; ALL THAT MATTERS
(require 'auto-complete)
(global-auto-complete-mode t)
(require 'autopair)
(autopair-global-mode t)
(require 'linum)
(global-linum-mode t)
(show-paren-mode t)

;;GLOBAL KEY SET
(global-set-key (kbd "C-z") 'undo )
(global-set-key (kbd "C-1") 'delete-other-windows )
(global-set-key (kbd "C-x g") 'magit-status)
;; JAVA INDENT
(add-hook 'java-mode-hook (lambda ()
			    (setq c-basic-offset 2)))
