(disable-theme 'zenburn)

(defun disable-guru-mode () (guru-mode -1))

(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(load-theme 'light-blue t)

(require 'ace-jump-mode)

(require 'org)
(setq org-log-done t)
(setq org-default-notes-file (concat org-directory "/notes.org"))

(require 'god-mode)

;(add-hook 'prog-mode-hook 'predule-turn-off-whitespace t)

;(require 'pink-bliss)
;(pink-bliss)

(defun push-mark-no-activate ()
  "Pushes `point' to `mark-ring' and does not activate the region
Equivalent to \\[set-mark-command] when \\[transient-mark-mode] is disabled"
  (interactive)
  (push-mark (point) t nil)
  (message "Pushed mark to ring"))

(global-subword-mode 1)
