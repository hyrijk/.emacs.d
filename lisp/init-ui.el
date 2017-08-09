;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)


;; 括号匹配高亮
(show-paren-mode t)
;; 当前行高亮
(global-hl-line-mode t)

;; 启动全屏
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 加载主题
(load-theme 'solarized t)

(provide 'init-ui)
