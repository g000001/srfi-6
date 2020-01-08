;;;; package.lisp

(cl:in-package :cl-user)

(defpackage "https://github.com/g000001/srfi-6"
  (:use)
  (:export :open-input-string
           :open-output-string
           :get-output-string))

(defpackage "https://github.com/g000001/srfi-6#internals"
  (:use "https://github.com/g000001/srfi-6" cl))

