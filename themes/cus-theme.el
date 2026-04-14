(deftheme cus
  "Custom dark theme")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg          "#101010")
      (fg          "#e0e0e0")
      (cursor      "#ffdd33")
      (keyword     "#ffdd33")
      ;;(type        "#aaaaaa")
      (type        "#ffdd33")
      (comment     "#777777")
      (string      "#9ece6a")
      (constant    "#ff9e64")
      (function    "#7aa2f7")
      (variable    "#c0caf5")
      (builtin     "#ffdd33")

      ;; Dired colors
      ;;(dired-dir   "#7ec0ee")      ; directories (cyan/blue)
      (dired-dir   "#ffdd33")      ; directories
      (dired-exec  "#98c379")      ; executables
      (dired-perm  "#bbbbbb")      ; permissions
      (dired-sym   "#d19a66")      ; symlinks
      (dired-size  "#a0a0a0")
      (dired-date  "#888888")

      ;; Mode-line / status bar
      (mode-bg     "#1c1c1c")
      (mode-fg     "#e0e0e0")
      (mode-inact-bg "#0a0a0a")
      (mode-inact-fg "#666666"))

  (custom-theme-set-faces
   'cus

   ;; Basic faces
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,cursor))))
   `(region ((,class (:background "#3a3a3a"))))
   `(fringe ((,class (:background ,bg))))
   `(vertical-border ((,class (:foreground "#333333"))))

   ;; Font-lock (syntax highlighting)
   `(font-lock-keyword-face ((,class (:foreground ,keyword :weight bold))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-builtin-face ((,class (:foreground "#bb9af7"))))
   ;;`(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-function-name-face ((,class (:foreground ,fg))))
   ;;`(font-lock-variable-name-face ((,class (:foreground ,variable))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   ;;`(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-constant-face ((,class (:foreground ,fg))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-doc-face ((,class (:foreground "#8a8a8a"))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,dired-dir :weight bold))))
   `(dired-flagged ((,class (:foreground "#ff6666" :weight bold))))
   `(dired-marked ((,class (:foreground "#ffdd33" :weight bold))))
   `(dired-perm ((,class (:foreground ,dired-perm))))
   `(dired-symlink ((,class (:foreground ,dired-sym))))
   `(dired-header ((,class (:foreground "#7ec0ee" :weight bold :underline t))))

   ;; Additional dired faces (common in dired+ / modern setups)
   `(dired-executable ((,class (:foreground ,dired-exec))))
   `(dired-ignored ((,class (:foreground "#666666"))))
   `(dired-subtree ((,class (:inherit dired-directory))))  ; if using dired-subtree

   ;; Minibuffer / find-file fixes
   `(minibuffer-prompt ((,class (:foreground ,fg :weight normal))))
   `(icomplete-first-match ((,class (:foreground ,keyword :weight bold))))   ; main match
   `(icomplete-selected-match ((,class (:foreground ,keyword :weight bold))))
   `(ido-first-match ((,class (:foreground ,keyword :weight bold))))
   `(ido-only-match ((,class (:foreground ,keyword :weight bold))))         ; fixes the green "only option"
   `(ido-subdir ((,class (:foreground ,dired-dir :weight bold))))           ; directories in find-file/ido

   ;; Fallback for built-in completion (Emacs 27+ / 28+)
   `(completions-first-match ((,class (:foreground ,keyword :weight bold))))
   `(completions-highlight ((,class (:foreground ,keyword :weight bold))))

   ;; Mode-line
   `(mode-line ((,class (:background ,mode-bg :foreground ,mode-fg
                                     :box (:line-width 1 :color "#333333")))))
   `(mode-line-inactive ((,class (:background ,mode-inact-bg :foreground ,mode-inact-fg
                                              :box (:line-width 1 :color "#222222")))))
   `(mode-line-buffer-id ((,class (:foreground ,keyword :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,keyword))))

   ;; Other useful faces
   `(minibuffer-prompt ((,class (:foreground "#7ec0ee" :weight bold))))
   `(isearch ((,class (:background ,keyword :foreground "#101010"))))
   `(lazy-highlight ((,class (:background "#3a3a3a"))))
   `(hl-line ((,class (:background "#1a1a1a"))))
   `(show-paren-match ((,class (:background "#3a3a3a" :weight bold))))
   `(link ((,class (:foreground "#7ec0ee" :underline t))))
   `(shadow ((,class (:foreground "#666666"))))
   )

  ;; You can add more faces here if needed (org, magit, etc.)
  )

(provide-theme 'cus)
