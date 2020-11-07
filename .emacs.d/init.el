(setq warning-minimum-level :emergency)
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(setq package-list '(autopair el-get form-feed gist gh logito pcache git f dash s dash s git-gutter+ dash git-commit with-editor dash async dash idle-highlight-mode jedi auto-complete popup jedi-core python-environment deferred epc ctable concurrent deferred jedi-core python-environment deferred epc ctable concurrent deferred js2-mode json-mode json-snatcher json-reformat json-reformat json-snatcher logito lua-mode markdown-mode pcache popup python-environment deferred s sublime-themes web-mode with-editor dash async yasnippet solarized))

;;add that lein in
(add-to-list 'exec-path "/usr/local/bin")
(require 'epa-file)
(epa-file-enable)
;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(;; makes handling lisp expressions much, much easier
    ;; Cheatsheet: http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider

    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description
    ;; of ido
    ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; project navigation
    projectile

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    tagedit

    ;; git integration
    magit))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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
 '(jdee-server-dir "/Users/pswaminathan/.emacs.d/jdee-server-dir" t)
 '(package-selected-packages
   (quote
    (clojure-mode paredit solarized-theme jdee autopair auto-complete)))
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
(setq backup-directory-alist '(("." . "~/.saves")))

;; ENSIME
;;(use-package ensime
;;	     :ensure t
;;	     :pin melpa-stable)

;; MAVEN-MODE
;;(add-to-list 'load-path "/home/kaushik/git/maven-pom-mode")
;;(load "maven-pom-mode")

;; DISABLE FLYCHECK OVERALL FOR JAVA
(setq-default flycheck-disabled-checkers '(jdee-flycheck-javac-checker))
(global-flycheck-mode -1)
(setq jdee-flycheck-enable-p nil)

;;CLOJURE SETUP
;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; 
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
(add-to-list 'load-path "~/.emacs.d/vendor")


;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
;;(load "ui.el")

;; These customizations make editing a bit nicer.
;;(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; Langauage-specific
(load "setup-clojure.el")
(load "setup-js.el")

;; Window resize on init
(when window-system (set-frame-size (selected-frame) 115 65))
