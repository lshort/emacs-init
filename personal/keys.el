;;;   keys.el --- Lee's keymappings

;;; Commentary:

;;; Code:

(defvar my-keys-minor-mode-map (make-keymap)
  "A minor mode keymap so my mappings are not clobbered by language mappings.")

;(define-key my-keys-minor-mode-map (kbd "C-i") 'some-function)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)



(define-key my-keys-minor-mode-map (kbd "<escape>") 'god-mode-all)


(define-key my-keys-minor-mode-map (kbd "<home>") 'beginning-of-buffer)
(define-key my-keys-minor-mode-map (kbd "<end>") 'end-of-buffer)
(define-key my-keys-minor-mode-map [f1] 'start-kbd-macro)
(define-key my-keys-minor-mode-map [f2] 'kbd-macro-query)
(define-key my-keys-minor-mode-map [f3] 'kmacro-set-counter)
(define-key my-keys-minor-mode-map [f4] 'kmacro-insert-counter)
(define-key my-keys-minor-mode-map [f5] 'end-kbd-macro)
(define-key my-keys-minor-mode-map [f6] 'name-last-kbd-macro)
(define-key my-keys-minor-mode-map [f7] 'call-last-kbd-macro)
(define-key my-keys-minor-mode-map [f8] 'call-ten-macros)
(define-key my-keys-minor-mode-map [f9] 'exit-recursive-edit)
(define-key my-keys-minor-mode-map [f10] 'apropos)
(define-key my-keys-minor-mode-map [f11] 'describe-key)
(define-key my-keys-minor-mode-map [f12] 'hippie-expand)




(defalias 'list-buffers 'ibuffer)

(defun call-ten-macros ()
   (interactive)
   (progn (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
          (call-last-kbd-macro)
  ))


;;; ********* God Mode key bindings


;;; basic control characters

;;; left hand
(define-key my-keys-minor-mode-map (kbd "C-`") 'undo)

(define-key my-keys-minor-mode-map (kbd "C-q") 'kill-line)
(define-key my-keys-minor-mode-map (kbd "C-w") 'subword-backward-kill)
(define-key my-keys-minor-mode-map (kbd "C-e") 'subword-kill)
(define-key my-keys-minor-mode-map (kbd "C-r") 'sp-delete-char)
(define-key my-keys-minor-mode-map (kbd "C-t") 'kill-whole-line)


(define-key my-keys-minor-mode-map (kbd "C-a") 'beginning-of-line)
(define-key my-keys-minor-mode-map (kbd "C-s") 'subword-backward)
(define-key my-keys-minor-mode-map (kbd "C-d") 'subword-forward)
(define-key my-keys-minor-mode-map (kbd "C-f") 'move-end-of-line)
;(define-key my-keys-minor-mode-map (kbd "C-g") ')
;TODO: replace ^G with something useful (M-d ??), and use this spot as a preface

;(define-key c++-mode-map (kbd "C-d") 'right-word)
;(define-key c-mode-map (kbd "C-d") 'right-word)

(define-key my-keys-minor-mode-map (kbd "C-z") 'yank)
;(define-key my-keys-minor-mode-map (kbd "C-x") ') ;reserved as prefix command
;(define-key my-keys-minor-mode-map (kbd "C-c") ') ;reserved as prefix command
(define-key my-keys-minor-mode-map (kbd "C-v") 'kill-ring-save) ; copy
(define-key my-keys-minor-mode-map (kbd "C-b") 'kill-region) ; cut

;;; right hand
(define-key my-keys-minor-mode-map (kbd "C--") 'zap-to-char)
(define-key my-keys-minor-mode-map (kbd "C-=") 'save-some-buffers)

(define-key my-keys-minor-mode-map (kbd "C-y") 'beginning-of-buffer)
(define-key my-keys-minor-mode-map (kbd "C-u") 'ace-jump-char-mode)
;(define-key my-keys-minor-mode-map (kbd "C-i") ')  ; TAB key
(define-key my-keys-minor-mode-map (kbd "C-o") 'ace-jump-line-mode)
(define-key my-keys-minor-mode-map (kbd "C-p") 'end-of-buffer)
;(define-key my-keys-minor-mode-map (kbd "C-[]") ')  ; ESCAPE key
(define-key my-keys-minor-mode-map (kbd "C-]") 'query-replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-\\") 'replace-string-regexp)

;(define-key my-keys-minor-mode-map (kbd "C-h") ')   ; prefix
(define-key my-keys-minor-mode-map (kbd "C-j") 'backward-char)
(define-key my-keys-minor-mode-map (kbd "C-k") 'next-line)
(define-key my-keys-minor-mode-map (kbd "C-l") 'previous-line)
(define-key my-keys-minor-mode-map (kbd "C-;") 'forward-char)
(define-key my-keys-minor-mode-map (kbd "C-'") 'prelude-open-line)


(define-key my-keys-minor-mode-map (kbd "C-n") 'other-window)
;(define-key my-keys-minor-mode-map (kbd "C-m") 'hippie-expand) ; RETURN key
(define-key my-keys-minor-mode-map (kbd "C-,") 'ido-switch-buffer)
(define-key my-keys-minor-mode-map (kbd "C-.") 'bury-buffer)
(define-key my-keys-minor-mode-map (kbd "C-/") 'helm-select-action)

;;; ************************** Control-X mappings

;;; left hand
(define-key my-keys-minor-mode-map (kbd "C-x C-q") 'transpose-words)
(define-key my-keys-minor-mode-map (kbd "C-x C-w") 'write-file)
(define-key my-keys-minor-mode-map (kbd "C-x C-e") 'ibuffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-r") 'revert-buffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-t") 'delete-horizontal-space)

(define-key my-keys-minor-mode-map (kbd "C-x C-a") 'back-to-indentation)
;go to first nonwhitespace
(define-key my-keys-minor-mode-map (kbd "C-x C-s") 'ido-goto-symbol)
(define-key my-keys-minor-mode-map (kbd "C-x C-d") 'helm-man-woman)
(define-key my-keys-minor-mode-map (kbd "C-x C-f") 'helm-find-files)
(define-key my-keys-minor-mode-map (kbd "C-x C-g") 'goto-line)

(define-key my-keys-minor-mode-map (kbd "C-x C-z") 'yank-pop)
(define-key my-keys-minor-mode-map (kbd "C-x C-x") 'prelude-exchange-point-and-mark)
;(define-key my-keys-minor-mode-map (kbd "C-x C-c") 'yank-pop) ; exit-emacs
(define-key my-keys-minor-mode-map (kbd "C-x C-v") 'next-error) ;compilation mode
;(define-key my-keys-minor-mode-map (kbd "C-x C-b") 'next-error) ;

;;; right hand
;(define-key my-keys-minor-mode-map (kbd "C-x C--") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-=") 'magit-status)

(define-key my-keys-minor-mode-map (kbd "C-x C-y") 'helm-do-grep)  ; greppish
(define-key my-keys-minor-mode-map (kbd "C-x C-u") 'multi-occur-in-this-mode)
(define-key my-keys-minor-mode-map (kbd "C-x C-i") 'indent-region)
(define-key my-keys-minor-mode-map (kbd "C-x C-o") 'bookmark-set)
(define-key my-keys-minor-mode-map (kbd "C-x C-p") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-x C-[]") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-x C-]") 'bookmark-jump)
(define-key my-keys-minor-mode-map (kbd "C-x C-\\") 'evilnc-comment-or-uncomment-lines)

(define-key my-keys-minor-mode-map (kbd "C-x C-h") 'smartscan-occur)
(define-key my-keys-minor-mode-map (kbd "C-x C-j") 'join-line)
(define-key my-keys-minor-mode-map (kbd "C-x C-k") 'ido-kill-buffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-l") 'recenter-top-bottom)
;(define-key my-keys-minor-mode-map (kbd "C-x C-;") 'align-regexp)
(define-key my-keys-minor-mode-map (kbd "C-x C-'") 'align-regexp)

(define-key my-keys-minor-mode-map (kbd "C-x C-SPC") 'push-mark-no-activate)
(define-key my-keys-minor-mode-map (kbd "C-x C-n") 'hippie-expand)
(define-key my-keys-minor-mode-map (kbd "C-x C-m") 'magit-status)
(define-key my-keys-minor-mode-map (kbd "C-x C-,") 'eval-defun) ;evals crnt sexp
;(define-key my-keys-minor-mode-map (kbd "C-x C-,") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-.") 'magit-status)
(define-key my-keys-minor-mode-map (kbd "C-x C-/") 'string-rectangle)

;;; ************************** Control-C mappings

;;; left hand
(define-key my-keys-minor-mode-map (kbd "C-c C-q") 'my-smart-shrink)
(define-key my-keys-minor-mode-map (kbd "C-c C-w") 'shrink-window)
(define-key my-keys-minor-mode-map (kbd "C-c C-e") 'helm-find)
(define-key my-keys-minor-mode-map (kbd "C-c C-r") 'helm-locate)
;(define-key my-keys-minor-mode-map (kbd "C-c C-t") 'delete-horizontal-space)

(define-key my-keys-minor-mode-map (kbd "C-c C-a") 'org-agenda) ;
(define-key my-keys-minor-mode-map (kbd "C-c C-s") 'smartscan-symbol-go-backward)
(define-key my-keys-minor-mode-map (kbd "C-c C-d") 'smartscan-symbol-go-forward)
(define-key my-keys-minor-mode-map (kbd "C-c C-f") 'point-to-register)
(define-key my-keys-minor-mode-map (kbd "C-c C-g") 'jump-to-register)

(define-key my-keys-minor-mode-map (kbd "C-c C-z") 'helm-mini)
(define-key my-keys-minor-mode-map (kbd "C-c C-x") 'smex)   ; M-x
(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'compile) ;
(define-key my-keys-minor-mode-map (kbd "C-c C-v") 'insert-register) ;
(define-key my-keys-minor-mode-map (kbd "C-c C-b") 'copy-to-register) ;

;;; right hand
;;(define-key my-keys-minor-mode-map (kbd "C-c C--") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-=") 'magit-status)

;(define-key my-keys-minor-mode-map (kbd "C-c C-y") 'occur)  ; greppish
(define-key my-keys-minor-mode-map (kbd "C-c C-u") 'org-capture-kill)
(define-key my-keys-minor-mode-map (kbd "C-c C-i") 'org-capture)
(define-key my-keys-minor-mode-map (kbd "C-c C-o") 'org-capture-refile)
;(define-key my-keys-minor-mode-map (kbd "C-c C-p") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-[]") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-]") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-c C-\\") 'uncomment-lines)

(define-key my-keys-minor-mode-map (kbd "C-c C-h") 'org-capture-finalize)
(define-key my-keys-minor-mode-map (kbd "C-c C-j") 'org-capture-link)
(define-key my-keys-minor-mode-map (kbd "C-c C-k") 'scroll-up-command);page down
(define-key my-keys-minor-mode-map (kbd "C-c C-l") 'scroll-down-command) ;pg up
;;(define-key my-keys-minor-mode-map (kbd "C-c C-;") 'align-regexp)
;(define-key my-keys-minor-mode-map (kbd "C-c C-'") 'align-regexp)

;(define-key my-keys-minor-mode-map (kbd "C-c C-SPC") 'push-mark-no-activate)
(define-key my-keys-minor-mode-map (kbd "C-c C-n") 'narrow-to-region)
(define-key my-keys-minor-mode-map (kbd "C-c C-m") 'widen)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-,") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-.") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-/") 'magit-status)

;;; ************************** Control-H mappings

;;; left hand
;(define-key my-keys-minor-mode-map (kbd "C-c C-q") 'transpose-words)
;(define-key my-keys-minor-mode-map (kbd "C-h C-w") 'ibuffer)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-e") 'ibuffer)
;(define-key my-keys-minor-mode-map (kbd "C-h C-r") 'revert-buffer)
;(define-key my-keys-minor-mode-map (kbd "C-h C-t") 'delete-horizontal-space)

(define-key my-keys-minor-mode-map (kbd "C-h C-a") 'mml-attach-file)
(define-key my-keys-minor-mode-map (kbd "C-h C-s") 'message-send-and-exit)
(define-key my-keys-minor-mode-map (kbd "C-h C-d") 'helm-resume)
(define-key my-keys-minor-mode-map (kbd "C-h C-f") 'helm-apropos)
;(define-key my-keys-minor-mode-map (kbd "C-h C-g") 'jump-to-register)

;(define-key my-keys-minor-mode-map (kbd "C-h C-z") 'yank-pop)
;(define-key my-keys-minor-mode-map (kbd "C-h C-x") 'prelude-mark)
;(define-key my-keys-minor-mode-map (kbd "C-h C-c") 'insert-register) ;
;(define-key my-keys-minor-mode-map (kbd "C-h C-v") 'copy-to-register) ;
;;(define-key my-keys-minor-mode-map (kbd "C-h C-b") 'next-error) ;

;;; right hand
;;(define-key my-keys-minor-mode-map (kbd "C-h C--") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-=") 'magit-status)

;(define-key my-keys-minor-mode-map (kbd "C-h C-y") 'occur)  ; greppish
(define-key my-keys-minor-mode-map (kbd "C-h C-u") 'ace-jump-mode)
;(define-key my-keys-minor-mode-map (kbd "C-h C-i") 'indent-region)
;(define-key my-keys-minor-mode-map (kbd "C-h C-o") 'bookmark-set)
;(define-key my-keys-minor-mode-map (kbd "C-h C-p") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-[]") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-]") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-h C-\\") 'uncomment-lines)

(define-key my-keys-minor-mode-map (kbd "C-h C-h") 'occur)
(define-key my-keys-minor-mode-map (kbd "C-h C-j") 'helm-occur)
;(define-key my-keys-minor-mode-map (kbd "C-h C-k") 'ido-kill-buffer)
;(define-key my-keys-minor-mode-map (kbd "C-h C-l") 'recenter-top-bottom)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-;") 'align-regexp)
;(define-key my-keys-minor-mode-map (kbd "C-h C-'") 'align-regexp)

;(define-key my-keys-minor-mode-map (kbd "C-h C-SPC") 'push-mark-no-activate)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-n") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-h C-m") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-,") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-.") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-h C-/") 'magit-status)



;;; M- characters

;;; left hand

(define-key my-keys-minor-mode-map (kbd "\M-q") 'my-smart-shrink)
(define-key my-keys-minor-mode-map (kbd "\M-w") 'shrink-window)
;(define-key my-keys-minor-mode-map (kbd "\M-e") 'subword-kill)
;(define-key my-keys-minor-mode-map (kbd "\M-r") 'sp-delete-char)
(define-key my-keys-minor-mode-map (kbd "\M-t") 'subword-transpose)


;(define-key my-keys-minor-mode-map (kbd "\M-a") 'beginning-of-line)
;(define-key my-keys-minor-mode-map (kbd "\M-s") 'subword-backward)
(define-key my-keys-minor-mode-map (kbd "\M-d") 'sp-kill-word)
(define-key my-keys-minor-mode-map (kbd "\M-f") 'helm-show-kill-ring)
(define-key my-keys-minor-mode-map (kbd "\M-g") 'goto-line)

;(define-key my-keys-minor-mode-map (kbd "\M-z") 'yank)
(define-key my-keys-minor-mode-map (kbd "\M-x") 'helm-M-x)
(define-key my-keys-minor-mode-map (kbd "\M-c") 'subword-capitalize)
;(define-key my-keys-minor-mode-map (kbd "\M-v") 'kill-ring-save) ; copy
;(define-key my-keys-minor-mode-map (kbd "\M-b") 'kill-region) ; cut

;;; right hand
(define-key my-keys-minor-mode-map (kbd "\M- ") 'hippie-expand)

(define-key my-keys-minor-mode-map (kbd "\M--") 'negative-argument)
(define-key my-keys-minor-mode-map (kbd "\M-=") 'evilnc-comment-or-uncomment-region)

;(define-key my-keys-minor-mode-map (kbd "\M-y") 'beginning-of-buffer)
;(define-key my-keys-minor-mode-map (kbd "\M-u") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "\M-i") 'tab-to-tab-stop)
(define-key my-keys-minor-mode-map (kbd "\M-o") 'prelude-smart-open-line)
;(define-key my-keys-minor-mode-map (kbd "\M-p") 'end-of-buffer)
;(define-key my-keys-minor-mode-map (kbd "\M-[]") ')
;(define-key my-keys-minor-mode-map (kbd "\M-]") 'query-replace-regexp)
;(define-key my-keys-minor-mode-map (kbd "\M-\\") 'replace-string-regexp)

(define-key my-keys-minor-mode-map (kbd "\M-h") 'jump-to-register)
(define-key my-keys-minor-mode-map (kbd "\M-j") 'point-to-register)
;(define-key my-keys-minor-mode-map (kbd "\M-k") 'next-line)
(define-key my-keys-minor-mode-map (kbd "\M-l") 'subword-downcase)
;(define-key my-keys-minor-mode-map (kbd "\M-;") 'forward-char)
(define-key my-keys-minor-mode-map (kbd "\M-'") 'smartscan-symbol-replace)


(define-key my-keys-minor-mode-map (kbd "\M-n") 'other-window)
;(define-key my-keys-minor-mode-map (kbd "\M-m") 'hippie-expand)
(define-key my-keys-minor-mode-map (kbd "\M-,") 'ido-switch-buffer)
;(define-key my-keys-minor-mode-map (kbd "\M-.") 'bury-buffer)
;(define-key my-keys-minor-mode-map (kbd "\M-/") 'string-rectangle)



;;; number keys
(define-key my-keys-minor-mode-map (kbd "C-1") 'delete-other-windows)
(define-key my-keys-minor-mode-map (kbd "C-2") 'split-window-below)
(define-key my-keys-minor-mode-map (kbd "C-3") 'split-window-right)
(define-key my-keys-minor-mode-map (kbd "C-4") 'backward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-5") 'forward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-6") 'isearch-forward)
(define-key my-keys-minor-mode-map (kbd "C-7") 'isearch-forward-word)
(define-key my-keys-minor-mode-map (kbd "C-8") 'join-next-line)
(define-key my-keys-minor-mode-map (kbd "C-9") 'undo)
(define-key my-keys-minor-mode-map (kbd "C-0") 'delete-window)

;;; keys.el ends here
