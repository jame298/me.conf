;; Flymake
(add-to-list 'load-path "~/.emacs.d/lang/flymake")
(require 'flymake-easy)
(flymake-mode t)

;; Ruby
(add-to-list 'load-path "~/.emacs.d/lang/ruby")
(require 'flymake-ruby)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)

;; Golang
(add-to-list 'load-path "~/.emacs.d/lang/golang")
(require 'go-mode-autoloads)
(require 'flymake-go)

;; Haml
(add-to-list 'load-path "~/.emacs.d/lang/haml")
(require 'haml-mode)
(require 'flymake-haml)
(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-to-list 'ac-modes 'haml-mode)

;; Erlang
(add-to-list 'load-path "~/.emacs.d/lang/erlang/erlware-mode")
(require 'erlang-start)
(add-to-list 'ac-modes 'erlang-mode)

(provide 'lang-init)


