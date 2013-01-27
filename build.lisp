;; load quicklisp
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(ql:quickload 'intel-8086-emulator)

(sb-ext:save-lisp-and-die (pathname "build/intel-ndisasm")
			  :executable t
			  :toplevel #'intel-8086-emulator::ndisasm)
