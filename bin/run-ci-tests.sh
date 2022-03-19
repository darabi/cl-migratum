#!/bin/bash

/usr/local/bin/install-quicklisp

sbcl --eval "(push \"${WORKSPACE}\" asdf:*central-registry*)" \
     --eval "(ql:quickload :cl-migratum.test)" \
     --eval "(setf rove:*enable-colors* nil)" \
     --eval "(asdf:test-system :cl-migratum.test)" \
     --eval "(sb-ext:exit :code (length (rove/core/stats:all-failed-assertions rove/core/stats:*stats*)))"
