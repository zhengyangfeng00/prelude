;;; Commentary:

;; Takes care of the automatically installation for the packages that
;; are not bundled with prelude

;;; Code:
(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;; set package-user-dir to be relative to Prelude install path
(setq package-user-dir (expand-file-name "elpa" prelude-dir))
(package-initialize)

(defvar personal-packages
  '(evil-leader
    helm-dash
    dash-at-point)
  "A list of packages that are not bundled with prelude")

(defun personal-packages-installed-p ()
  "Check if all packages in `personal-packages' are installed"
  (every #'package-installed-p personal-packages))

(defun personal-require-package (package)
  "Install package unless already installed."
  (unless (memq package personal-packages)
    (add-to-list 'personal-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun personal-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'personal-require-package packages))

(defun personal-install-packages ()
  "Install all packages listed in `personal-packages'."
  (unless (personal-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Refreshing package database..")
    (package-refresh-contents)
    (message "%s" "done.")
    ;; install the missing packages
    (personal-require-packages personal-packages)))

;; run package installation
(personal-install-packages)

(provide 'personal-packages)
;;; personal-packages.el ends here
