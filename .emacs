;;; emacs命令

;; C-h C-h 调出帮助的帮助
;; C-h b 显示绑定的键值
;; C-h m 显示当前文档模式的帮助
;; C-h i 调出已安装的info文件
;; C-u C-h i 打开指定的info文件

;; C-x = 显示当前光标下字符描述
;; C-u C-x = 显示当前光标下字符的详细描述

;; C-u ARG CMD 重复CMD操作ARG次或将ARG参数传递给CMD
;; C-x z 重复执行前一命令

;; C-x 0 隐藏当前分割窗口
;; C-x 1 只显示当前窗口
;; C-x 2 横向分割显示当前buffer
;; C-x 3 纵向分割显示当前buffer
;; C-x 4 0 关闭当前窗口并kill buffer
;; C-x 4 b 在横向分割窗口中显示buffer
;; C-x 4 C-o 同上，但光标仍在当前窗口
;; C-8 C-x ^ 窗口扩大8行
;; C-x + 将窗口重新等分
;; C-M-v 向下翻页另一个窗口内容
;; C-M-V 向上翻页另一个窗口内容

;; C-x C-b 显示buffer列表(d-删除 x-执行 o-打开)
;; C-x b   切换buffer

;; compilation 次模式
;; M-n 在compilation次模式的buffer中移动到下一条记录位置
;; M-p 在compilation次模式的buffer中移动到上一条记录位置
;; M-} 在compilation次模式的buffer中移动到下一文件位置
;; M-{ 在compilation次模式的buffer中移动到上一文件位置
;; M-g M-n 或 M-g n 在任意buffer中跳转到下一记录对应位置
;; M-g M-p 或 M-g p 在任意buffer中跳转到上一记录对应位置

;; C-x C-= 进入字体缩放模式
;; C-x C-+ 字体放大
;; C-x C-- 字体缩小

;; C-s 或 C-r 进入isearch搜索模式(向后或向前搜索)
;; C-w 在isearch模式下搜索当前光标下内容
;; M-s e 在isearch模式下编辑搜索词
;; M-s c 在isearch模式下区分大小写开关
;; M-s r 在isearch模式下正则表达式模式开关
;; M-s w 在isearch模式下整个词搜索开关
;; M-s _ 在isearch模式下符号搜索开关
;; M-% 替换
;; C-M-s 或 C-M-r 进入正则isearch搜索模式(向后或向前搜索)
;; C-M-% 正则替换
;; M-n, M-p 在isearch模式下调出查询历史记录

;; C-x h 全选内容
;; C-SPC 移动光标设置选取内容
;; C-w 剪切选取内容
;; M-w 拷贝选取内容
;; C-y 粘贴选取内容
;; M-y 粘贴操作后选取多次之前拷贝(剪切)的内容

;; C-k 删除到行尾
;; C-0 C-k 或 C-u 0 C-k 删除到行首

;; C-SPC 设置mark
;; C-u C-SPC 回到上一mark处

;; C-x SPC 进入块选择模式
;; C-x r t 插入一列字符
;; C-x r k 选择块后删除数列字符
;; C-x r M-w 拷贝选择的块
;; C-x r y 粘贴拷贝的块

;; C-x r m 设置书签
;; C-x r b 跳到书签
;; C-x r l 编辑书签列表

;; C-t 将当前字与后面字对调
;; M-t 将当前词与后面词对调
;; C-x C-t 将当前行与上行对调

;; M-x compile <RET> etags *.el <RET>
;; M-x visit-tags-table
;; M-. 跳转到定义处
;; M-* 返回到跳转处

;; C-x e 运行前一lisp表达式
;; M-:   运行lisp表达式

;; M-m 光标移到行首第一个字符处

;; M-x desktop-save 保存当前会话
;; M-x desktop-read 恢复当前会话

;; C-M-\ 排版选定区域的缩进(indent-region)

;;; 本文中自定义的快捷键

;;;; tabbar的快捷操作 ;;;;;;;;;
;; M-j 进入tabbar中前一窗口
;; M-k 进入tabbar中后一窗口
;; M-J 进入tabbar中前一窗口分组
;; M-K 进入tabbar中后一窗口分组
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; M-N 进入前一编辑窗口
;; M-P 返回后一编辑窗口

;; C-c C-f 打开当前光标下文件
;; C-c g 调用pt-regexp-0搜索，带前缀参数是pt-regexp-file-pattern-0搜索
;; C-c C-g 调用pt-regexp递归搜索，带前缀参数是pt-regexp-file-pattern递归搜索
;;;;C-c g 调用lgrep搜索，带前缀参数是rgrep搜索

;; C-c C-SPC 回退到上次跳转的标记处

;; M-<tab> 或 C-<tab> 跳出company补全提示
;; C-c d 调出bing字典
;; C-c o 调出osx字典

;;;; 用我修改的annotate-mode ;;
;; C-c a a 写注释
;; C-c a s 保存注释
;; C-c a [ 前一注释
;; C-c a ] 后一注释
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; M-; lisp相关模式下自动添加注释
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)

;;; 设置应用包下载服务器
;; M-x list-packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;;; 优先使用utf-8
(prefer-coding-system 'utf-8) ;'gbk)
(setq default-buffer-file-coding-system 'utf-8) ;'gbk)

;; 禁止行结束符转换
;;(setq inhibit-eol-conversion t)
;;(defun remove-dos-eol ()
;;  "Do not show ^M in files containing mixed UNIX and DOS line endings."
;;  (interactive)
;;  (setq buffer-display-table (make-display-table))
;;  (aset buffer-display-table ?\^M []))
;;(add-hook 'text-mode-hook 'remove-dos-eol)
;;(add-hook 'prog-mode-hook 'remove-dos-eol)

;;; 字体与颜色主题设置
;; 字体设置
(defun my-font ()
  ;;英文字体
  ;;https://github.com/vjpr/monaco-bold
  (set-face-attribute
   'default nil :font "monacob 18")
  ;;中文字体
  (set-fontset-font (frame-parameter nil 'font)
                    'han (font-spec :family "Noto Sans CJK SC" :size 22)))

(defun my-font-win ()
  (set-face-attribute
   'default nil :font "Consolas" :height 140);"MonacoBXisBB" :height 150)
  (set-fontset-font nil
                    'han (font-spec :family "Noto Sans Mono CJK SC Regular"))
  (setq face-font-rescale-alist '(("Noto Sans Mono CJK SC Regular" . 1.1)))
  (setq-default line-spacing 2))

;; 颜色设置
(defun my-color ()
  (load-theme 'deeper-blue t))

;; M-x package-install color-theme
;; http://jblevins.org/git/misc.git/plain/color-theme-less.el
(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-20080305.34/")

(defun my-color2 ()
  (require 'color-theme-less)
  (color-theme-initialize)
  (color-theme-less))

(defun my-color3 ()
  (require 'color-theme)
  (color-theme-initialize)
  (color-theme-blue-mood))

;; 只在图形界面下修改字体和颜色, 否则控制台下报错
(if (display-graphic-p)
    (progn
      (if (eq system-type 'windows-nt)
          (progn
            (my-font-win))
        (my-font)
        (setq line-spacing 0.1))
      (my-color3)))

(global-set-key (kbd "C-x C-k") 'kill-buffer)

;;; 关闭欢迎页
(setq inhibit-startup-message t)

;;; 设置窗口大小
(if (display-graphic-p)
    (progn
      ;(set-frame-width (selected-frame) 80)
      (set-frame-height (selected-frame) 26)
      (fringe-mode 0)
      (scroll-bar-mode 0)
      (tool-bar-mode 0)))

(require 'misc)
(global-set-key (kbd "M-f") (quote forward-to-word))
;;(global-set-key (kbd "M-b") (quote backward-to-word))

;;; 设置几个窗口控制栏
(add-to-list 'load-path "~/.emacs.d/bars")

;;tabbar.el
;;http://www.emacswiki.org/emacs/download/tabbar.el
(require 'tabbar)

(tabbar-mode 1)

(global-set-key (kbd "M-j") 'tabbar-backward)
(global-set-key (kbd "M-k") 'tabbar-forward)
(global-set-key (kbd "M-J") 'tabbar-backward-group)
(global-set-key (kbd "M-K") 'tabbar-backward-group)

(global-set-key (kbd "M-N") 'next-buffer)
(global-set-key (kbd "M-P") 'previous-buffer)

;; close default tabs，and move all files into one group
(require 'cl)

(setq tabbar-buffer-list-function
      (lambda ()
        (remove-if
         (lambda(buffer)
           ;;(find (aref (buffer-name buffer) 0) " *"))
           (string-match "^\\( .*\\)\\|OmniServer$" (buffer-name buffer)))
         (buffer-list))))

(setq tabbar-buffer-groups-function
      (lambda()
        (if (find (aref (buffer-name) 0) " *")
            '("Common")
          '("All"))))

(set-face-attribute 'tabbar-default nil
                    :family "MonacoB2"
                    :background "gray80"
                    :foreground "gray30"
                    :height 0.9)

;;; 高亮显示配对符号
(show-paren-mode 1)

;;; 自动插入配对括弧的符号
(electric-pair-mode 1)

;;; 自动缩进
(electric-indent-mode 1)

;;; 全局使用company自动补全
;;M-x package-install company
(add-hook 'after-init-hook 'global-company-mode)
(if (eq system-type 'windows-nt)
    (global-set-key (kbd "C-<tab>") 'company-complete-common)
  (global-set-key (kbd "M-<tab>") 'company-complete-common))

(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case nil)

;;; company fuzzy match
;; M-x package-install company-flx
(with-eval-after-load 'company
  (company-flx-mode +1))

;; lisp
(defun my-find-definition ()
  (interactive)
  (cond
   ((equal (variable-at-point) 0) (call-interactively 'find-function))
   (t (call-interactively 'find-variable))))

(defun my-lisp-def-jump ()
  (interactive)
  (let* ((type (if (equal (variable-at-point) 0)
                  nil
                 'defvar))
         (symbol (cond ((null type) (function-called-at-point))
                      ((eq type 'defvar) (variable-at-point))
                      (t (variable-at-point t))))
         (buffer-point (save-excursion
                         (find-definition-noselect symbol type)))
         (new-buf (car buffer-point))
         (new-point (cdr buffer-point)))
    (if buffer-point
        (progn
          (push-mark)
          (ring-insert find-tag-marker-ring (point-marker))
          (switch-to-buffer new-buf)
          (when new-point (goto-char new-point)))
      (error "Can't find symbol: %s" symbol))))

(defun my-lisp-describe ()
  (interactive)
  (message (format-message "%s" (elisp-eldoc-documentation-function))))

;; golang
;;M-x package-install go-mode
;;go get -u github.com/rogpeppe/godef
;;cd go/src
;;git clone https://github.com/golang/tools.git golang.org/x/tools
;;go get golang.org/x/tools/cmd/godoc

;;go get -u github.com/zmb3/gogetdoc
;;go get -u github.com/JohnWall2016/gogetdoc
;;go get -u github.com/JohnWall2016/gogetdef
(require 'gogetdef "~/.emacs.d/gogetdef.el")

;;M-x package-install company-go
;;go get -u github.com/nsf/gocode

(defun my-godoc (arg)
  (interactive "P")
  (if arg
      (progn
        (setcar arg 0)
        (call-interactively 'godoc))
    (call-interactively 'godoc-at-point)))

(setq godoc-at-point-function 'gogetdef-all);'godoc-gogetdoc)

(when (eq system-type 'darwin)
  (let* ((gopath "/Users/wangjiong/Development/go")
         (goroot "/Users/wangjiong/Development/gosrc/go1.10")
         (mysql "/usr/local/mysql"))
    (setenv "PATH" (concat (getenv "PATH")
                           ":" "/usr/local/bin"
                           ":" gopath "/bin"
                           ":" goroot "/bin"
                           ":" mysql "/bin"))
    (add-to-list 'exec-path "/usr/local/bin" t)
    (add-to-list 'exec-path (concat gopath "/bin") t)
    (add-to-list 'exec-path (concat goroot "/bin") t)
    (add-to-list 'exec-path (concat mysql "/bin") t)
    (setenv "GOPATH" gopath)
    (setenv "GOROOT" goroot)))

;;M-x package-install ggtags-mode
(add-hook 'prog-mode-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'ruby-mode)
              (ggtags-mode 1)
              ;;(eldoc-mode 1)
              (setq eldoc-documentation-function nil)
              (setq-local company-backends
                          '(company-gtags company-files company-dabbrev-code
                                          company-dabbrev company-capf)))
            (when (derived-mode-p 'go-mode)
              (setq-local company-backends
                          '(company-go company-files company-dabbrev-code
                                       company-dabbrev company-capf))
              (define-key go-mode-map (kbd "M-.") 'gogetdef-jump);'gogetdoc-jump);'godef-jump)
              (define-key go-mode-map (kbd "C-.") 'gogetdef-describe);'gogetdoc-describe);'godef-describe)
              (define-key go-mode-map (kbd "C-c C-d") 'my-godoc))
            (when (derived-mode-p 'lisp-mode 'emacs-lisp-mode)
              (define-key lisp-mode-shared-map (kbd "M-.") 'my-lisp-def-jump)
              (define-key lisp-mode-shared-map (kbd "C-.") 'my-lisp-describe)
              (define-key lisp-mode-shared-map (kbd "C-c C-d") 'describe-symbol))))

;; latex
;; M-x package-install auctex
(add-hook 'text-mode-hook
          (lambda ()
            (when (derived-mode-p 'tex-mode)
              (setq-local company-backends
                    '((company-capf company-dabbrev-code
                                    ;;company-dabbrev
                                    ))))))

(when (not (eq system-type 'windows-nt))
  (let* ((latex  "/Library/TeX/texbin"))
    (setenv "PATH" (concat (getenv "PATH") ":" latex))
    (add-to-list 'exec-path latex t)))

;; omnisharp
; M-x package-install omnisharp
; M-x omnisharp-install-server
(defun enable-omnisharp-environment ()
  (interactive)

  (setq auto-mode-alist
        (append '(("\\.csx$" . csharp-mode))
                '(("\\.cake$" . csharp-mode))
                auto-mode-alist))

  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  (add-hook 'csharp-mode-hook 'flycheck-mode)

  (defun inside-enum-p (pos)
    (ignore-errors
      (save-excursion
        (goto-char pos)
        (looking-at
         (concat
          "\\("
          "\\(?:"
          "public\\(?: static\\)?\\|"                  ;; 1. access modifier
          "private\\(?: static\\)?\\|"
          "protected\\(?: internal\\)?\\(?: static\\)?\\|"
          "static\\|"
          "\\)"
          "[ \t]+"
          "\\)?"
          "enum[ \t]+")))))

  (defun my-brace-list-open (langelem)
    (if (or (inside-enum-p (c-langelem-pos langelem))
            (inside-statement-new-brace-p (c-langelem-pos langelem)))
        0
      '-)) ;;'+

  ;; [[ID.]*ID ]?ID =[>] new [ID.]*ID[<.*>]?.*
  ;; {}
  (defun inside-statement-new-brace-p (pos)
    (ignore-errors
      (save-excursion
        (goto-char pos)
        (looking-at
         (concat
          "\\([[:alpha:]_][[:alnum:]_<,>\\.]*[ \t]+\\)*?"
          "\\([[:alpha:]_][[:alnum:]_]*\\)"
          "[ \t]*=>?[ \t]*"
          "new[ \t]+\\([[:alpha:]_][[:alnum:]_<,>\\.]*\\)")))))

  ;; =
  (defun end-with-equal-p (pos)
    (ignore-errors
      (save-excursion
        (goto-char pos)
        (looking-at
         (concat
          "\\([][[:alnum:]_<>()\\.:+=, \t]*\\)?"
          "=[ \t]*$")))))

  ;; =>
  (defun end-with-fat-arrow-p (pos)
    (ignore-errors
      (save-excursion
        (goto-char pos)
        (looking-at
         (concat
          "\\([][[:alnum:]_<>()\\.:+=, \t]*\\)?"
          "=>[ \t]*$")))))

  (defun my-statement-cont (langelem)
    (let ((pos (c-langelem-pos langelem)))
      (if (inside-statement-new-brace-p pos)
          0
        (if (end-with-equal-p pos)
            0
          '+))))
    
  ;; : [ID,]*new()
  (defun inside-interface-new-brace-p(pos)
    (ignore-errors
      (save-excursion
        (goto-char pos)
        (looking-at
         (concat
          "\\("
          "\\(?:"
          "public\\(?: static\\)?\\|"                  ;; 1. access modifier
          "private\\(?: static\\)?\\|"
          "protected\\(?: internal\\)?\\(?: static\\)?\\|"
          "static\\|"
          "\\)"
          "[ \t]+"
          "\\)?"
          "class[ \t]+\\([[:alpha:]_][[:alnum:]_<>\\.]*\\)"
          "[ \t]*"
          "\\([[:alnum:]_<>\\.:, \t]*\\)?"
          "new()[ \t]*$"
          )))))

  ;; fixing where T : new()
  ;;    {}
  (defun my-class-open (langelem)
    (if (inside-interface-new-brace-p (c-langelem-pos langelem))
        '-
      0))

  (defun my-arglist-close (langelem)
    (if (end-with-fat-arrow-p (c-langelem-pos langelem))
        0
      (c-lineup-arglist langelem)))
  
  (defun fix-c-offsets ()
    (add-to-list 'c-offsets-alist '(topmost-intro-cont . 0))
    (add-to-list 'c-offsets-alist '(brace-list-open    . my-brace-list-open))
    (add-to-list 'c-offsets-alist '(statement-cont     . my-statement-cont))
    (add-to-list 'c-offsets-alist '(class-open         . my-class-open))
    (add-to-list 'c-offsets-alist '(arglist-close      . my-arglist-close))
    (add-to-list 'c-offsets-alist '(arglist-intro      . +)))

  (add-hook 'csharp-mode-hook 'fix-c-offsets)

  (eval-after-load
      'company
    '(add-to-list 'company-backends 'company-omnisharp))

  (when (eq system-type 'darwin)
    (let ((mono "/Library/Frameworks/Mono.framework/Versions/Current/Commands")
          (dotnet "/usr/local/share/dotnet")
          (dotnet-tools "~/.dotnet/tools"))
      (setenv "PATH" (concat (getenv "PATH") ":" mono ":" dotnet ":" dotnet-tools))
      (add-to-list 'exec-path mono t)
      (add-to-list 'exec-path dotnet t)
      (add-to-list 'exec-path dotnet-tools t)))

  (setq omnisharp-eldoc-support nil)
  (setq omnisharp-company-match-type 'company-match-server) ; fuzzy match
  ;;(when (eq system-type 'darwin)
  ;;    (setq omnisharp-server-executable-path "/Users/wangjiong/Development/dotnet/omnisharp-roslyn/artifacts/scripts/OmniSharp.Stdio"))

  (require 'cl-lib)
  (defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
    "Prevent annoying \"Active processes exist\" query when you quit Emacs."
    (cl-letf (((symbol-function #'process-list) (lambda ())))
      ad-do-it))

  (require 'omnisharp)

  (defun my-omnisharp-describe ()
    (interactive)
    (condition-case nil
        (omnisharp--send-command-to-server
         "typelookup"
         (omnisharp--get-typelookup-request-object)
         (lambda (response)
           (let* ((current-type-information
                   (omnisharp--completion-result-get-item response 'Type)))
             (eldoc-message current-type-information))))
      (error nil (ignore))))

  (defun my-omnisharp-doc ()
    (interactive)
    (condition-case nil
        (omnisharp--send-command-to-server
         "typelookup"
         (omnisharp--get-typelookup-request-object)
         (lambda (response)
           (let* ((current-type-information
                   (omnisharp--completion-result-get-item response 'Type))
                  (current-type-documentation
                   (string-trim-right
                    (or (omnisharp--completion-result-get-item response 'Documentation)
                        "")))
                  (have-type (and current-type-information (not (string= "" current-type-information))))
                  (have-doc (and current-type-documentation (not (string= "" current-type-documentation))))
                  (message-to-show (concat (if current-type-information (omnisharp--eldoc-fontify-string current-type-information))
                                           (if (and have-type have-doc) "\n\n")
                                           current-type-documentation)))
             (with-current-buffer (get-buffer-create "*omnidoc*")
               (erase-buffer)
               (if (or have-type have-doc)
                   (insert message-to-show))
               (display-buffer (current-buffer))))))
      (error nil (ignore))))

  (add-hook 'prog-mode-hook
            (lambda ()
              (when (derived-mode-p 'csharp-mode)
                (define-key csharp-mode-map (kbd "M-.") 'omnisharp-go-to-definition)
                (define-key csharp-mode-map (kbd "C-.") 'my-omnisharp-describe)
                (define-key csharp-mode-map (kbd "C-c C-d") 'my-omnisharp-doc)))))

(enable-omnisharp-environment)

;; Python
(defun enable-python-enviroment ()
  (interactive)
  (require 'pymacs "~/.emacs.d/pymacs.el")
  (when (eq system-type 'darwin)
    (setq python-shell-interpreter "python3")
    (setq pymacs-python-command "python3"))

  (when (eq system-type 'windows-nt)
    (setq python-shell-completion-native-disabled-interpreters '("python")))

  (pymacs-load "ropemacs" "rope-")
  (setq ropemacs-max-doc-buffer-height nil)
                                        ;(setq ropemacs-use-pop-to-buffer t)
  (setq ropemacs-enable-autoimport t)

  (add-hook 'prog-mode-hook
            (lambda ()
              (when (derived-mode-p 'python-mode)
                ;;(eldoc-mode 1)
                (setq eldoc-documentation-function nil)
                (setq-local company-backends
                            '(company-capf company-files company-dabbrev-code
                                           company-dabbrev ))
                (define-key python-mode-map (kbd "M-.") 'rope-goto-definition)
                (define-key python-mode-map (kbd "M-,") 'rope-pop-mark)
                (define-key python-mode-map (kbd "C-.") 'rope-show-description)
                (define-key python-mode-map (kbd "C-,") 'rope-show-calltip)
                (define-key python-mode-map (kbd "C-c C-d") 'rope-show-doc)))))

;; rust
(defun enable-rust-environment ()
  (interactive)
  (require 's)
  (require 'f)
  (when (eq system-type 'darwin)
  (let* ((racer  "/Users/wangjiong/Development/rust/racer/target/release")
        (cargo  "/Users/wangjiong/.cargo/bin"))
    (setenv "PATH" (concat (getenv "PATH") ":" racer ":" cargo))
    (add-to-list 'exec-path racer t)
    (add-to-list 'exec-path cargo t)
    (setenv "RUST_SRC_PATH" (f-join (s-trim-right (shell-command-to-string
                                                   (format "%s --print sysroot" (executable-find "rustc"))))
                                    "lib/rustlib/src/rust/src"))))
  ;; M-x package-install racer
  (add-hook 'rust-mode-hook #'racer-mode)
  ;;(add-hook 'racer-mode-hook #'eldoc-mode)

  (add-hook 'racer-mode-hook
            (lambda ()
              (setq-local eldoc-documentation-function nil)))

  (require 'rust-mode)
  (setq-local company-tooltip-align-annotations t)
  (defun my-racer-describe ()
    (interactive)
    (message (format-message "%s" (racer-eldoc))))

  ;; M-x package-install flycheck-rust
  ;;(add-hook 'rust-mode-hook #'flycheck-mode)
  ;;(add-hook 'flycheck-mode-hook #'flycheck-rust-setup) 

  (add-hook 'prog-mode-hook
            (lambda ()
              (when (derived-mode-p 'rust-mode)
              (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
              (define-key rust-mode-map (kbd "C-c C-d") #'racer-describe)
              (define-key rust-mode-map (kbd "C-.") #'my-racer-describe)
              (define-key rust-mode-map (kbd "M-.") #'racer-find-definition)))))

;;(enable-rust-environment)

;; dart
(defun enable-dart-environment ()
  (setq dart-debug t)
  (setq dart-enable-analysis-server t)
  (defun my-dart-describe ()
    (interactive)
    (dart-show-hover t))

  (require 'company-dart "~/.emacs.d/company-dart.el")
  (add-hook 'dart-mode-hook
            (lambda ()
              (setq-local company-backends
                          '(company-dart company-files company-dabbrev-code
                                         company-dabbrev company-capf))
              (define-key dart-mode-map (kbd "TAB") #'company-indent-or-complete-common)
              (define-key dart-mode-map (kbd "C-c C-d") #'my-dart-describe)
              (define-key dart-mode-map (kbd "C-.") #'dart-show-hover)
              (define-key dart-mode-map (kbd "M-.") #'dart-goto))))

;;(enable-dart-environment)

;; TAB键设置
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
;(setq c-basic-offset 4)

;;; 关闭自动备份功能
(setq make-backup-files nil)

;;; 启用隐藏和显示编辑区域快捷键
(put 'narrow-to-region 'disabled nil)

;;; 启动窗口操作重做和撤销模式
;; C-c <right> winner-undo
;; C-c <left> winner-redo
;(winner-mode)

;; 搜索功能设置
;;https://github.com/monochromegane/the_platinum_searcher/releases
(require 'pt "~/.emacs.d/pt.el")

(defun my-pt-regexp-0 (arg)
  (interactive "P")
  (if arg
      (progn
        (setcar arg 0)
        (call-interactively 'pt-regexp-file-pattern-0))
    (call-interactively 'pt-regexp-0)))

(global-set-key (kbd "C-c g") 'my-pt-regexp-0)

(defun my-pt-regexp (arg)
  (interactive "P")
  (if arg
      (progn
        (setcar arg 0)
        (call-interactively 'pt-regexp-file-pattern))
    (call-interactively 'pt-regexp)))

(global-set-key (kbd "C-c C-g") 'my-pt-regexp)

;;; ffap 打开当前光标下文件
(global-set-key (kbd "C-c C-f") 'find-file-at-point)

(global-set-key (kbd "C-c i") 'imenu)

;;; recent files
;(recentf-mode 1)

(savehist-mode 1)

;;; The reverse of pop-to-mark-command.
(defun unpop-to-mark-command ()
  "Unpop off mark ring. Does nothing if mark ring is empty."
  (interactive)
  (when mark-ring
    (setq mark-ring (cons (copy-marker (mark-marker)) mark-ring))
    (set-marker (mark-marker) (+ 0 (car (last mark-ring))) (current-buffer))
    (if (null (mark t))    (ding))
    (setq mark-ring (nbutlast mark-ring))
    (let ((position (+ 0 (car (last mark-ring)))))
      (if (= (point) position)
          (message "Mark unpopped")
        (goto-char position)))))
    
(global-set-key (kbd "C-c C-SPC") (quote unpop-to-mark-command))

;; 自定义lisp的注释
(defun comment-by-wj ()
  "Insert comment defined by WJ."
  (interactive)
  (let ((my-comment
         (cond
          ((derived-mode-p 'lisp-mode 'emacs-lisp-mode)
           " ;WJ: ")
          ((derived-mode-p 'c-mode 'c++-mode 'java-mode 'ruby-mode 'go-mode)
           " //WJ: ")
          ((derived-mode-p 'ruby-mode)
           " #WJ: "))))
    (when my-comment
      (end-of-line)
      (insert my-comment))))

(global-set-key (kbd "C-c w j") (quote comment-by-wj))

;; Dictionary
;; M-x package-install bing-dict
(global-set-key (kbd "C-c d") (quote bing-dict-brief))

;; M-x package-install osx-dictionary
(if (eq system-type 'darwin)
    (global-set-key (kbd "C-c o") (quote osx-dictionary-search-pointer)))

;; 关闭光标闪烁
(blink-cursor-mode 0)

;; 显示列
(column-number-mode 1)

;; 显示时间
;(setq display-time-day-and-date t)
;(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)
(display-time-mode 1)

;; 显示电量
(display-battery-mode 1)

;; 设置emacs源代码地址
(if (eq system-type 'windows-nt)
    (setq find-function-C-source-directory "E:/emacs/emacs-25.2-src/src")
  (setq find-function-C-source-directory "~/Development/emacs/emacs-25.3/src"))

;;(require 'sis001 "~/.emacs.d/sis001.el")

;; M-x package-install chronos
(if (eq system-type 'darwin)
    (setq chronos-text-to-speech-program "say"
          chronos-expiry-functions '(chronos-buffer-notify
                                     chronos-text-to-speech-notify
                                     chronos-message-notify)))

(defun my-eww-text-mode ()
  (interactive)
  (if (featurep 'eww)
      (let ((current-url (plist-get eww-data :url)))
        (url-retrieve current-url
                      (lambda (status url &optional point buffer)
                        (set-window-margins nil 30 60)
                        (eww-render status url point buffer)
                        (set-window-margins nil 30 40))
                      (list current-url (point) (current-buffer))))))

;;(require 'annotate "~/.emacs.d/annotate.el")

(add-to-list 'Info-default-directory-list "~/.emacs.d/info/")

;; M-x package-install cmake-mode
;(require 'cmake-mode)

(defun my-server-start ()
  (interactive)
  (server-start)
  (setenv "EDITOR" "/usr/local/bin/emacsclient"))

;(require 'mirah-mode "~/.emacs.d/mirah-mode.el")

(delete-selection-mode)

;(global-linum-mode 1)
;(if linum-mode
;    (set-face-attribute 'linum nil :foreground "#000" :background "#FFF"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-flx omnisharp csharp-mode dart-mode racer rust-mode nim-mode osx-dictionary company-go company auctex ggtags pt color-theme bing-dict))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
