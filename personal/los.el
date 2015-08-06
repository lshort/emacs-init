(disable-theme 'zenburn)

(defun disable-guru-mode () (guru-mode -1))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") )
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)


(package-initialize)

(add-to-list 'load-path "~/.emacs.d/personal/preload/helm")
(require 'helm-config)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(load-theme 'light-blue t)

(require 'ace-jump-mode)

(add-to-list 'load-path "/path/to/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(require 'org)
(setq org-log-done t)
(setq org-default-notes-file (concat org-directory "/notes.org"))

(require 'smex)
(require 'god-mode)
(require 'auto-complete)
(require 'smartscan)
(global-smartscan-mode 1)

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

(add-hook 'python-mode-common-hook
          (lambda () (subword-mode 1)))



(defun god-mode-update-cursor ()
  (let* ((limited-colors-p (> 257 (length (defined-colors))))
        (white (if limited-colors-p "white" "#e9e2cb"))
        (black (if limited-colors-p "black" "#0a2832")))
    (cond ((not god-local-mode) (progn
                            (set-face-background 'mode-line white)
                            (set-face-background 'mode-line-inactive white)
                            (set-face-foreground 'mode-line black)
                            (set-face-foreground 'mode-line-inactive black)))
          (t (progn
                (set-face-background 'mode-line black)
                (set-face-background 'mode-line-inactive black)
                (set-face-foreground 'mode-line white)
                (set-face-foreground 'mode-line-inactive white))))))


(defun my-update-cursor ()
  (god-mode-update-cursor)
  (setq cursor-type (if (or god-local-mode buffer-read-only)
                      'box
                      'bar)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)

(defun shrink-window-3 ()
  (interactive)
  (shrink-window 3)
  )

(defun my-smart-shrink ()
  (interactive)
  (shrink-window-3)
  (shrink-window-if-larger-than-buffer)
  )

(require 'thingatpt)

(defun smartscan-occur ()
  (interactive)
  (occur (thing-at-point 'word))
)

(defun my-scan() (interactive) (smartscan-symbol-at-pt 'beginning))

(setq prelude-whitespace nil)

(defun join-next-line()
  (interactive)
  (next-line)
  (join-line)
)

(remove-hook 'prog-mode 'flycheck-mode)
(remove-hook 'c++-mode 'flycheck-mode)

(setq default-frame-alist '( (width . 148) (height . 60) ))

(autoload 'notmuch "notmuch" "notmuch mail" t)

(add-hook 'message-setup-hook 'mml-secure-message-sign-pgpmime)
(setq send-mail-function 'smtpmail-send-it
           smtpmail-smtp-server "localhost"
           smtpmail-smtp-service 1025)

(setq ruby-indent-level 4)

(set-face-attribute 'default nil :font "-unknown-Ubuntu Mono-normal-normal-normal-*-21-*-*-*-m-0-iso10646-1")
(ac-config-default)

; los ends here

