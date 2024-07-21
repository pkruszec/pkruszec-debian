(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" default))
 '(package-selected-packages
   '(yasnippet multiple-cursors move-text smex gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq backup-directory-alist '(("." . "~/.saves/")))

(set-language-environment "UTF-8")

(load "~/.emacs.d/simpc-mode.el")

;; Font and theme
(set-frame-font "Iosevka Fixed-16")
(load-theme 'gruber-darker t)

;; Indents
(setq-default c-basic-offset 4)
(setq c-default-style "stroustrup")

(setq-default indent-tabs-mode nil
              tab-stop-list    ()
              tab-width        4)

;; Other stuff
(setq scroll-conservatively most-positive-fixnum)
(setq ring-bell-function 'ignore)
(global-auto-revert-mode t)
(global-display-line-numbers-mode t)

(ido-mode t)

(add-to-list 'auto-mode-alist '("\\.c\\'" . simpc-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . simpc-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . simpc-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . simpc-mode))

;; smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; move-text
(require 'move-text)
(move-text-default-bindings)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'yasnippet)
(yas-global-mode 1)

