;;;; Hacks and glory awaits!

;;;; Implementing each opcode.

(in-package #:intel-8086-emulator)

;;; All opcodes starting with #x81
(defopcode #x81 (opcode bytes)
  (instruction #x81fc bytes))

;;; CMP
(defopcode #x81fc (opcode bytes)
  (format t "cmp~%")
  (next bytes))
