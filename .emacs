;;
;;

(setq-default indent-tabs-mode nil)

(setq inhibit-startup-message t
  inhibit-startup-echo-area-message t)

;(add-to-list 'load-path "/home/los/Downloads/ecb-2.40")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/semantic")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/common")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/cogre")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/contrib")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/ede")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/speedbar")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/srecode")
(add-to-list 'load-path "/home/los/Downloads/cedet-1.0/tests")
(add-to-list 'load-path "/home/los/ghc-mod-elisp")

(add-to-list 'exec-path "/home/los/.cabal/bin")

(require 'eieio)
(require 'cedet)
;(require 'ecb)

(load "~/Downloads/haskell-mode-2.8.0/haskell-site-file")


;(add-to-list 'load-path "~/Downloads/chrisdone-shime-9eca3bc")
;(require 'shime)
;(define-key haskell-mode-map [f5] 'shime-load-file)
;(define-key haskell-mode-map (kbd "C-c C-c") 'shime-cabal-build)
;(define-key haskell-mode-map (kbd "C-c c") 'shime-cabal-ido)
;(custom-set-variables
;   '(shime-default-ghci-path "/usr/bin/ghci")
;   '(shime-default-session-name "shime"))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(put 'narrow-to-region 'disabled nil)
;(setq load-home-init-file t) ; don't load init file from ~/.xemacs/init.el
(load-file "~/.emacs.d/init.el")
(tool-bar-mode 1)
