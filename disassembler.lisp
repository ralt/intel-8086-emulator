;; Hacks and glory awaits!

(in-package #:intel-8086-emulator)

(defun main ()
  (with-open-file (stream "quicklisp/local-projects/intel-8086-emulator/codegolf"
                          :element-type 'unsigned-byte)
    (loop for byte = (read-byte stream nil :eof)
       until (eq byte :eof)
       do (format t "~X " byte))))
