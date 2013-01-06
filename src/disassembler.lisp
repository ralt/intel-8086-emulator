;; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defparameter *instructions* '#())

(defun main ()
  (let ((bytes '()))
    (with-open-file (stream
                     *asm-file*
                     :element-type  'unsigned-byte)
      (loop for byte = (read-byte stream nil :eof)
         until (eq byte :eof)
         do (setf bytes (append (format t "~2X " byte) bytes))))
    bytes))

(defclass instruction ()
  ((address :accessor address :initarg :address)
   (opcode :accessor opcode :initarg :opcode)
   (operands :accessor operands :initarg :operands)))
