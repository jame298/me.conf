(add-to-list 'load-path
              "~/.emacs.d/yasnippet")
(require 'yasnippet)

(yas-global-mode t)

;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-keymap (kbd "<tab>") nil)
(define-key yas-keymap (kbd "TAB") nil)

;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand)
(define-key yas-keymap (kbd "<backtab>") 'yas-next-field)

(provide 'yasnippet-init)
