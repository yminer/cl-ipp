;;; Copyright (c) 2012 Yannick Drant, Matthieu Lagacherie, All Rights Reserved
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:
;;;
;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.
;;;
;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;; -*- Mode: Lisp -*- 

(in-package :cl-ipp)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (cffi:define-foreign-library libippi
      (:unix (:or "libippi.so"))
    (t (:default "libippi")))
  (cffi:use-foreign-library libippi)

  (cffi:define-foreign-library libipps
      (:unix (:or "libipps.so"))
    (t (:default "libipps")))
  (cffi:use-foreign-library libipps)

  (cffi:define-foreign-library libippcore
      (:unix (:or "libippcore.so"))
    (t (:default "libippcore")))
  (cffi:use-foreign-library libippcore)

  (cffi:define-foreign-library libippvm
      (:unix (:or "libippvm.so"))
    (t (:default "libippvm")))
  (cffi:use-foreign-library libippvm))


