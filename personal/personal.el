;;; package --- summary
;;; Commentary:

;;; code:
(menu-bar-mode -1)
(key-chord-mode -1)

(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(setq projectile-switch-project-action 'projectile-dired)

(setq tab-always-indent 'complete)
(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "C-c r") 'racket-run-and-switch-to-repl)))

;; configurations for yasinppet
(require 'yasnippet)
(yas-global-mode 1)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/personal/snippets")

(setq linum-format "%4d \u2502 ")

(smartparens-global-mode t)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

(provide 'personal)
;;; personal.el ends here
