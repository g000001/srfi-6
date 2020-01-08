;;;; srfi-6.asd

(cl:in-package :asdf)

(defsystem :srfi-6
  :version "20200109"
  :description "SRFI-6: Basic String Ports"
  :long-description "SRFI-6: Basic String Ports
https://srfi.schemers.org/srfi-6"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :license "Unlicense"
  :serial t
  :components ((:file "package")
               (:file "srfi-6")))

(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-6))))
  (let ((name "https://github.com/g000001/srfi-6")
        (nickname :srfi-6))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

