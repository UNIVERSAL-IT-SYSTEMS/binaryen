	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr34130.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push0=, -2
	i32.add 	$1=, $0, $pop0
	i32.const	$push8=, 0
	i32.const	$push1=, 2
	i32.sub 	$push2=, $pop1, $0
	i32.const	$push3=, -1
	i32.gt_s	$push4=, $1, $pop3
	i32.select	$push5=, $1, $pop2, $pop4
	i32.const	$push6=, 1
	i32.shl 	$push7=, $pop5, $pop6
	i32.sub 	$push9=, $pop8, $pop7
	return  	$pop9
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	return  	$pop0
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
