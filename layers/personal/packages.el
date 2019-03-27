;;; packages.el --- personal layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <garym@DESKTOP-59L5KI7>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `personal-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `personal/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `personal/pre-init-PACKAGE' and/or
;;   `personal/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst personal-packages
  '(web-mode doom-modeline)
  "The list of Lisp packages required by the personal layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun personal/init-web-mode ()
  (use-package web-mode
    :ensure t
    :mode ("\\.html\\'"
           "\\.css\\'"
           "\\.jsx?\\'"
           "\\.vue\\'"
           "\\.json\\'")
    :config
    (setq web-mode-attr-indent-offset 2
          web-mode-code-indent-offset 2
          web-mode-css-indent-offset 2
          web-mode-markup-indent-offset 2
          web-mode-sql-indent-offset 2
          web-mode-engines-auto-pairs nil
          web-mode-script-padding 0
          web-mode-style-padding 0
          web-mode-enable-auto-quoting nil)))

(defun personal/init-doom-modeline ()
  (use-package doom-modeline
    :ensure t
    :config
    (doom-modeline-mode)))

;;; packages.el ends here
