;;;; Hacks and glory awaits!

;;;; Implementing each opcode.

(in-package #:intel-8086-emulator)

;;; Instruction implements an opcode and its bytes
(defgeneric instruction (opcode bytes)
  (:documentation "Defines an opcode with its bytes"))

(defmacro defopcode (byte (opcode bytes) &body body)
  `(defmethod instruction ((,opcode (eql ,byte)) ,bytes)
     ,@body))

(defopcode #x81 (opcode bytes)
  (format t "WINNING")
  (instruction (first (rest bytes)) (rest bytes)))

;;; Last method called.
(defmethod instruction (opcode bytes)
  (format t "END"))
