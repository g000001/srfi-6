;;;; srfi-6.asd

(cl:in-package :asdf)

(defsystem :srfi-6
  :serial t
  :components ((:file "package")
               (:file "srfi-6")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-6))))
  (load-system :srfi-6)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-6-internal :srfi-6))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

