;;; package --- Summary
;;; Commentary:

;;; Code:
(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader ",")
(evil-leader/set-key
  "e" 'find-file
  "w" 'save-buffer
  "q" 'fill-paragraph
  "b" 'switch-to-buffer
  "d" 'dash-at-point
  "k" 'kill-buffer)

(provide 'leader-config)
;;; leader-config.el ends here
