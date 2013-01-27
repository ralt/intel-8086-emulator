;; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defvar *asm-file* "~/quicklisp/local-projects/intel-8086-emulator/asm/codegolf")

;;; Instruction implements an opcode and its bytes
(defgeneric instruction (opcode bytes)
  (:documentation "Defines an opcode with its bytes"))

(defmacro defopcode (byte (opcode bytes) &body body)
  "Defines an opcode with its byte."
  `(defmethod instruction ((,opcode (eql ,byte)) ,bytes)
     ,@body))

;;; Called after every instruction.
(defun next (bytes)
  (instruction (first (rest bytes)) (rest bytes)))

;;; Last method called.
(defmethod instruction (opcode bytes)
  (format t "END"))
