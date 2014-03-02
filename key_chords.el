;;;
;;; code start here:

(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "qy" 'ido-find-file)
(key-chord-define-global "qi" 'split-window-below)
(key-chord-define-global "qo" 'split-window-right)
(key-chord-define-global "qp" 'delete-window)
(key-chord-define-global "q]" 'delete-other-windows)
(key-chord-define-global "q]" 'shrink-window-3-lines) ;; or 33%?

(key-chord-define-global "qh" 'goto-line)
(key-chord-define-global "qj" 'jump-to-register)
(key-chord-define-global "qk" 'point-to-register)
(key-chord-define-global "ql" 'next-buffer)
(key-chord-define-global "q;" 'ido-switch-buffer)
(key-chord-define-global "q'" 'bury-buffer)

(key-chord-define-global "qn" 'recenter-top-bottom)  ;; control-L
;(key-chord-define-global "qm" 'hippie-expand)
(key-chord-define-global "q," 'revert-buffer)
(key-chord-define-global "q." 'narrow-to-region)
(key-chord-define-global "q/" 'widen)

(key-chord-define-global ";q" 'kill-region)
(key-chord-define-global ";w" 'kill-ring-save)
(key-chord-define-global ";e" 'yank)
(key-chord-define-global ";r" 'prelude-move-beginning-of-line)
(key-chord-define-global ";t" 'move-end-of-line)

(key-chord-define-global ";a" 'next-window)
(key-chord-define-global ";s" 'ace-jump-mode)
(key-chord-define-global ";d" 'ace-jump-line-mode)
(key-chord-define-global ";f" 'set-mark)
(key-chord-define-global ";g" 'prelude-exchange-point-and-mark)

(key-chord-define-global ";z" 'save-some-buffers)
(key-chord-define-global ";x" 'execute-extended-command)
(key-chord-define-global ";c" 'isearch-backward)
(key-chord-define-global ";v" 'isearch-forward)
;(key-chord-define-global ";b" ')

;;
;;; init.el ends here
