; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defgeneric instruction (opcode bytes)
  (:documentation "Defines an opcode with its bytes and eventually
                  the 3 first bits of the r/m operand"))

(defmacro defopcode (byte (opcode bytes) &body body)
  `(defmethod instruction ((,opcode (eql ,byte)) ,bytes)
     ,@body))

(defopcode #x81 (opcode bytes)
  (format t "WINNING")
  (instruction (first (rest bytes)) (rest bytes)))

;; Last method called.
(defmethod instruction (opcode bytes)
  (format t "END"))
