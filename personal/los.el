(disable-theme 'zenburn)

(defun disable-guru-mode () (guru-mode -1))

(require 'package)
(package-initialize)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(load-theme 'light-blue t)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

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
(global-set-key (kbd "C-`") 'push-mark-no-activate)

(global-subword-mode 1)
