	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr57344-1.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	block   	BB0_2
	i32.const	$push0=, -3161
	i32.ne  	$push1=, $0, $pop0
	br_if   	$pop1, BB0_2
# BB#1:                                 # %if.end
	#APP
	#NO_APP
	return
BB0_2:                                  # %if.then
	call    	abort
	unreachable
func_end0:
	.size	foo, func_end0-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.load	$2=, i($0)
	block   	BB1_3
	i64.const	$push0=, 8583460864
	i64.store	$discard=, s+8($0), $pop0
	i32.gt_s	$push1=, $2, $0
	br_if   	$pop1, BB1_3
# BB#1:                                 # %for.body.preheader
	i32.const	$push2=, -3161
	call    	foo, $pop2
	i32.load	$2=, i($0)
	i32.const	$1=, 1
	i32.add 	$push3=, $2, $1
	i32.store	$discard=, i($0), $pop3
	i32.const	$push4=, -1
	i32.gt_s	$push5=, $2, $pop4
	br_if   	$pop5, BB1_3
BB1_2:                                  # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	loop    	BB1_3
	i64.load32_u	$push12=, s+8($0)
	i32.const	$push7=, s+8
	i32.const	$push6=, 4
	i32.add 	$push8=, $pop7, $pop6
	i64.load8_u	$push9=, 0($pop8)
	i64.const	$push10=, 32
	i64.shl 	$push11=, $pop9, $pop10
	i64.or  	$push13=, $pop12, $pop11
	i64.const	$push14=, 31
	i64.shl 	$push15=, $pop13, $pop14
	i64.const	$push16=, 24
	i64.shr_s	$push17=, $pop15, $pop16
	i64.const	$push18=, 18
	i64.shr_u	$push19=, $pop17, $pop18
	i32.wrap/i64	$push20=, $pop19
	call    	foo, $pop20
	i32.load	$2=, i($0)
	i32.add 	$push21=, $2, $1
	i32.store	$discard=, i($0), $pop21
	i32.lt_s	$push22=, $2, $0
	br_if   	$pop22, BB1_2
BB1_3:                                  # %for.end
	return  	$0
func_end1:
	.size	main, func_end1-main

	.type	s,@object               # @s
	.bss
	.globl	s
	.align	4
s:
	.zero	16
	.size	s, 16

	.type	i,@object               # @i
	.globl	i
	.align	2
i:
	.int32	0                       # 0x0
	.size	i, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits