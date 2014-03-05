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

(define-key my-keys-minor-mode-map (kbd "M-g") 'goto-line)
(define-key my-keys-minor-mode-map (kbd "M-h") 'jump-to-register)
(define-key my-keys-minor-mode-map (kbd "M-j") 'point-to-register)

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
(define-key my-keys-minor-mode-map [f12] 'eval-defun) ;evals crnt sexp

;(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'execute-extended-command)
(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'smex)

(define-key my-keys-minor-mode-map (kbd "C-c l") 'org-store-link)
(define-key my-keys-minor-mode-map (kbd "C-c a") 'org-agenda)

;(define-key my-keys-minor-mode-map (kbd "C-c c") 'org-capture)
;(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'org-capture-finalize)
;(define-key my-keys-minor-mode-map (kbd "C-c c") 'org-capture-refile)
;(define-key my-keys-minor-mode-map (kbd "C-c c") 'org-capture-kill)


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
;TODO: replace ^G with something useful (M-d ??), and use this spot

;(define-key c++-mode-map (kbd "C-d") 'right-word)
;(define-key c-mode-map (kbd "C-d") 'right-word)

(define-key my-keys-minor-mode-map (kbd "C-z") 'yank)
;(define-key my-keys-minor-mode-map (kbd "C-x") ') ;reserved as prefix command
;(define-key my-keys-minor-mode-map (kbd "C-c") ') ;reserved as prefix command
(define-key my-keys-minor-mode-map (kbd "C-v") 'kill-ring-save) ; copy
(define-key my-keys-minor-mode-map (kbd "C-b") 'kill-region) ; cut

;;; right hand
(define-key my-keys-minor-mode-map (kbd "C--") 'ido-find-file)
(define-key my-keys-minor-mode-map (kbd "C-=") 'save-some-buffers)

(define-key my-keys-minor-mode-map (kbd "C-y") 'point-to-register)
(define-key my-keys-minor-mode-map (kbd "C-u") 'jump-to-register)
;(define-key my-keys-minor-mode-map (kbd "C-i") ')  ; TAB key
(define-key my-keys-minor-mode-map (kbd "C-o") 'copy-to-register)
(define-key my-keys-minor-mode-map (kbd "C-p") 'insert-register)
;(define-key my-keys-minor-mode-map (kbd "C-[]") ')  ; ESCAPE key
(define-key my-keys-minor-mode-map (kbd "C-]") 'query-replace)
(define-key my-keys-minor-mode-map (kbd "C-\\") 'replace-string)

(define-key my-keys-minor-mode-map (kbd "C-h") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "C-j") 'backward-char)
;(define-key my-keys-minor-mode-map (kbd "C-h") 'prelude-exchange-point-and-mark)
(define-key my-keys-minor-mode-map (kbd "C-k") 'next-line)
(define-key my-keys-minor-mode-map (kbd "C-l") 'previous-line)
(define-key my-keys-minor-mode-map (kbd "C-;") 'forward-char)
(define-key my-keys-minor-mode-map (kbd "C-'") 'ace-jump-line-mode)


(define-key my-keys-minor-mode-map (kbd "C-n") 'other-window)
                                        ;(define-key my-keys-minor-mode-map (kbd "C-m") 'hippie-expand) ; RETURN key
(define-key my-keys-minor-mode-map (kbd "C-,") 'ido-switch-buffer)
(define-key my-keys-minor-mode-map (kbd "C-.") 'bury-buffer)
(define-key my-keys-minor-mode-map (kbd "C-/") 'string-rectangle)

;;; ************************** Control-X mappings

;;; left hand
(define-key my-keys-minor-mode-map (kbd "C-x C-q") 'transpose-words)
(define-key my-keys-minor-mode-map (kbd "C-x C-w") 'ibuffer)
;(define-key my-keys-minor-mode-map (kbd "C-x C-e") 'ibuffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-r") 'revert-buffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-t") 'delete-horizontal-space)

(define-key my-keys-minor-mode-map (kbd "C-x C-a") 'back-to-indentation) ;go to first nonwhitespace
(define-key my-keys-minor-mode-map (kbd "C-x C-s") 'ido-goto-symbol)
;(define-key my-keys-minor-mode-map (kbd "C-x C-d") 'ido-goto-symbol)
;(define-key my-keys-minor-mode-map (kbd "C-x C-f") 'ido-goto-symbol)
(define-key my-keys-minor-mode-map (kbd "C-x C-g") 'goto-line)

(define-key my-keys-minor-mode-map (kbd "C-x C-z") 'yank-pop)
(define-key my-keys-minor-mode-map (kbd "C-x C-x") 'prelude-exchange-point-and-mark)
;(define-key my-keys-minor-mode-map (kbd "C-x C-c") 'yank-pop) ; exit-emacs
(define-key my-keys-minor-mode-map (kbd "C-x C-v") 'next-error) ;compilation mode
;(define-key my-keys-minor-mode-map (kbd "C-x C-b") 'next-error) ;

;;; right hand
;(define-key my-keys-minor-mode-map (kbd "C-x C--") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-=") 'magit-status)

(define-key my-keys-minor-mode-map (kbd "C-x C-y") 'occur)  ; greppish
(define-key my-keys-minor-mode-map (kbd "C-x C-u") 'multi-occur-in-this-mode)
(define-key my-keys-minor-mode-map (kbd "C-x C-i") 'indent-region)
(define-key my-keys-minor-mode-map (kbd "C-x C-o") 'bookmark-set)
(define-key my-keys-minor-mode-map (kbd "C-x C-p") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-x C-[]") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-x C-]") 'bookmark-jump)
(define-key my-keys-minor-mode-map (kbd "C-x C-\\") 'evilnc-comment-or-uncomment-lines)

;(define-key my-keys-minor-mode-map (kbd "C-x C-h") 'evilnc)
(define-key my-keys-minor-mode-map (kbd "C-x C-j") 'rgrep)
(define-key my-keys-minor-mode-map (kbd "C-x C-k") 'ido-kill-buffer)
(define-key my-keys-minor-mode-map (kbd "C-x C-l") 'recenter-top-bottom)
;(define-key my-keys-minor-mode-map (kbd "C-x C-;") 'align-regexp)
(define-key my-keys-minor-mode-map (kbd "C-x C-'") 'align-regexp)

(define-key my-keys-minor-mode-map (kbd "C-x C-SPC") 'push-mark-no-activate)
;(define-key my-keys-minor-mode-map (kbd "C-x C-n") 'magit-status)
(define-key my-keys-minor-mode-map (kbd "C-x C-m") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-,") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-.") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-x C-/") 'magit-status)

;;; ************************** Control-C mappings

;;; left hand
;(define-key my-keys-minor-mode-map (kbd "C-c C-q") 'transpose-words)
;(define-key my-keys-minor-mode-map (kbd "C-c C-w") 'ibuffer)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-e") 'ibuffer)
;(define-key my-keys-minor-mode-map (kbd "C-c C-r") 'revert-buffer)
;(define-key my-keys-minor-mode-map (kbd "C-c C-t") 'delete-horizontal-space)

;(define-key my-keys-minor-mode-map (kbd "C-c C-a") 'back-to-indentation) ;
;(define-key my-keys-minor-mode-map (kbd "C-c C-s") 'ido-goto-symbol)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-d") 'ido-goto-symbol)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-f") 'ido-goto-symbol)
;(define-key my-keys-minor-mode-map (kbd "C-c C-g") 'goto-line)

;(define-key my-keys-minor-mode-map (kbd "C-c C-z") 'yank-pop)
;(define-key my-keys-minor-mode-map (kbd "C-c C-x") 'prelude-mark)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'yank-pop) ; exit-emacs
;(define-key my-keys-minor-mode-map (kbd "C-c C-v") 'next-error) ;
;;(define-key my-keys-minor-mode-map (kbd "C-c C-b") 'next-error) ;

;;; right hand
;;(define-key my-keys-minor-mode-map (kbd "C-c C--") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-=") 'magit-status)

;(define-key my-keys-minor-mode-map (kbd "C-c C-y") 'occur)  ; greppish
;(define-key my-keys-minor-mode-map (kbd "C-c C-u") 'multi-occur-in-this-mode)
;(define-key my-keys-minor-mode-map (kbd "C-c C-i") 'indent-region)
;(define-key my-keys-minor-mode-map (kbd "C-c C-o") 'bookmark-set)
;(define-key my-keys-minor-mode-map (kbd "C-c C-p") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-[]") 'bookmark-jump)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-]") 'bookmark-jump)
;(define-key my-keys-minor-mode-map (kbd "C-c C-\\") 'uncomment-lines)

;;(define-key my-keys-minor-mode-map (kbd "C-c C-h") 'evilnc)
;(define-key my-keys-minor-mode-map (kbd "C-c C-j") 'rgrep)
;(define-key my-keys-minor-mode-map (kbd "C-c C-k") 'ido-kill-buffer)
;(define-key my-keys-minor-mode-map (kbd "C-c C-l") 'recenter-top-bottom)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-;") 'align-regexp)
;(define-key my-keys-minor-mode-map (kbd "C-c C-'") 'align-regexp)

;(define-key my-keys-minor-mode-map (kbd "C-c C-SPC") 'push-mark-no-activate)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-n") 'magit-status)
;(define-key my-keys-minor-mode-map (kbd "C-c C-m") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-,") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-.") 'magit-status)
;;(define-key my-keys-minor-mode-map (kbd "C-c C-/") 'magit-status)



;;; number keys
(define-key my-keys-minor-mode-map (kbd "C-1") 'delete-other-windows)
(define-key my-keys-minor-mode-map (kbd "C-2") 'split-window-below)
(define-key my-keys-minor-mode-map (kbd "C-3") 'split-window-right)
(define-key my-keys-minor-mode-map (kbd "C-4") 'backward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-5") 'forward-sexp)
(define-key my-keys-minor-mode-map (kbd "C-6") 'isearch-forward)
(define-key my-keys-minor-mode-map (kbd "C-7") 'isearch-forward-word)
(define-key my-keys-minor-mode-map (kbd "C-8") 'isearch-backward-word)
(define-key my-keys-minor-mode-map (kbd "C-9") 'evilnc-comment-or-uncomment-region)
(define-key my-keys-minor-mode-map (kbd "C-0") 'delete-window)

;;; keys.el ends here
