(in-package :6502-cpu)

(defun sei (c inst)
  "SEI: set interrupt flag"
  (declare (ignore inst))
  (setf
   (flags-interrupt (cpu-sr c))
   T)
  (format
   nil
   "SEI. Set the interrupt flag"))

(defun sec (c inst)
  "SEC: set carry flag"
  (declare (ignore inst))
  (setf
   (flags-carry (cpu-sr c))
   T)
  (format
   nil
   "SEC. Set the carry flag"))

(defun clv (c inst)
 "CLV: clear overflow flag"
 (declare (ignore inst))
 (setf
  (flags-overflow (cpu-sr c))
  nil)
 (format
  nil
  "VLC. Clear the overflow flag"))

(defun clc (c inst)
  "CLC: clear carry flag"
  (declare (ignore inst))
  (setf
   (flags-carry (cpu-sr c))
   nil)
  (format
   nil
   "CLC. Clear the carry flag"))

(defun cld (c inst)
  "Clear decimal flag"
  (declare (ignore inst))
  (setf
   (flags-bcd (cpu-sr c))
   nil)
  (format
   nil
   "CLD. Cleared the decimal flag"))

(defun sed (c inst)
 "Set decimal flag"
 (declare (ignore inst))
 (setf
  (flags-bcd (cpu-sr c))
  T)
 (format
  nil
  "SED. Cleared the decimal flag"))
