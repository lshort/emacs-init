(disable-theme 'zenburn)
(defun disable-guru-mode () (guru-mode -1))

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(load-theme 'light-blue t)

(require 'org)
(setq org-log-done t)
(setq org-default-notes-file (concat org-directory "/notes.org"))


;(add-hook 'prog-mode-hook 'predule-turn-off-whitespace t)

;(require 'pink-bliss)
;(pink-bliss)
