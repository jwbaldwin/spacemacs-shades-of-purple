;;; shades-of-purple-theme.el --- an implementation of the awesome Shades of Purple theme for Spacemacs
;; Credit to the original https://github.com/ahmadawais/shades-of-purple-vscode

;; Author: James Baldwin <jwbaldwin3@gmail.com>
;; URL: https://github.com/jwbaldwin/spacemacs-shades-of-purple
;; Version: 1.0
;; Package-Requires: ((cl-lib "0.5"))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(require 'cl-lib)

;;Background 	#2D2B55 #2D2B55
;;Background Dark 	#1E1E3F #1E1E3F
;;Foreground 	#A599E9 #A599E9
;;Hover Background 	#4D21FC #4D21FC
;;Contrast 	#FAD000 #FAD000
;;Contrast Lite 	#FFEE80 #FFEE80
;;Contrast Lite II 	#FAEFA5 #FAEFA5
;;Highlight 	#FF7200 #FF7200
;;Comment 	#B362FF #B362FF
;;Constants 	#FF628C #FF628C
;;Keywords 	#FF9D00 #FF9D00
;;Other 	#9EFFFF #9EFFFF
;;Strings 	#A5FF90 #A5FF90
;;Templates 	#3AD900 #3AD900
;;Definitions 	#FB94FF #FB94FF
;;Invalid 	#EC3A37F5 #EC3A37F5
;;Diff Added 	#00FF009A #00FF009A
;Diff Removed 	#FF000D81 #FF000D81

(deftheme shades-of-purple)
(provide-theme 'shades-of-purple)
(let
  ;; This beautiful palette is shamelessly stolen from chris
  ;; kempson's base16: https://github.com/chriskempson/base16
  ((palette
    '("#ac4142" "#d28445" "#f4bf75" "#90a959"
      "#75b5aa" "#6a9fb5" "#aa759f" "#8f5536"))
   ;; Simple grayscale palette.
   (greys
    '("#222222" "#292929" "#444444" "#555555"
      "#666666" "#777777" "#888888" "#999999")))
  ;; Tiny functions to make getting from the palettes easier.
  (cl-flet
      ((color (n) (nth n palette))
       (grey (n) (nth n greys)))
    ;; Define some faces for our theme.
    (custom-theme-set-faces
     'firebelly
    ;;;; Styling emacs.
     `(default
        ((t (:background ,(grey 0) :foreground ,(grey 7)))))
     `(cursor
       ((t (:background ,(grey 3)))))
     `(highlight
       ((t (:background ,(color 5) :foreground ,(grey 1)))))
     `(shadow
       ((t (:foreground ,(grey 6)))))
     `(isearch
       ((t (:background ,(grey 2) :foreground ,(color 6)))))
     `(query-replace
       ((t (:background ,(grey 2) :foreground ,(color 6)))))
     `(lazy-highlight
       ((t (:background ,(grey 1) :foreground ,(grey 3)))))
     `(minibuffer-prompt
       ((t (:foreground ,(color 1)))))
     `(trailing-whitespace
       ((t (:background ,(grey 1)))))
     `(nobreak-space
       ((t (:background ,(grey 1)))))
     `(escape-glyph
       ((t (:foreground ,(color 2)))))
     ;; Fringes are ugly.
     `(fringe
       ((t (:background ,(grey 0)))))
     ;; Highlight the border.
     `(vertical-border
       ((t (:foreground ,(grey 1)))))
     ;; Mode lines look the same but for the text.
     `(mode-line
       ((t (:background ,(grey 1) :foreground ,(grey 6) :box nil))))
     `(mode-line-inactive
       ((t (:background ,(grey 1) :foreground ,(grey 3) :box nil))))
     `(header-line
       ((t (:background ,(grey 1) :foreground ,(grey 3) :box nil))))
     `(mode-line-buffer-id
       ((t (:bold t))))
     `(mode-line-highlight
       ((t (:foreground ,(grey 7)))))
     ;; Regions are slightly lighter.
     `(region
       ((t (:background ,(grey 1)))))
     `(secondary-selection
       ((t (:background ,(grey 2)))))
    ;;;; Styling code.
     ;; Comments are lighter than their delimiters.
     `(font-lock-comment-face
       ((t (:foreground ,(grey 3)))))
     `(font-lock-comment-delimiter-face
       ((t (:foreground ,(grey 1)))))
     ;; Docstrings are slightly lighter.
     `(font-lock-doc-face
       ((t (:foreground ,(grey 4) :background ,(grey 0)))))
     `(font-lock-function-name-face
       ((t (:foreground ,(color 3)))))
     `(font-lock-variable-name-face
       ((t (:foreground ,(grey 2)))))
     `(font-lock-builtin-face
       ((t (:foreground ,(color 6)))))
     `(font-lock-constant-face
       ((t (:foreground ,(color 1)))))
     `(font-lock-type-face
       ((t (:foreground ,(color 4)))))
     `(font-lock-string-face
       ((t (:foreground ,(color 5) :background ,(grey 1)))))
     `(font-lock-keyword-face
       ((t (:foreground ,(color 6)))))
    ;;;; Styling extensions.
     ;; Erc faces.
     `(erc-notice-face
       ((t (:foreground ,(grey 2)))))
     `(erc-current-nick-face
       ((t (:foreground ,(color 3) :bold t))))
     `(erc-prompt-face
       ((t (:foreground ,(color 1) :background ,(grey 0)))))
     `(erc-input-face
       ((t (:foreground ,(grey 6)))))
     `(erc-my-nick-face
       ((t (:foreground ,(color 1)))))
     `(erc-error-face
       ((t (:foreground ,(color 0)))))
     `(erc-timestamp-face
       ((t (:foreground ,(color 3)))))
     ;; Rainbow delimiters are mostly in order.
     `(rainbow-delimiters-depth-1-face
       ((t (:foreground ,(color 7)))))
     `(rainbow-delimiters-depth-2-face
       ((t (:foreground ,(color 6)))))
     `(rainbow-delimiters-depth-3-face
       ((t (:foreground ,(color 5)))))
     `(rainbow-delimiters-depth-4-face
       ((t (:foreground ,(grey 3)))))
     `(rainbow-delimiters-depth-5-face
       ((t (:foreground ,(color 4)))))
     `(rainbow-delimiters-depth-6-face
       ((t (:foreground ,(color 3)))))
     `(rainbow-delimiters-depth-7-face
       ((t (:foreground ,(color 2)))))
     `(rainbow-delimiters-depth-8-face
       ((t (:foreground ,(color 1)))))
     `(rainbow-delimiters-depth-9-face
       ((t (:foreground ,(color 0)))))
     ;; shm faces
     `(shm-current-face
       ((t (:background ,(grey 1)))))
     `(shm-quarantine-face
       ((t (:foreground ,(color 0) :background ,(grey 1)))))
     ;; linum-relative faces
     `(linum-relative-current-face
       ((t (:background ,(grey 0) :foreground ,(color 1))))))))

;;; shades-of-purple-theme.el ends here
