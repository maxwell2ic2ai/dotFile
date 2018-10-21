;; line number
;; (global-linum-mode t)

;; occur-dwim
;; (global-set-key (kbd "M-s o") 'occur-dwim)
;;(evilified-state-evilify-map occur-mode-map
;;  :mode occur-mode)

(setq-default dotspacemacs-configuration-layers
              '((syntax-checking :variables flycheck-global-modes t)))

(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-enable-snippets-in-popup t)))

(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-enable-sort-by-usage t)))

(setq-default dotspacemacs-configuration-layers
              '((c-c++ :variables c-c++-enable-clang-support t)))

;; Bind clang-format-region to C-M-tab in all modes:
(global-set-key [C-M-tab] 'clang-format-region)
;; Bind clang-format-buffer to tab on the c++-mode only:
(add-hook 'c++-mode-hook 'clang-format-bindings)
(defun clang-format-bindings ()
  (define-key c++-mode-map [tab] 'clang-format-buffer))

;; auto format python
(setq-default dotspacemacs-configuration-layers '(
                                                  (python :variables python-enable-yapf-format-on-save t)))

