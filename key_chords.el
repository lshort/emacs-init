;;;
;;; code start here:

(require 'key-chord)
(key-chord-mode 1)

;;  q chords
;;
(key-chord-define-global "qy" 'ido-find-file)
(key-chord-define-global "qi" 'split-window-below)
(key-chord-define-global "qo" 'split-window-right)
(key-chord-define-global "qp" 'delete-window)
(key-chord-define-global "q[" 'delete-other-windows)
(key-chord-define-global "q]" 'shrink-window-3-lines) ;; or 33%?

(key-chord-define-global "qh" 'goto-line)
(key-chord-define-global "qj" 'jump-to-register)
(key-chord-define-global "qk" 'point-to-register)
(key-chord-define-global "ql" 'next-buffer)
(key-chord-define-global "q;" 'ido-switch-buffer)
(key-chord-define-global "q'" 'bury-buffer)

(key-chord-define-global "qn" 'recenter-top-bottom)  ;; control-L
;(key-chord-define-global "qm" 'hippie-expand)
;(key-chord-define-global "q," 'revert-buffer)
(key-chord-define-global "q." 'narrow-to-region)
(key-chord-define-global "q/" 'widen)

;;  ; chords
;;
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


;;  all-left-hand chords
;;
;(key-chord-define-global "qw" 'xx)
(key-chord-define-global "we" 'sp-backward-kill-word)
(key-chord-define-global "er" 'sp-kill-word)

(key-chord-define-global "as" 'prelude-move-beginning-of-line)
(key-chord-define-global "sd" 'left-word)
(key-chord-define-global "df" 'right-word)
(key-chord-define-global "fg" 'move-end-of-line)

(key-chord-define-global "xc" 'undo)
;(key-chord-define-global "cv" 'isearch-forward)


;;  all-right-hand chords
;;
(key-chord-define-global "ui" 'xx)
(key-chord-define-global "io" 'sp-backward-kill-word)
(key-chord-define-global "op" 'sp-kill-word)

(key-chord-define-global "hj" 'left-char)
(key-chord-define-global "jk" 'previous-line)
(key-chord-define-global "kl" 'next-line)
(key-chord-define-global "l;" 'right-char)

(key-chord-define-global ",." 'isearch-forward)
(key-chord-define-global "m," 'undo)
(key-chord-define-global ",." 'isearch-forward)


;;
;;; key_chords.el ends here
