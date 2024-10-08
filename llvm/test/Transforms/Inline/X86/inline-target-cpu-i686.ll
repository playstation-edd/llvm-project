; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -mtriple=i686-unknown-unknown -S -passes=inline | FileCheck %s

define i32 @func_target_cpu_nocona() #0 {
; CHECK-LABEL: @func_target_cpu_nocona(
; CHECK-NEXT:    ret i32 0
;
  ret i32 0
}

define i32 @target_cpu_prescott_call_target_cpu_nocona() #1 {
; CHECK-LABEL: @target_cpu_prescott_call_target_cpu_nocona(
; CHECK-NEXT:    ret i32 0
;
  %call = call i32 @func_target_cpu_nocona()
  ret i32 %call
}

attributes #0 = { nounwind "target-cpu"="nocona" }
attributes #1 = { nounwind "target-cpu"="prescott" }
