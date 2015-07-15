(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)
(require 'magit-gitflow)
(require 'magit-filenotify)

(defcustom git-keyboard-prefix "\C-xv"
  "Keyboard prefix to use for global git keyboard commands."
  :type 'string
  :group 'magit)

(define-prefix-command 'git-global-map)
(define-key global-map git-keyboard-prefix 'git-global-map)

(define-key git-global-map "co" 'magit-checkout)
(define-key git-global-map "cm" 'magit-commit)

(define-key git-global-map "ll" 'magit-log-buffer-file)
(define-key git-global-map "lb" 'magit-log-current)
(define-key git-global-map "G" 'magit-refresh-all)
(define-key git-global-map "g" 'magit-refresh-buffer)
(define-key git-global-map "dd" 'magit-diff-dwim)
(define-key git-global-map "dr" 'magit-diff)
(define-key git-global-map "mm" 'magit-merge)
(define-key git-global-map "ma" 'magit-merge-abort)
(define-key git-global-map "rr" 'magit-rebase)
(define-key git-global-map "ro" 'magit-rebase-from)

(define-key git-global-map "Fs" 'magit-gitflow-feature-start)
(define-key git-global-map "Ff" 'magit-gitflow-feature-finish)

(define-key git-global-map "PP" 'magit-push-quickly)
(define-key git-global-map "Pt" 'magit-push-tags)

(define-key git-global-map "FF" 'magit-pull-current)

(define-key git-global-map "tt" 'magit-tag)
(define-key git-global-map "tk" 'magit-tag-delete)
(define-key git-global-map "tp" 'magit-tag-prune)

(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(add-hook 'magit-status-mode-hook 'magit-filenotify-mode)
(provide 'magit-init)
