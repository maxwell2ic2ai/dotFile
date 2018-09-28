(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)



;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete t)
 '(company-show-numbers t)
 '(cua-enable-cua-keys t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(display-line-numbers t)
 '(global-company-mode t)
 '(global-hl-line-mode nil)
 '(global-hungry-delete-mode t)
 '(global-linum-mode nil)
 '(global-whitespace-mode nil)
 '(global-whitespace-newline-mode nil)
 '(indent-tabs-mode nil)
 '(ivy-mode t)
 '(mouse-wheel-progressive-speed nil)
 '(package-selected-packages
   (quote
    (auto-yasnippet which-key iedit smartparens counsel hungry-delete monokai-theme company-anaconda)))
 '(show-paren-mode t)
 '(show-paren-when-point-inside-paren t)
 '(smartparens-global-mode t)
 '(smartparens-global-strict-mode nil)
 '(tab-width 4)
 '(verilog-align-ifelse t)
 '(verilog-auto-indent-on-newline nil)
 '(verilog-highlight-grouping-keywords t)
 '(verilog-highlight-modules t)
 '(verilog-highlight-p1800-keywords t)
 '(verilog-indent-level 4)
 '(verilog-indent-level-behavioral 4)
 '(verilog-indent-level-declaration 4)
 '(verilog-indent-level-module 4)
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(iedit-occurrence ((t (:inherit region))))
 '(line-number-current-line ((t (:inherit default :background "#272822" :foreground "#F8F8F2" :underline t)))))




;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)
;; iedit-mode bind-key
(global-set-key (kbd "M-s e") 'iedit-mode)
