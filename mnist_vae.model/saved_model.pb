??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
:*
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_11/bias
?
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_11/kernel
?
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
: @*
dtype0
s
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*
shared_namedense_50/bias
l
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes	
:?b*
dtype0
{
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?b* 
shared_namedense_50/kernel
t
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes
:	?b*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op*
.
0
1
"2
#3
+4
,5*
.
0
1
"2
#3
+4
,5*
* 
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
3trace_0
4trace_1
5trace_2
6trace_3* 
6
7trace_0
8trace_1
9trace_2
:trace_3* 
* 

;serving_default* 

0
1*

0
1*
* 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Atrace_0* 

Btrace_0* 
_Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_50/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Htrace_0* 

Itrace_0* 

"0
#1*

"0
#1*
* 
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 
jd
VARIABLE_VALUEconv2d_transpose_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

+0
,1*

+0
,1*
* 
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
`Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
'
0
1
2
3
4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
serving_default_input_10Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10dense_50/kerneldense_50/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_63/kernelconv2d_63/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_8571
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_8826
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_50/kerneldense_50/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_63/kernelconv2d_63/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_8854֠
?	
?
'__inference_model_20_layer_call_fn_8582

inputs"
dense_50_kernel:	?b
dense_50_bias:	?b4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: *
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_50_kerneldense_50_biasconv2d_transpose_11_kernelconv2d_transpose_11_biasconv2d_63_kernelconv2d_63_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_20_layer_call_and_return_conditional_losses_8388w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_63_layer_call_fn_8774

inputs*
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_63_kernelconv2d_63_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
'__inference_model_20_layer_call_fn_8530
input_10"
dense_50_kernel:	?b
dense_50_bias:	?b4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: *
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10dense_50_kerneldense_50_biasconv2d_transpose_11_kernelconv2d_transpose_11_biasconv2d_63_kernelconv2d_63_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_20_layer_call_and_return_conditional_losses_8482w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?"
?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292

inputsT
:conv2d_transpose_readvariableop_conv2d_transpose_11_kernel: @=
/biasadd_readvariableop_conv2d_transpose_11_bias: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp:conv2d_transpose_readvariableop_conv2d_transpose_11_kernel*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
?
BiasAdd/ReadVariableOpReadVariableOp/biasadd_readvariableop_conv2d_transpose_11_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
'__inference_model_20_layer_call_fn_8593

inputs"
dense_50_kernel:	?b
dense_50_bias:	?b4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: *
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_50_kerneldense_50_biasconv2d_transpose_11_kernelconv2d_transpose_11_biasconv2d_63_kernelconv2d_63_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_20_layer_call_and_return_conditional_losses_8482w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
'__inference_model_20_layer_call_fn_8397
input_10"
dense_50_kernel:	?b
dense_50_bias:	?b4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: *
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10dense_50_kerneldense_50_biasconv2d_transpose_11_kernelconv2d_transpose_11_biasconv2d_63_kernelconv2d_63_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_20_layer_call_and_return_conditional_losses_8388w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?!
?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8767

inputsT
:conv2d_transpose_readvariableop_conv2d_transpose_11_kernel: @=
/biasadd_readvariableop_conv2d_transpose_11_bias: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp:conv2d_transpose_readvariableop_conv2d_transpose_11_kernel*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
?
BiasAdd/ReadVariableOpReadVariableOp/biasadd_readvariableop_conv2d_transpose_11_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
B__inference_model_20_layer_call_and_return_conditional_losses_8558
input_10+
dense_50_dense_50_kernel:	?b%
dense_50_dense_50_bias:	?bH
.conv2d_transpose_11_conv2d_transpose_11_kernel: @:
,conv2d_transpose_11_conv2d_transpose_11_bias: 4
conv2d_63_conv2d_63_kernel: &
conv2d_63_conv2d_63_bias:
identity??!conv2d_63/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCallinput_10dense_50_dense_50_kerneldense_50_dense_50_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_50_layer_call_and_return_conditional_losses_8349?
reshape_11/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0.conv2d_transpose_11_conv2d_transpose_11_kernel,conv2d_transpose_11_conv2d_transpose_11_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0conv2d_63_conv2d_63_kernelconv2d_63_conv2d_63_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383?
IdentityIdentity*conv2d_63/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp"^conv2d_63/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?
?
'__inference_dense_50_layer_call_fn_8696

inputs"
dense_50_kernel:	?b
dense_50_bias:	?b
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_50_kerneldense_50_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_50_layer_call_and_return_conditional_losses_8349p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383

inputs@
&conv2d_readvariableop_conv2d_63_kernel: 3
%biasadd_readvariableop_conv2d_63_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_63_kernel*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
x
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_63_bias*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?C
?
__inference__wrapped_model_8254
input_10J
7model_20_dense_50_matmul_readvariableop_dense_50_kernel:	?bE
6model_20_dense_50_biasadd_readvariableop_dense_50_bias:	?bq
Wmodel_20_conv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel: @Z
Lmodel_20_conv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias: S
9model_20_conv2d_63_conv2d_readvariableop_conv2d_63_kernel: F
8model_20_conv2d_63_biasadd_readvariableop_conv2d_63_bias:
identity??)model_20/conv2d_63/BiasAdd/ReadVariableOp?(model_20/conv2d_63/Conv2D/ReadVariableOp?3model_20/conv2d_transpose_11/BiasAdd/ReadVariableOp?<model_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?(model_20/dense_50/BiasAdd/ReadVariableOp?'model_20/dense_50/MatMul/ReadVariableOp?
'model_20/dense_50/MatMul/ReadVariableOpReadVariableOp7model_20_dense_50_matmul_readvariableop_dense_50_kernel*
_output_shapes
:	?b*
dtype0?
model_20/dense_50/MatMulMatMulinput_10/model_20/dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b?
(model_20/dense_50/BiasAdd/ReadVariableOpReadVariableOp6model_20_dense_50_biasadd_readvariableop_dense_50_bias*
_output_shapes	
:?b*
dtype0?
model_20/dense_50/BiasAddBiasAdd"model_20/dense_50/MatMul:product:00model_20/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bu
model_20/dense_50/ReluRelu"model_20/dense_50/BiasAdd:output:0*
T0*(
_output_shapes
:??????????bm
model_20/reshape_11/ShapeShape$model_20/dense_50/Relu:activations:0*
T0*
_output_shapes
:q
'model_20/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)model_20/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_20/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!model_20/reshape_11/strided_sliceStridedSlice"model_20/reshape_11/Shape:output:00model_20/reshape_11/strided_slice/stack:output:02model_20/reshape_11/strided_slice/stack_1:output:02model_20/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#model_20/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#model_20/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :e
#model_20/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@?
!model_20/reshape_11/Reshape/shapePack*model_20/reshape_11/strided_slice:output:0,model_20/reshape_11/Reshape/shape/1:output:0,model_20/reshape_11/Reshape/shape/2:output:0,model_20/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
model_20/reshape_11/ReshapeReshape$model_20/dense_50/Relu:activations:0*model_20/reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@v
"model_20/conv2d_transpose_11/ShapeShape$model_20/reshape_11/Reshape:output:0*
T0*
_output_shapes
:z
0model_20/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_20/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_20/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_20/conv2d_transpose_11/strided_sliceStridedSlice+model_20/conv2d_transpose_11/Shape:output:09model_20/conv2d_transpose_11/strided_slice/stack:output:0;model_20/conv2d_transpose_11/strided_slice/stack_1:output:0;model_20/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$model_20/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :f
$model_20/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :f
$model_20/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
"model_20/conv2d_transpose_11/stackPack3model_20/conv2d_transpose_11/strided_slice:output:0-model_20/conv2d_transpose_11/stack/1:output:0-model_20/conv2d_transpose_11/stack/2:output:0-model_20/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:|
2model_20/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_20/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_20/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model_20/conv2d_transpose_11/strided_slice_1StridedSlice+model_20/conv2d_transpose_11/stack:output:0;model_20/conv2d_transpose_11/strided_slice_1/stack:output:0=model_20/conv2d_transpose_11/strided_slice_1/stack_1:output:0=model_20/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
<model_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpWmodel_20_conv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel*&
_output_shapes
: @*
dtype0?
-model_20/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput+model_20/conv2d_transpose_11/stack:output:0Dmodel_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$model_20/reshape_11/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
3model_20/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOpLmodel_20_conv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias*
_output_shapes
: *
dtype0?
$model_20/conv2d_transpose_11/BiasAddBiasAdd6model_20/conv2d_transpose_11/conv2d_transpose:output:0;model_20/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
!model_20/conv2d_transpose_11/ReluRelu-model_20/conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
(model_20/conv2d_63/Conv2D/ReadVariableOpReadVariableOp9model_20_conv2d_63_conv2d_readvariableop_conv2d_63_kernel*&
_output_shapes
: *
dtype0?
model_20/conv2d_63/Conv2DConv2D/model_20/conv2d_transpose_11/Relu:activations:00model_20/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
)model_20/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp8model_20_conv2d_63_biasadd_readvariableop_conv2d_63_bias*
_output_shapes
:*
dtype0?
model_20/conv2d_63/BiasAddBiasAdd"model_20/conv2d_63/Conv2D:output:01model_20/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
model_20/conv2d_63/SigmoidSigmoid#model_20/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????u
IdentityIdentitymodel_20/conv2d_63/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp*^model_20/conv2d_63/BiasAdd/ReadVariableOp)^model_20/conv2d_63/Conv2D/ReadVariableOp4^model_20/conv2d_transpose_11/BiasAdd/ReadVariableOp=^model_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOp)^model_20/dense_50/BiasAdd/ReadVariableOp(^model_20/dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 2V
)model_20/conv2d_63/BiasAdd/ReadVariableOp)model_20/conv2d_63/BiasAdd/ReadVariableOp2T
(model_20/conv2d_63/Conv2D/ReadVariableOp(model_20/conv2d_63/Conv2D/ReadVariableOp2j
3model_20/conv2d_transpose_11/BiasAdd/ReadVariableOp3model_20/conv2d_transpose_11/BiasAdd/ReadVariableOp2|
<model_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOp<model_20/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2T
(model_20/dense_50/BiasAdd/ReadVariableOp(model_20/dense_50/BiasAdd/ReadVariableOp2R
'model_20/dense_50/MatMul/ReadVariableOp'model_20/dense_50/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?;
?
B__inference_model_20_layer_call_and_return_conditional_losses_8641

inputsA
.dense_50_matmul_readvariableop_dense_50_kernel:	?b<
-dense_50_biasadd_readvariableop_dense_50_bias:	?bh
Nconv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel: @Q
Cconv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias: J
0conv2d_63_conv2d_readvariableop_conv2d_63_kernel: =
/conv2d_63_biasadd_readvariableop_conv2d_63_bias:
identity?? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?
dense_50/MatMul/ReadVariableOpReadVariableOp.dense_50_matmul_readvariableop_dense_50_kernel*
_output_shapes
:	?b*
dtype0|
dense_50/MatMulMatMulinputs&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b?
dense_50/BiasAdd/ReadVariableOpReadVariableOp-dense_50_biasadd_readvariableop_dense_50_bias*
_output_shapes	
:?b*
dtype0?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bc
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:??????????b[
reshape_11/ShapeShapedense_50/Relu:activations:0*
T0*
_output_shapes
:h
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_11/ReshapeReshapedense_50/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@d
conv2d_transpose_11/ShapeShapereshape_11/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpNconv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0reshape_11/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOpCconv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias*
_output_shapes
: *
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_transpose_11/ReluRelu$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp0conv2d_63_conv2d_readvariableop_conv2d_63_kernel*&
_output_shapes
: *
dtype0?
conv2d_63/Conv2DConv2D&conv2d_transpose_11/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp/conv2d_63_biasadd_readvariableop_conv2d_63_bias*
_output_shapes
:*
dtype0?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????r
conv2d_63/SigmoidSigmoidconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????l
IdentityIdentityconv2d_63/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
"__inference_signature_wrapper_8571
input_10"
dense_50_kernel:	?b
dense_50_bias:	?b4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: *
conv2d_63_kernel: 
conv2d_63_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10dense_50_kerneldense_50_biasconv2d_transpose_11_kernelconv2d_transpose_11_biasconv2d_63_kernelconv2d_63_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_8254w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?
`
D__inference_reshape_11_layer_call_and_return_conditional_losses_8726

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
`
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
B__inference_model_20_layer_call_and_return_conditional_losses_8482

inputs+
dense_50_dense_50_kernel:	?b%
dense_50_dense_50_bias:	?bH
.conv2d_transpose_11_conv2d_transpose_11_kernel: @:
,conv2d_transpose_11_conv2d_transpose_11_bias: 4
conv2d_63_conv2d_63_kernel: &
conv2d_63_conv2d_63_bias:
identity??!conv2d_63/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCallinputsdense_50_dense_50_kerneldense_50_dense_50_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_50_layer_call_and_return_conditional_losses_8349?
reshape_11/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0.conv2d_transpose_11_conv2d_transpose_11_kernel,conv2d_transpose_11_conv2d_transpose_11_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0conv2d_63_conv2d_63_kernelconv2d_63_conv2d_63_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383?
IdentityIdentity*conv2d_63/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp"^conv2d_63/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__traced_restore_8854
file_prefix3
 assignvariableop_dense_50_kernel:	?b/
 assignvariableop_1_dense_50_bias:	?bG
-assignvariableop_2_conv2d_transpose_11_kernel: @9
+assignvariableop_3_conv2d_transpose_11_bias: =
#assignvariableop_4_conv2d_63_kernel: /
!assignvariableop_5_conv2d_63_bias:

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_50_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_50_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp-assignvariableop_2_conv2d_transpose_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp+assignvariableop_3_conv2d_transpose_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_63_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_63_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference__traced_save_8826
file_prefix.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Y
_input_shapesH
F: :	?b:?b: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?b:!

_output_shapes	
:?b:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
?
E
)__inference_reshape_11_layer_call_fn_8712

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_11_layer_call_fn_8733

inputs4
conv2d_transpose_11_kernel: @&
conv2d_transpose_11_bias: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_11_kernelconv2d_transpose_11_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
B__inference_dense_50_layer_call_and_return_conditional_losses_8349

inputs8
%matmul_readvariableop_dense_50_kernel:	?b3
$biasadd_readvariableop_dense_50_bias:	?b
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp|
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_50_kernel*
_output_shapes
:	?b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bx
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_50_bias*
_output_shapes	
:?b*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????bb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????bw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_model_20_layer_call_and_return_conditional_losses_8388

inputs+
dense_50_dense_50_kernel:	?b%
dense_50_dense_50_bias:	?bH
.conv2d_transpose_11_conv2d_transpose_11_kernel: @:
,conv2d_transpose_11_conv2d_transpose_11_bias: 4
conv2d_63_conv2d_63_kernel: &
conv2d_63_conv2d_63_bias:
identity??!conv2d_63/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCallinputsdense_50_dense_50_kerneldense_50_dense_50_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_50_layer_call_and_return_conditional_losses_8349?
reshape_11/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0.conv2d_transpose_11_conv2d_transpose_11_kernel,conv2d_transpose_11_conv2d_transpose_11_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0conv2d_63_conv2d_63_kernelconv2d_63_conv2d_63_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383?
IdentityIdentity*conv2d_63/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp"^conv2d_63/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_model_20_layer_call_and_return_conditional_losses_8544
input_10+
dense_50_dense_50_kernel:	?b%
dense_50_dense_50_bias:	?bH
.conv2d_transpose_11_conv2d_transpose_11_kernel: @:
,conv2d_transpose_11_conv2d_transpose_11_bias: 4
conv2d_63_conv2d_63_kernel: &
conv2d_63_conv2d_63_bias:
identity??!conv2d_63/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall? dense_50/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCallinput_10dense_50_dense_50_kerneldense_50_dense_50_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_50_layer_call_and_return_conditional_losses_8349?
reshape_11/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_11_layer_call_and_return_conditional_losses_8367?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_11/PartitionedCall:output:0.conv2d_transpose_11_conv2d_transpose_11_kernel,conv2d_transpose_11_conv2d_transpose_11_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8292?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:0conv2d_63_conv2d_63_kernelconv2d_63_conv2d_63_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8383?
IdentityIdentity*conv2d_63/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp"^conv2d_63/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10
?;
?
B__inference_model_20_layer_call_and_return_conditional_losses_8689

inputsA
.dense_50_matmul_readvariableop_dense_50_kernel:	?b<
-dense_50_biasadd_readvariableop_dense_50_bias:	?bh
Nconv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel: @Q
Cconv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias: J
0conv2d_63_conv2d_readvariableop_conv2d_63_kernel: =
/conv2d_63_biasadd_readvariableop_conv2d_63_bias:
identity?? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?
dense_50/MatMul/ReadVariableOpReadVariableOp.dense_50_matmul_readvariableop_dense_50_kernel*
_output_shapes
:	?b*
dtype0|
dense_50/MatMulMatMulinputs&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b?
dense_50/BiasAdd/ReadVariableOpReadVariableOp-dense_50_biasadd_readvariableop_dense_50_bias*
_output_shapes	
:?b*
dtype0?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bc
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:??????????b[
reshape_11/ShapeShapedense_50/Relu:activations:0*
T0*
_output_shapes
:h
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_11/ReshapeReshapedense_50/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????@d
conv2d_transpose_11/ShapeShapereshape_11/Reshape:output:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpNconv2d_transpose_11_conv2d_transpose_readvariableop_conv2d_transpose_11_kernel*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0reshape_11/Reshape:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOpCconv2d_transpose_11_biasadd_readvariableop_conv2d_transpose_11_bias*
_output_shapes
: *
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
conv2d_transpose_11/ReluRelu$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp0conv2d_63_conv2d_readvariableop_conv2d_63_kernel*&
_output_shapes
: *
dtype0?
conv2d_63/Conv2DConv2D&conv2d_transpose_11/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp/conv2d_63_biasadd_readvariableop_conv2d_63_bias*
_output_shapes
:*
dtype0?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????r
conv2d_63/SigmoidSigmoidconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:?????????l
IdentityIdentityconv2d_63/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:?????????: : : : : : 2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8785

inputs@
&conv2d_readvariableop_conv2d_63_kernel: 3
%biasadd_readvariableop_conv2d_63_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_63_kernel*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
x
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_63_bias*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:?????????b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
B__inference_dense_50_layer_call_and_return_conditional_losses_8707

inputs8
%matmul_readvariableop_dense_50_kernel:	?b3
$biasadd_readvariableop_dense_50_bias:	?b
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp|
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_50_kernel*
_output_shapes
:	?b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bx
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_50_bias*
_output_shapes	
:?b*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????bQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????bb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????bw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_101
serving_default_input_10:0?????????E
	conv2d_638
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?y
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op"
_tf_keras_layer
J
0
1
"2
#3
+4
,5"
trackable_list_wrapper
J
0
1
"2
#3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
3trace_0
4trace_1
5trace_2
6trace_32?
'__inference_model_20_layer_call_fn_8397
'__inference_model_20_layer_call_fn_8582
'__inference_model_20_layer_call_fn_8593
'__inference_model_20_layer_call_fn_8530?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z3trace_0z4trace_1z5trace_2z6trace_3
?
7trace_0
8trace_1
9trace_2
:trace_32?
B__inference_model_20_layer_call_and_return_conditional_losses_8641
B__inference_model_20_layer_call_and_return_conditional_losses_8689
B__inference_model_20_layer_call_and_return_conditional_losses_8544
B__inference_model_20_layer_call_and_return_conditional_losses_8558?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z7trace_0z8trace_1z9trace_2z:trace_3
?B?
__inference__wrapped_model_8254input_10"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
;serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Atrace_02?
'__inference_dense_50_layer_call_fn_8696?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zAtrace_0
?
Btrace_02?
B__inference_dense_50_layer_call_and_return_conditional_losses_8707?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zBtrace_0
": 	?b2dense_50/kernel
:?b2dense_50/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Htrace_02?
)__inference_reshape_11_layer_call_fn_8712?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zHtrace_0
?
Itrace_02?
D__inference_reshape_11_layer_call_and_return_conditional_losses_8726?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zItrace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
Otrace_02?
2__inference_conv2d_transpose_11_layer_call_fn_8733?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zOtrace_0
?
Ptrace_02?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8767?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zPtrace_0
4:2 @2conv2d_transpose_11/kernel
&:$ 2conv2d_transpose_11/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?
Vtrace_02?
(__inference_conv2d_63_layer_call_fn_8774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zVtrace_0
?
Wtrace_02?
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zWtrace_0
*:( 2conv2d_63/kernel
:2conv2d_63/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_model_20_layer_call_fn_8397input_10"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_20_layer_call_fn_8582inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_20_layer_call_fn_8593inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_20_layer_call_fn_8530input_10"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_20_layer_call_and_return_conditional_losses_8641inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_20_layer_call_and_return_conditional_losses_8689inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_20_layer_call_and_return_conditional_losses_8544input_10"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_model_20_layer_call_and_return_conditional_losses_8558input_10"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_8571input_10"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dense_50_layer_call_fn_8696inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dense_50_layer_call_and_return_conditional_losses_8707inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_reshape_11_layer_call_fn_8712inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_reshape_11_layer_call_and_return_conditional_losses_8726inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv2d_transpose_11_layer_call_fn_8733inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8767inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv2d_63_layer_call_fn_8774inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8785inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_8254z"#+,1?.
'?$
"?
input_10?????????
? "=?:
8
	conv2d_63+?(
	conv2d_63??????????
C__inference_conv2d_63_layer_call_and_return_conditional_losses_8785l+,7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????
? ?
(__inference_conv2d_63_layer_call_fn_8774_+,7?4
-?*
(?%
inputs????????? 
? " ???????????
M__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_8767?"#I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
2__inference_conv2d_transpose_11_layer_call_fn_8733?"#I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
B__inference_dense_50_layer_call_and_return_conditional_losses_8707]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????b
? {
'__inference_dense_50_layer_call_fn_8696P/?,
%?"
 ?
inputs?????????
? "???????????b?
B__inference_model_20_layer_call_and_return_conditional_losses_8544r"#+,9?6
/?,
"?
input_10?????????
p 

 
? "-?*
#? 
0?????????
? ?
B__inference_model_20_layer_call_and_return_conditional_losses_8558r"#+,9?6
/?,
"?
input_10?????????
p

 
? "-?*
#? 
0?????????
? ?
B__inference_model_20_layer_call_and_return_conditional_losses_8641p"#+,7?4
-?*
 ?
inputs?????????
p 

 
? "-?*
#? 
0?????????
? ?
B__inference_model_20_layer_call_and_return_conditional_losses_8689p"#+,7?4
-?*
 ?
inputs?????????
p

 
? "-?*
#? 
0?????????
? ?
'__inference_model_20_layer_call_fn_8397e"#+,9?6
/?,
"?
input_10?????????
p 

 
? " ???????????
'__inference_model_20_layer_call_fn_8530e"#+,9?6
/?,
"?
input_10?????????
p

 
? " ???????????
'__inference_model_20_layer_call_fn_8582c"#+,7?4
-?*
 ?
inputs?????????
p 

 
? " ???????????
'__inference_model_20_layer_call_fn_8593c"#+,7?4
-?*
 ?
inputs?????????
p

 
? " ???????????
D__inference_reshape_11_layer_call_and_return_conditional_losses_8726a0?-
&?#
!?
inputs??????????b
? "-?*
#? 
0?????????@
? ?
)__inference_reshape_11_layer_call_fn_8712T0?-
&?#
!?
inputs??????????b
? " ??????????@?
"__inference_signature_wrapper_8571?"#+,=?:
? 
3?0
.
input_10"?
input_10?????????"=?:
8
	conv2d_63+?(
	conv2d_63?????????