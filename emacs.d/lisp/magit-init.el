(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)
(require 'magit-gitflow)
(require 'magit-filenotify)


(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(add-hook 'magit-status-mode-hook 'magit-filenotify-mode)
(provide 'magit-init)
