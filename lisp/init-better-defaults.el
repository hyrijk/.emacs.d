;; 不要生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)
;; 自动加载外部修改过的文件
(global-auto-revert-mode t)

;; 删除选中
(delete-selection-mode t)

;; 关闭提示音
(setq ring-bell-function 'ignore)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-defaults)
