(menu-bar-mode -1)
(setq prelude-whitespace nil)

(key-chord-mode -1)

(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)

(provide 'personal)
;;; personal.el ends here
