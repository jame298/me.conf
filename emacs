(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'uniquify)
(require 'auto-complete-init)
(require 'lang-init)
(require 'ido-init)
(require 'yasnippet-init)
(require 'whitespace)

(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files."
    (interactive)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
    (when (and (buffer-file-name) (file-exists-p (buffer-file-name)) (not (buffer-modified-p)))
      (revert-buffer t t t) )))
    (message "Refreshed open files.") )

(setq inhibit-startup-message t)   ; Don't want any startup message
(setq visible-bell 1)
(setq make-backup-files nil) ; Don't want any backup files
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq uniquify-buffer-name-style 'post-forward)
(setq auto-revert-check-vc-info t)
(setq gnus-treat-strip-cr t)

(global-auto-revert-mode t)
(global-linum-mode t)
(column-number-mode t)
(global-auto-revert-mode t)
(menu-bar-mode -1)
(global-set-key [(control h)] 'delete-backward-char)

(global-whitespace-mode t)
(setq whitespace-style '(face empty lines-tail trailing))
(setq whitespace-line-column 80)
(setq whitespace-global-modes '(not git-commit-mode go-mode markdown-mode))
(add-hook 'before-save-hook 'whitespace-cleanup)

;; always prefer UTF-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; use theme solarized
(load-theme 'manoj-dark t)
