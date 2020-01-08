;;;; srfi-6.lisp

(cl:in-package "https://github.com/g000001/srfi-6#internals")

(declaim (inline open-input-string
                 open-output-string
                 get-output-string))

(defun OPEN-INPUT-STRING (string)
  (make-string-input-stream string 0) )

(defun OPEN-OUTPUT-STRING ()
  (make-string-output-stream))

(defun GET-OUTPUT-STRING (output-port)
  (get-output-stream-string output-port))


