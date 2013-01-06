; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defgeneric instruction (bytes &optional oc-extension)
  (:documentation "Defines an opcode with its bytes and eventually
                  the 3 first bits of the r/m operand"))

(defmacro defopcode (vars &body body)
  `(dolist (definition ,vars)
     (let ((byte (first definition))
           (oc-extension (getf 'definition :oc-extension)))
       (defmethod instruction (byte &optional oc-extension)
         ,@body))))

(defopcode (#xfc)
  ())
