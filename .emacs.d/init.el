(setq los-emacs-init-file load-file-name)
(setq los-emacs-config-dir
      (file-name-directory los-emacs-init-file))


(setq user-emacs-directory los-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;;(tool-bar-mode 1)

(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("Tromey" . "http://tromey.com/elpa/")))
(package-initialize)
(setq abg-required-packages
      (list 'xml-rpc 'magit 'gh))
(dolist (package abg-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" los-emacs-config-dir))
(load custom-file)

(setq keymap-file (expand-file-name "keys.el" los-emacs-config-dir))
(load keymap-file)

(add-hook 'los-code-modes-hook
          (lambda () (linum-mode 1)))

(add-hook 'haskell-mode-hook
          (lambda () (run-hooks 'los-code-modes-hook)))


(defun push-mark-no-activate ()
  "Pushes `point' to `mark-ring' and does not activate the region
Equivalent to \\[set-mark-command] when \\[transient-mark-mode] is disabled"
  (interactive)
  (push-mark (point) t nil)
  (message "Pushed mark to ring"))
(global-set-key (kbd "C-`") 'push-mark-no-activate)

(defun exchange-point-and-mark-no-activate ()
  "Identical to \\[exchange-point-and-mark] but will not activate the region."
  (interactive)
  (exchange-point-and-mark)
  (deactivate-mark nil))
(define-key global-map [remap exchange-point-and-mark] 'exchange-point-and-mark-no-activate)

