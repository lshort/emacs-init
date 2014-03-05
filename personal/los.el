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

(add-hook 'c-mode-common-hook
               (lambda () (subword-mode 1)))

(add-hook 'c++-mode-common-hook
               (lambda () (subword-mode 1)))



(defun god-mode-update-cursor ()
  (let ((limited-colors-p (> 257 (length (defined-colors)))))
    (cond (god-local-mode (progn
                            (set-face-background 'mode-line (if limited-colors-p "white" "#e9e2cb"))
                            (set-face-background 'mode-line-inactive (if limited-colors-p "white" "#e9e2cb"))))
          (t (progn
               (set-face-background 'mode-line (if limited-colors-p "black" "#0a2832"))
               (set-face-background 'mode-line-inactive (if limited-colors-p "black" "#0a2832")))))))


(defun my-update-cursor ()
  (god-mode-update-cursor)
  (setq cursor-type (if (or god-local-mode buffer-read-only)
                        'box
                      'bar)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)
