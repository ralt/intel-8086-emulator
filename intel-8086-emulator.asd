;; intel-8086-emulator.asd

(asdf:defsystem #:intel-8086-emulator
  :serial t
  :description "Challenge accepted! http://codegolf.stackexchange.com/q/4732/6594"
  :author "Florian Margaine"
  :license "MIT License"
  :components ((:file "package")
               (:file "intel-8086-emulator")
               (:file "disassembler")))
