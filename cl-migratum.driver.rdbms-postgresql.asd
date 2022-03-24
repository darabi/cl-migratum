(defpackage :cl-migratum-driver-rdbms-postgresql-system
  (:use :cl :asdf))
(in-package :cl-migratum-driver-rdbms-postgresql-system)

(defsystem "cl-migratum.driver.rdbms-postgresql"
  :name "cl-migratum.driver.rdbms-postgresql"
  :description "cl-migratum driver for driving migrations against SQL databases using hu.dwim.rdbms.postgresql"
  :version "0.3.0"
  :author "Marin Atanasov Nikolov <dnaeon@gmail.com>"
  :maintainer "Marin Atanasov Nikolov <dnaeon@gmail.com>"
  :license "BSD-2 Clause"
  :homepage "https://github.com/dnaeon/cl-migratum"
  :bug-tracker "https://github.com/dnaeon/cl-migratum"
  :source-control "https://github.com/dnaeon/cl-migratum"
  :long-name "cl-migratum.driver.rdbms-postgresql"
  :depends-on (:cl-migratum
               :cl-ppcre
               :hu.dwim.logger
               :hu.dwim.rdbms.postgresql
               :log4cl)
  :components ((:module "driver"
                :pathname #P"src/driver/"
                :components ((:file "rdbms-postgresql")))))
