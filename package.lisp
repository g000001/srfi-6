;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-6
  (:use)
  (:export :open-input-string
           :open-output-string
           :get-output-string))

(defpackage :srfi-6-internal
  (:use :srfi-6 :cl :fiveam))

