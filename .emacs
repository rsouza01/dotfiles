;;Add UTF-8 as alias
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(define-coding-system-alias 'UTF-8 'utf-8)

;;Disables toolbar
;;(tool-bar-mode -1) 

;;Disables scroll
(toggle-scroll-bar -1) 

(add-hook 'window-setup-hook 'delete-other-windows)


;; Sets Ctrl+c Ctrl+d for duplicate line
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

;; Highlights current line
(global-hl-line-mode +1)
(set-face-background hl-line-face "#333964")

;; Text to scroll one line
(setq scroll-conservatively 10000)

;; Prevent Emacs from making backup files
(setq make-backup-files nil) 

;; Sets the shape of the cursor.
(setq-default cursor-type '(bar . 2)) 
(set-cursor-color "#ffff00") 


;; ========== Enable Line and Column Numbering ==========
;; Show line-number in the mode line
(line-number-mode 1)
(global-linum-mode t)

;; Show column-number in the mode line
(column-number-mode 1)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(require 'iso-transl)

;;Fonts
(set-default-font "Inconsolata 15")


;;GNUPLOT Major mode. (http://mkmcc.github.io/software/gnuplot-mode.html)
;; make sure file is visible to emacs (if needed)
(add-to-list 'load-path "~/.emacs.d/")
(load "gnuplot-mode.el")
    
;; load the file
(require 'gnuplot-mode)
    
;; specify the gnuplot executable (if other than /usr/bin/gnuplot)
(setq gnuplot-program "/usr/bin/gnuplot")
    
;; automatically open files ending with .gp or .gnuplot in gnuplot mode
(setq auto-mode-alist 
(append '(("\\.\\(gp\\|gnuplot\\|plt\\)$" . gnuplot-mode)) auto-mode-alist))

;; enable delete-selection mode.
(delete-selection-mode 1)

;; Break the line without break the word
(global-visual-line-mode t)


;;Ruler mode
(add-hook 'window-configuration-change-hook (lambda () (ruler-mode 1)))

;;Turn on bracket match highlight
(show-paren-mode 1) 

;;Keep a list of recently opened files
(recentf-mode 1)

(column-number-mode 1)

;; Init maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


;;Minimap
(minimap-mode 1)
(add-to-list 'minimap-major-modes 'latex-mode)


;; AUCTEX
(setq-default TeX-master nil) ; Query for master file.
'(TeX-PDF-mode t) 


(setq TeX-auto-save t)
(setq TeX-parse-self t)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(setq ispell-dictionary "portugues")    ;set the default dictionary
(add-hook 'LaTeX-mode-hook 'ispell)   ;start ispell

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)


;;Default sizes
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80)) 
