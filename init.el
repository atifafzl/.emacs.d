(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-theme 'leuven t)
(add-hook 'org-mode-hook #'org-indent-mode)
(setq org-startup-with-inline-images t)
(set-frame-font "Iosevka 18" nil t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode)
;; window size
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; use space instead of tab for indentation
(setq-default indent-tabs-mode nil)
;; tab width global
(setq-default tab-width 2)
;; Don't save backup files
(setq make-backup-files nil)
;; writing yes or no is length, type y / n instead
(defalias 'yes-or-no-p 'y-or-n-p)
;; show the cursor like this |
(setq-default cursor-type 'bar)
;; ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;;; from melpa
;;;
;; olivetti
(require 'olivetti)
(add-hook 'text-mode-hook #'olivetti-mode)
;; undo-tree
(global-undo-tree-mode)
(setq undo-tree-auto-save-history nil)
;; smooth-scrolling
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
(setq smooth-scroll-margin 5)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gac-automatically-push-p t)
 '(gac-silent-message-p t)
 '(org-journal-date-format "%A, %d/%m/%y")
 '(org-journal-dir "~/Documents/Notes/Journal/")
 '(package-selected-packages
   '(org-journal smooth-scrolling git-auto-commit-mode undo-tree olivetti)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
