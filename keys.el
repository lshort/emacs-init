;(global-set-key (kbd "<escape>") 'god-local-mode)
(global-set-key (kbd "<escape>") 'god-mode-all)

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-h") 'jump-to-register)
(global-set-key (kbd "M-j") 'point-to-register)

(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key [f1] 'start-kbd-macro)
(global-set-key [f2] 'kbd-macro-query)
(global-set-key [f3] 'kmacro-set-counter)
(global-set-key [f4] 'kmacro-insert-counter)
(global-set-key [f5] 'end-kbd-macro)
(global-set-key [f6] 'name-last-kbd-macro)
(global-set-key [f7] 'call-last-kbd-macro)
(global-set-key [f8] 'call-ten-macros)
(global-set-key [f9] 'exit-recursive-edit)
(global-set-key [f10] 'apropos)
(global-set-key [f11] 'describe-key)
(global-set-key [f12] 'eval-defun) ;evals crnt sexp

(global-set-key (kbd "C-c C-c") 'execute-extended-command)
(global-set-key (kbd "C-x C-d") 'bury-buffer)
(global-set-key (kbd "C-o") 'undo)
(global-set-key (kbd "C-,") 'copy-to-register)
(global-set-key (kbd "C-.") 'insert-register)
(global-set-key (kbd "C-'") 'kill-ring-save)
(global-set-key (kbd "C-;") 'delete-horizontal-space)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

;(global-set-key (kbd "C-c c") 'org-capture)
;(global-set-key (kbd "C-c C-c") 'org-capture-finalize)
;(global-set-key (kbd "C-c c") 'org-capture-refile)
;(global-set-key (kbd "C-c c") 'org-capture-kill)


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
(global-set-key (kbd "C-q") 'undo)
(global-set-key (kbd "C-w") 'sp-backward-kill-word)
(global-set-key (kbd "C-e") 'sp-kill-word)
(global-set-key (kbd "C-r") 'sp-delete-char)
(global-set-key (kbd "C-t") 'kill-line)


(global-set-key (kbd "C-a") 'prelude-move-beginning-of-line)
(global-set-key (kbd "C-s") 'left-word)
(global-set-key (kbd "C-d") 'right-word)
(global-set-key (kbd "C-f") 'move-end-of-line)
;(global-set-key (kbd "C-g") ')

(global-set-key (kbd "C-z") 'yank)
;(global-set-key (kbd "C-x") ') ;reserved as prefix command
;(global-set-key (kbd "C-c") ') ;reserved as prefix command
(global-set-key (kbd "C-v") 'kill-ring-save) ; copy
(global-set-key (kbd "C-b") 'kill-region) ' cut

;;; right hand
(global-set-key (kbd "C--") 'ido-find-file)
(global-set-key (kbd "C-=") 'save-some-buffers)

(global-set-key (kbd "C-y") 'point-to-register)
(global-set-key (kbd "C-u") 'jump-to-register)
;(global-set-key (kbd "C-i") ')  ; TAB key
(global-set-key (kbd "C-o") 'copy-to-register)
(global-set-key (kbd "C-p") 'insert-register)
;(global-set-key (kbd "C-[]") ')  ; ESCAPE key
(global-set-key (kbd "C-]") 'query-replace)
(global-set-key (kbd "C-\\") 'replace-string)

(global-set-key (kbd "C-h") 'prelude-exchange-point-and-mark)
(global-set-key (kbd "C-j") 'next-line)
(global-set-key (kbd "C-k") 'previous-line)
(global-set-key (kbd "C-l") 'recenter-top-bottom)
(global-set-key (kbd "C-;") 'ace-jump-mode)
(global-set-key (kbd "C-'") 'ace-jump-line-mode)

(global-set-key (kbd "C-n") 'other-window)
;(global-set-key (kbd "C-m") 'hippie-expand) ; RETURN key
(global-set-key (kbd "C-,") 'ido-switch-buffer)
(global-set-key (kbd "C-.") 'bury-buffer)
(global-set-key (kbd "C-/") 'string-rectangle)

;;; number keys
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below)
(global-set-key (kbd "C-3") 'split-window-right)
;(global-set-key (kbd "C-4") 'delete-other-windows)
;(global-set-key (kbd "C-5") 'delete-other-windows)
;(global-set-key (kbd "C-6") 'delete-other-windows)
;(global-set-key (kbd "C-7") 'delete-other-windows)
;(global-set-key (kbd "C-8") 'delete-other-windows)
;(global-set-key (kbd "C-9") 'delete-other-windows)
(global-set-key (kbd "C-1") 'delete-window)
