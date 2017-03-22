(add-to-list 'load-path "~/.emacs.d/git/magit-2.10.3/lisp")

(require 'magit)

(global-set-key (kbd "C-x g c") 'magit-commit-popup)
(global-set-key (kbd "C-x g l") 'magit-pull-format-branch*rebase)
(global-set-key (kbd "C-x g u") 'magit-push-current)

(provide 'git-init)
