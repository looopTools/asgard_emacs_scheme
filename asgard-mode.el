;; classes of keyword
(setq asgard-keywords '("all" "and" "else" "end" "for" "def" "if" "match" "realm" "bifrost" "return" "when" "with" "false" "true" "struct"))
(setq asgard-types '("bool" "int" "float" "type" "string" "void" "double"))


;; create the regex string for each class of keywords
(setq asgard-keywords-regexp (regexp-opt asgard-keywords 'words))
(setq asgard-types-regexp (regexp-opt asgard-types 'words))

;; clear memory
(setq asgard-keywords nil)
(setq asgard-types nil)

;; create the list for font-lock
;; each class of keyword is given a particular face
(setq asgard-font-lock-keywords
      `(
        (,asgard-types-regexp . font-lock-type-face)
        (,asgard-keywords-regexp . font-lock-keyword-face)
       )
)

;; define the mode
(define-derived-mode asgard-mode fundamental-mode
  "lsl mode"
  "Major mode for editing LSL (Linden Scripting Language)…"
  ;; code syntax highlighting
  (setq font-lock-defaults '((asgard-font-lock-keywords)))
  ;; clear memory
  (setq asgard-keywords-regexp nil)
  (setq asgard-types-regexp nil)
)

(provide 'asgard-mode)
