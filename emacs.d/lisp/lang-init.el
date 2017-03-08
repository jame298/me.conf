(add-to-list 'load-path "~/.emacs.d/lang")

;; Javascript
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(setq js-indent-level 2)
(add-hook 'js-mode-hook (lambda () (untabify (point-min) (point-max))))

;; TypeScript
(require 'typescript)
(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))
(add-to-list 'ac-modes 'typescript-mode)
(setq typescript-indent-level 2)
(add-hook 'typescript-mode-hook (lambda () (untabify (point-min) (point-max))))

;; YAML
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'ac-modes 'yaml-mode)

;; Markdown
(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'ac-modes 'markdown-mode)

;; Dockerfile
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
(add-to-list 'ac-modes 'dockerfile-mode)

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
;; (add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)

;; Golang
(defun go-mode-before-save-hook ()
  (when (eq major-mode 'go-mode)
	(gofmt-before-save)))

(add-to-list 'load-path "~/.emacs.d/lang/golang")
(require 'go-mode-autoloads)
(require 'flymake-go)
(add-hook 'before-save-hook #'go-mode-before-save-hook)

;; Haml
(add-to-list 'load-path "~/.emacs.d/lang/haml")
(require 'haml-mode)
(require 'flymake-haml)
(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-to-list 'ac-modes 'haml-mode)

;; Haskell
(add-to-list 'load-path "~/.emacs.d/lang/haskell/haskell-mode")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/.emacs.d/lang/haskell/haskell-mode")

;; Erlang
(add-to-list 'load-path "~/.emacs.d/lang/erlang/erlware-mode")
(require 'erlang-start)
(add-to-list 'ac-modes 'erlang-mode)

;; Python
(setq py-install-directory "~/.emacs.d/lang/python")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; Swift
(add-to-list 'load-path "~/.emacs.d/lang/swift")
(require 'swift-mode)
(add-to-list 'ac-modes 'swift-mode)

;; Lua
(add-to-list 'load-path "~/.emacs.d/lang/lua")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; C
(add-to-list 'load-path "~/.emacs.d/lang/cc")
(require 'cc-mode)
(setq-default c-basic-offset 4
          c-default-style "linux"
          c-syntactic-indentation nil
              tab-width 4
              indent-tabs-mode t)


(provide 'lang-init)
