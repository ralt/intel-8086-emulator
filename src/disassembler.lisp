;;;; Hacks and glory awaits!

;;;; Disassembling the binary input file.

(in-package #:intel-8086-emulator)

(defun ndisasm ()
  (let ((bytes (collect)))
    (instruction (first bytes) bytes)))

(defun collect ()
  (with-open-file (stream
                   *asm-file*
                   :element-type 'unsigned-byte)
    (loop for byte = (read-byte stream nil :eof)
         until (eq byte :eof)
         collect byte)))
