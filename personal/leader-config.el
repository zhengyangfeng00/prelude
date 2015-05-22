(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
 "e" 'find-file
 "b" 'switch-to-buffer
 "k" 'kill-buffer)

(provide 'leader-config)
;;; leader-config.el ends here
