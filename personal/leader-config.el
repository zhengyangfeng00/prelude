;;; package --- Summary
;;; Commentary:

;;; Code:
(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader ",")
(evil-leader/set-key
  "b" 'switch-to-buffer
  "e" 'find-file
  "d" 'dash-at-point
  "h" 'highlight-symbol
  "k" 'kill-buffer
  "q" 'fill-paragraph
  "w" 'save-buffer)

(provide 'leader-config)
;;; leader-config.el ends here
