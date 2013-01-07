; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defgeneric instruction (opcode bytes)
  (:documentation "Defines an opcode with its bytes and eventually
                  the 3 first bits of the r/m operand"))

(defmacro defopcode (opcode &body body)
  `(defmethod instruction ((opcode (eql ,@opcode)) bytes)
     ,@body

     ; Call the rest.
     (instruction (first (rest bytes)) (rest bytes))))

(defopcode (#x81)
  (format t "WINNING"))

;; Last method called.
(defmethod instruction (opcode bytes)
  (format t "END"))
