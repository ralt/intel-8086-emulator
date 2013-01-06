;; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defun ndisasm ()
  (let ((bytes '()))
    (with-open-file (stream
                     *asm-file*
                     :element-type  'unsigned-byte)
      (loop for byte = (read-byte stream nil :eof)
         until (eq byte :eof)
         do (setf bytes (append (list byte) bytes))))
    bytes))
