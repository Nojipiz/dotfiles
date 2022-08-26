(setq user-full-name "Orlando Vargas"
      user-mail-address "nojipiz@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Fira Code" :size 17 :weight 'semi-light))
(setq doom-theme 'doom-one)

;; Making Doing Emacs Faster
(setq display-line-numbers-type nil)
(setq gc-cons-threshold 800000000)
(setq read-process-output-max (* 4096 1024))
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Movements Elements
(map! :leader
      :desc "Open Neotree"
      "e" #'neotree-toggle)
(setq-default evil-escape-key-sequence "ii")

;; Window Movement
(map! "C-h" #'evil-window-left)
(map! "C-l" #'evil-window-right)
(map! "C-j" #'evil-window-bottom)
(map! "C-k" #'evil-window-top)

;; Buffer Manipulation
(map! :leader
      :desc "Save File"
      "w" #'save-buffer)
(map! :leader
      :desc "Close Buffer"
      "c" #'evil-delete-buffer)
(map! :leader
      :desc "Close Window"
      "q" #'evil-window-delete)

;; LSP
(map! :leader
      (:prefix ("l" . "Lsp Actions")
      :desc "Code action"
      "a" #'lsp-execute-code-action
      :desc "Get documentation"
      "d" #'+lookup/documentation
      :desc "List errors"
      "q" #'consult-lsp-diagnostics
      :desc "Rename"
      "r" #'lsp-rename))
(map! :leader
      :desc "Comment Line"
      "/" #'comment-line)



;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
