(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'uniquify)
(require 'auto-complete-init)
(require 'lang-init)
(require 'ido-init)

(load-theme 'misterioso t)

(setq inhibit-startup-message t)   ; Don't want any startup message
(setq visible-bell 1)
(setq make-backup-files nil) ; Don't want any backup files
(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq uniquify-buffer-name-style 'post-forward)
(global-linum-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(global-auto-revert-mode 1)
(global-whitespace-mode 1)


(autoload 'whitespace-mode           "whitespace" "Toggle whitespace visualization."        t)
(autoload 'whitespace-toggle-options "whitespace" "Toggle local `whitespace-mode' options." t)
(add-hook 'before-save-hook 'whitespace-cleanup)

(setq whitespace-display-mappings
  '((space-mark   ?\    [?\xB7]     [?.])	; space
    (space-mark   ?\xA0 [?\xA4]     [?_])	; hard space
    (newline-mark ?\n   [?\xB6 ?\n] [?$ ?\n])	; end-of-line
   )
)
