(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; 包管理
(require 'cl)

(defvar peiming/packages '(
			   company
			   solarized-theme
			   color-theme-solarized
			   hungry-delete
			   smex
			   swiper
			   counsel
			   smartparens
			   js2-mode
			   nodejs-repl
			   exec-path-from-shell
			   popwin
			   molokai-theme
			   ) "Default packages")
(setq package-selected-packages peiming/packages)

(defun peiming/packages-installed-p ()
  (loop for pkg in peiming/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (peiming/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg peiming/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(require 'popwin)
(popwin-mode 1)

;; company mode
(global-company-mode 1)

;; 包配置
(require 'hungry-delete)
(global-hungry-delete-mode)

;; 括号补全
(require 'smartparens-config)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
;; nodejs-repl
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



(provide 'init-packages)
