	.text
	.file	"20050316-2.c"
	.section	.text.test1,"ax",@progbits
	.hidden	test1                   # -- Begin function test1
	.globl	test1
	.type	test1,@function
test1:                                  # @test1
	.param  	f32, f32
	.result 	i64
# BB#0:                                 # %entry
	i32.reinterpret/f32	$push4=, $0
	i64.extend_u/i32	$push5=, $pop4
	i32.reinterpret/f32	$push0=, $1
	i64.extend_u/i32	$push1=, $pop0
	i64.const	$push2=, 32
	i64.shl 	$push3=, $pop1, $pop2
	i64.or  	$push6=, $pop5, $pop3
                                        # fallthrough-return: $pop6
	.endfunc
.Lfunc_end0:
	.size	test1, .Lfunc_end0-test1
                                        # -- End function
	.section	.text.test2,"ax",@progbits
	.hidden	test2                   # -- Begin function test2
	.globl	test2
	.type	test2,@function
test2:                                  # @test2
	.param  	f32, f32
	.result 	i64
# BB#0:                                 # %entry
	i32.reinterpret/f32	$push4=, $0
	i64.extend_u/i32	$push5=, $pop4
	i32.reinterpret/f32	$push0=, $1
	i64.extend_u/i32	$push1=, $pop0
	i64.const	$push2=, 32
	i64.shl 	$push3=, $pop1, $pop2
	i64.or  	$push6=, $pop5, $pop3
                                        # fallthrough-return: $pop6
	.endfunc
.Lfunc_end1:
	.size	test2, .Lfunc_end1-test2
                                        # -- End function
	.section	.text.test3,"ax",@progbits
	.hidden	test3                   # -- Begin function test3
	.globl	test3
	.type	test3,@function
test3:                                  # @test3
	.param  	i32, i32
	.result 	i64
# BB#0:                                 # %entry
	i64.extend_u/i32	$push3=, $0
	i64.extend_u/i32	$push0=, $1
	i64.const	$push1=, 32
	i64.shl 	$push2=, $pop0, $pop1
	i64.or  	$push4=, $pop3, $pop2
                                        # fallthrough-return: $pop4
	.endfunc
.Lfunc_end2:
	.size	test3, .Lfunc_end2-test3
                                        # -- End function
	.section	.text.main,"ax",@progbits
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end33
	i32.const	$push0=, 0
                                        # fallthrough-return: $pop0
	.endfunc
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function

	.ident	"clang version 6.0.0 (https://llvm.googlesource.com/clang.git a1774cccdccfa673c057f93ccf23bc2d8cb04932) (https://llvm.googlesource.com/llvm.git fc50e1c6121255333bc42d6faf2b524c074eae25)"
