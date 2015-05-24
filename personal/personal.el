(menu-bar-mode -1)
(setq prelude-whitespace nil)

(key-chord-mode -1)

(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(setq projectile-switch-project-action 'projectile-dired)

(provide 'personal)
;;; personal.el ends here
