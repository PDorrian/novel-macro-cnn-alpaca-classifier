Ї
ф
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
М
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68бщ

macro_conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *&
shared_namemacro_conv2d_3/kernel

)macro_conv2d_3/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_3/kernel*,
_output_shapes
:  *
dtype0
~
macro_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_3/bias
w
'macro_conv2d_3/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_3/bias*
_output_shapes
:*
dtype0

macro_conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*&
shared_namemacro_conv2d_4/kernel

)macro_conv2d_4/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_4/kernel**
_output_shapes
:OO*
dtype0
~
macro_conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_4/bias
w
'macro_conv2d_4/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_4/bias*
_output_shapes
:*
dtype0

macro_conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*&
shared_namemacro_conv2d_5/kernel

)macro_conv2d_5/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_5/kernel**
_output_shapes
:&&*
dtype0
~
macro_conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_5/bias
w
'macro_conv2d_5/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_5/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Q*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	Q*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
м<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*<
value<B< B<
Ф
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
І

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 

#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
І

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*

1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 

7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
І

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*

E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 

K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
І

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
:
Yiter
	Zdecay
[learning_rate
\momentum*
<
0
1
)2
*3
=4
>5
Q6
R7*
<
0
1
)2
*3
=4
>5
Q6
R7*
* 
А
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

bserving_default* 
e_
VARIABLE_VALUEmacro_conv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 
* 
* 
e_
VARIABLE_VALUEmacro_conv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 
* 
* 
e_
VARIABLE_VALUEmacro_conv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

0
1*
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
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

serving_default_input_2Placeholder*1
_output_shapes
:џџџџџџџџџ  *
dtype0*&
shape:џџџџџџџџџ  
ш
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2macro_conv2d_3/kernelmacro_conv2d_3/biasmacro_conv2d_4/kernelmacro_conv2d_4/biasmacro_conv2d_5/kernelmacro_conv2d_5/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1596855
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)macro_conv2d_3/kernel/Read/ReadVariableOp'macro_conv2d_3/bias/Read/ReadVariableOp)macro_conv2d_4/kernel/Read/ReadVariableOp'macro_conv2d_4/bias/Read/ReadVariableOp)macro_conv2d_5/kernel/Read/ReadVariableOp'macro_conv2d_5/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_1597085
Ђ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemacro_conv2d_3/kernelmacro_conv2d_3/biasmacro_conv2d_4/kernelmacro_conv2d_4/biasmacro_conv2d_5/kernelmacro_conv2d_5/biasdense_1/kerneldense_1/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1597143џ
Э(
е
 __inference__traced_save_1597085
file_prefix4
0savev2_macro_conv2d_3_kernel_read_readvariableop2
.savev2_macro_conv2d_3_bias_read_readvariableop4
0savev2_macro_conv2d_4_kernel_read_readvariableop2
.savev2_macro_conv2d_4_bias_read_readvariableop4
0savev2_macro_conv2d_5_kernel_read_readvariableop2
.savev2_macro_conv2d_5_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: д
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*§
valueѓB№B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_macro_conv2d_3_kernel_read_readvariableop.savev2_macro_conv2d_3_bias_read_readvariableop0savev2_macro_conv2d_4_kernel_read_readvariableop.savev2_macro_conv2d_4_bias_read_readvariableop0savev2_macro_conv2d_5_kernel_read_readvariableop.savev2_macro_conv2d_5_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes}
{: :  ::OO::&&::	Q:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:2.
,
_output_shapes
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::%!

_output_shapes
:	Q: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ш

)__inference_dense_1_layer_call_fn_1597003

inputs
unknown:	Q
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџQ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџQ
 
_user_specified_nameinputs
э
e
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџMM:W S
/
_output_shapes
:џџџџџџџџџMM
 
_user_specified_nameinputs
О
њ
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Al
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ&&
 
_user_specified_nameinputs
О
њ
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596927

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Al
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџOO
 
_user_specified_nameinputs
й	
м
%__inference_signature_wrapper_1596855
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1596287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2
џ
Љ
0__inference_macro_conv2d_5_layer_call_fn_1596956

inputs%
unknown:&&
	unknown_0:
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ&&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ&&
 
_user_specified_nameinputs
О
њ
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Al
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџOO
 
_user_specified_nameinputs
ѕ
e
I__inference_activation_3_layer_call_and_return_conditional_losses_1596891

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:џџџџџџџџџd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596947

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


і
D__inference_dense_1_layer_call_and_return_conditional_losses_1597014

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџQ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџQ
 
_user_specified_nameinputs
ѓJ
л
"__inference__wrapped_model_1596287
input_2R
2model_1_macro_conv2d_3_mul_readvariableop_resource:  @
2model_1_macro_conv2d_3_add_readvariableop_resource:P
2model_1_macro_conv2d_4_mul_readvariableop_resource:OO@
2model_1_macro_conv2d_4_add_readvariableop_resource:P
2model_1_macro_conv2d_5_mul_readvariableop_resource:&&@
2model_1_macro_conv2d_5_add_readvariableop_resource:A
.model_1_dense_1_matmul_readvariableop_resource:	Q=
/model_1_dense_1_biasadd_readvariableop_resource:
identityЂ&model_1/dense_1/BiasAdd/ReadVariableOpЂ%model_1/dense_1/MatMul/ReadVariableOpЂ)model_1/macro_conv2d_3/add/ReadVariableOpЂ)model_1/macro_conv2d_3/mul/ReadVariableOpЂ)model_1/macro_conv2d_4/add/ReadVariableOpЂ)model_1/macro_conv2d_4/mul/ReadVariableOpЂ)model_1/macro_conv2d_5/add/ReadVariableOpЂ)model_1/macro_conv2d_5/mul/ReadVariableOpp
%model_1/macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЈ
!model_1/macro_conv2d_3/ExpandDims
ExpandDimsinput_2.model_1/macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  Њ
)model_1/macro_conv2d_3/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0Р
model_1/macro_conv2d_3/mulMul*model_1/macro_conv2d_3/ExpandDims:output:01model_1/macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  n
,model_1/macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Д
model_1/macro_conv2d_3/SumSummodel_1/macro_conv2d_3/mul:z:05model_1/macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:џџџџџџџџџ  Ш
 model_1/macro_conv2d_3/AvgPool2DAvgPool#model_1/macro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
c
model_1/macro_conv2d_3/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  AГ
model_1/macro_conv2d_3/mul_1Mul)model_1/macro_conv2d_3/AvgPool2D:output:0'model_1/macro_conv2d_3/mul_1/y:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
)model_1/macro_conv2d_3/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0Д
model_1/macro_conv2d_3/addAddV2 model_1/macro_conv2d_3/mul_1:z:01model_1/macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ}
model_1/activation_3/ReluRelumodel_1/macro_conv2d_3/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџР
model_1/max_pooling2d_2/MaxPoolMaxPool'model_1/activation_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџOO*
ksize
*
paddingVALID*
strides
p
%model_1/macro_conv2d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЧ
!model_1/macro_conv2d_4/ExpandDims
ExpandDims(model_1/max_pooling2d_2/MaxPool:output:0.model_1/macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџOOЈ
)model_1/macro_conv2d_4/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0О
model_1/macro_conv2d_4/mulMul*model_1/macro_conv2d_4/ExpandDims:output:01model_1/macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџOOn
,model_1/macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :В
model_1/macro_conv2d_4/SumSummodel_1/macro_conv2d_4/mul:z:05model_1/macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџOOЦ
 model_1/macro_conv2d_4/AvgPool2DAvgPool#model_1/macro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM*
ksize
*
paddingVALID*
strides
c
model_1/macro_conv2d_4/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  AБ
model_1/macro_conv2d_4/mul_1Mul)model_1/macro_conv2d_4/AvgPool2D:output:0'model_1/macro_conv2d_4/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM
)model_1/macro_conv2d_4/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0В
model_1/macro_conv2d_4/addAddV2 model_1/macro_conv2d_4/mul_1:z:01model_1/macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџMM{
model_1/activation_4/ReluRelumodel_1/macro_conv2d_4/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџMMР
model_1/max_pooling2d_3/MaxPoolMaxPool'model_1/activation_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ&&*
ksize
*
paddingVALID*
strides
p
%model_1/macro_conv2d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЧ
!model_1/macro_conv2d_5/ExpandDims
ExpandDims(model_1/max_pooling2d_3/MaxPool:output:0.model_1/macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&Ј
)model_1/macro_conv2d_5/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0О
model_1/macro_conv2d_5/mulMul*model_1/macro_conv2d_5/ExpandDims:output:01model_1/macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&n
,model_1/macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :В
model_1/macro_conv2d_5/SumSummodel_1/macro_conv2d_5/mul:z:05model_1/macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&&Ц
 model_1/macro_conv2d_5/AvgPool2DAvgPool#model_1/macro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$*
ksize
*
paddingVALID*
strides
c
model_1/macro_conv2d_5/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  AБ
model_1/macro_conv2d_5/mul_1Mul)model_1/macro_conv2d_5/AvgPool2D:output:0'model_1/macro_conv2d_5/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$
)model_1/macro_conv2d_5/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0В
model_1/macro_conv2d_5/addAddV2 model_1/macro_conv2d_5/mul_1:z:01model_1/macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$${
model_1/activation_5/ReluRelumodel_1/macro_conv2d_5/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџ$$h
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(  Ђ
model_1/flatten_1/ReshapeReshape'model_1/activation_5/Relu:activations:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0Ѕ
model_1/dense_1/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
model_1/dense_1/SigmoidSigmoid model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
IdentityIdentitymodel_1/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp*^model_1/macro_conv2d_3/add/ReadVariableOp*^model_1/macro_conv2d_3/mul/ReadVariableOp*^model_1/macro_conv2d_4/add/ReadVariableOp*^model_1/macro_conv2d_4/mul/ReadVariableOp*^model_1/macro_conv2d_5/add/ReadVariableOp*^model_1/macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2V
)model_1/macro_conv2d_3/add/ReadVariableOp)model_1/macro_conv2d_3/add/ReadVariableOp2V
)model_1/macro_conv2d_3/mul/ReadVariableOp)model_1/macro_conv2d_3/mul/ReadVariableOp2V
)model_1/macro_conv2d_4/add/ReadVariableOp)model_1/macro_conv2d_4/add/ReadVariableOp2V
)model_1/macro_conv2d_4/mul/ReadVariableOp)model_1/macro_conv2d_4/mul/ReadVariableOp2V
)model_1/macro_conv2d_5/add/ReadVariableOp)model_1/macro_conv2d_5/add/ReadVariableOp2V
)model_1/macro_conv2d_5/mul/ReadVariableOp)model_1/macro_conv2d_5/mul/ReadVariableOp:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2
Н
M
1__inference_max_pooling2d_2_layer_call_fn_1596896

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџQY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
э
e
I__inference_activation_4_layer_call_and_return_conditional_losses_1596937

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџMM:W S
/
_output_shapes
:џџџџџџџџџMM
 
_user_specified_nameinputs
џ
Љ
0__inference_macro_conv2d_4_layer_call_fn_1596910

inputs%
unknown:OO
	unknown_0:
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџMM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџOO: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџOO
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596994

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџQY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
д
ќ
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџy

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:џџџџџџџџџ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  An
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*1
_output_shapes
:џџџџџџџџџj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
э
e
I__inference_activation_5_layer_call_and_return_conditional_losses_1596983

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
д
ќ
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596881

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџy

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:џџџџџџџџџ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  An
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*1
_output_shapes
:џџџџџџџџџj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ъ
J
.__inference_activation_4_layer_call_fn_1596932

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџMM:W S
/
_output_shapes
:џџџџџџџџџMM
 
_user_specified_nameinputs
О
њ
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596973

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identityЂadd/ReadVariableOpЂmul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$*
ksize
*
paddingVALID*
strides
L
mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Al
mul_1MulAvgPool2D:output:0mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ&&
 
_user_specified_nameinputs
џ	
р
)__inference_model_1_layer_call_fn_1596612
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1596572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2
Г*
к
D__inference_model_1_layer_call_and_return_conditional_losses_1596642
input_26
macro_conv2d_3_1596615:  $
macro_conv2d_3_1596617:4
macro_conv2d_4_1596622:OO$
macro_conv2d_4_1596624:4
macro_conv2d_5_1596629:&&$
macro_conv2d_5_1596631:"
dense_1_1596636:	Q
dense_1_1596638:
identityЂdense_1/StatefulPartitionedCallЂ&macro_conv2d_3/StatefulPartitionedCallЂ&macro_conv2d_4/StatefulPartitionedCallЂ&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_2macro_conv2d_3_1596615macro_conv2d_3_1596617*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335ї
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346ё
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296И
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_1596622macro_conv2d_4_1596624*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366ѕ
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377ё
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308И
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_1596629macro_conv2d_5_1596631*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397ѕ
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408о
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_1596636dense_1_1596638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2

h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ	
п
)__inference_model_1_layer_call_fn_1596718

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1596572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
А*
й
D__inference_model_1_layer_call_and_return_conditional_losses_1596572

inputs6
macro_conv2d_3_1596545:  $
macro_conv2d_3_1596547:4
macro_conv2d_4_1596552:OO$
macro_conv2d_4_1596554:4
macro_conv2d_5_1596559:&&$
macro_conv2d_5_1596561:"
dense_1_1596566:	Q
dense_1_1596568:
identityЂdense_1/StatefulPartitionedCallЂ&macro_conv2d_3/StatefulPartitionedCallЂ&macro_conv2d_4/StatefulPartitionedCallЂ&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_3_1596545macro_conv2d_3_1596547*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335ї
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346ё
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296И
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_1596552macro_conv2d_4_1596554*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366ѕ
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377ё
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308И
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_1596559macro_conv2d_5_1596561*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397ѕ
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408о
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_1596566dense_1_1596568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ТB
ќ
D__inference_model_1_layer_call_and_return_conditional_losses_1596775

inputsJ
*macro_conv2d_3_mul_readvariableop_resource:  8
*macro_conv2d_3_add_readvariableop_resource:H
*macro_conv2d_4_mul_readvariableop_resource:OO8
*macro_conv2d_4_add_readvariableop_resource:H
*macro_conv2d_5_mul_readvariableop_resource:&&8
*macro_conv2d_5_add_readvariableop_resource:9
&dense_1_matmul_readvariableop_resource:	Q5
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ!macro_conv2d_3/add/ReadVariableOpЂ!macro_conv2d_3/mul/ReadVariableOpЂ!macro_conv2d_4/add/ReadVariableOpЂ!macro_conv2d_4/mul/ReadVariableOpЂ!macro_conv2d_5/add/ReadVariableOpЂ!macro_conv2d_5/mul/ReadVariableOph
macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
macro_conv2d_3/ExpandDims
ExpandDimsinputs&macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  
!macro_conv2d_3/mul/ReadVariableOpReadVariableOp*macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0Ј
macro_conv2d_3/mulMul"macro_conv2d_3/ExpandDims:output:0)macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  f
$macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_3/SumSummacro_conv2d_3/mul:z:0-macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:џџџџџџџџџ  И
macro_conv2d_3/AvgPool2DAvgPoolmacro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
[
macro_conv2d_3/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_3/mul_1Mul!macro_conv2d_3/AvgPool2D:output:0macro_conv2d_3/mul_1/y:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
!macro_conv2d_3/add/ReadVariableOpReadVariableOp*macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_3/addAddV2macro_conv2d_3/mul_1:z:0)macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџm
activation_3/ReluRelumacro_conv2d_3/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџА
max_pooling2d_2/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџOO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЏ
macro_conv2d_4/ExpandDims
ExpandDims max_pooling2d_2/MaxPool:output:0&macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџOO
!macro_conv2d_4/mul/ReadVariableOpReadVariableOp*macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0І
macro_conv2d_4/mulMul"macro_conv2d_4/ExpandDims:output:0)macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџOOf
$macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_4/SumSummacro_conv2d_4/mul:z:0-macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџOOЖ
macro_conv2d_4/AvgPool2DAvgPoolmacro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_4/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_4/mul_1Mul!macro_conv2d_4/AvgPool2D:output:0macro_conv2d_4/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM
!macro_conv2d_4/add/ReadVariableOpReadVariableOp*macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_4/addAddV2macro_conv2d_4/mul_1:z:0)macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџMMk
activation_4/ReluRelumacro_conv2d_4/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџMMА
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЏ
macro_conv2d_5/ExpandDims
ExpandDims max_pooling2d_3/MaxPool:output:0&macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&
!macro_conv2d_5/mul/ReadVariableOpReadVariableOp*macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0І
macro_conv2d_5/mulMul"macro_conv2d_5/ExpandDims:output:0)macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&f
$macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_5/SumSummacro_conv2d_5/mul:z:0-macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&&Ж
macro_conv2d_5/AvgPool2DAvgPoolmacro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_5/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_5/mul_1Mul!macro_conv2d_5/AvgPool2D:output:0macro_conv2d_5/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$
!macro_conv2d_5/add/ReadVariableOpReadVariableOp*macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_5/addAddV2macro_conv2d_5/mul_1:z:0)macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$$k
activation_5/ReluRelumacro_conv2d_5/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџ$$`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(  
flatten_1/ReshapeReshapeactivation_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^macro_conv2d_3/add/ReadVariableOp"^macro_conv2d_3/mul/ReadVariableOp"^macro_conv2d_4/add/ReadVariableOp"^macro_conv2d_4/mul/ReadVariableOp"^macro_conv2d_5/add/ReadVariableOp"^macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!macro_conv2d_3/add/ReadVariableOp!macro_conv2d_3/add/ReadVariableOp2F
!macro_conv2d_3/mul/ReadVariableOp!macro_conv2d_3/mul/ReadVariableOp2F
!macro_conv2d_4/add/ReadVariableOp!macro_conv2d_4/add/ReadVariableOp2F
!macro_conv2d_4/mul/ReadVariableOp!macro_conv2d_4/mul/ReadVariableOp2F
!macro_conv2d_5/add/ReadVariableOp!macro_conv2d_5/add/ReadVariableOp2F
!macro_conv2d_5/mul/ReadVariableOp!macro_conv2d_5/mul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Н
M
1__inference_max_pooling2d_3_layer_call_fn_1596942

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ћ
0__inference_macro_conv2d_3_layer_call_fn_1596864

inputs'
unknown:  
	unknown_0:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
§@
С	
#__inference__traced_restore_1597143
file_prefixF
&assignvariableop_macro_conv2d_3_kernel:  4
&assignvariableop_1_macro_conv2d_3_bias:F
(assignvariableop_2_macro_conv2d_4_kernel:OO4
&assignvariableop_3_macro_conv2d_4_bias:F
(assignvariableop_4_macro_conv2d_5_kernel:&&4
&assignvariableop_5_macro_conv2d_5_bias:4
!assignvariableop_6_dense_1_kernel:	Q-
assignvariableop_7_dense_1_bias:%
assignvariableop_8_sgd_iter:	 &
assignvariableop_9_sgd_decay: /
%assignvariableop_10_sgd_learning_rate: *
 assignvariableop_11_sgd_momentum: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: 
identity_17ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*§
valueѓB№B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ѓ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_macro_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_macro_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_macro_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_macro_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp(assignvariableop_4_macro_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp&assignvariableop_5_macro_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_sgd_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp%assignvariableop_10_sgd_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_sgd_momentumIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Џ
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


і
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџQ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџQ
 
_user_specified_nameinputs
Г*
к
D__inference_model_1_layer_call_and_return_conditional_losses_1596672
input_26
macro_conv2d_3_1596645:  $
macro_conv2d_3_1596647:4
macro_conv2d_4_1596652:OO$
macro_conv2d_4_1596654:4
macro_conv2d_5_1596659:&&$
macro_conv2d_5_1596661:"
dense_1_1596666:	Q
dense_1_1596668:
identityЂdense_1/StatefulPartitionedCallЂ&macro_conv2d_3/StatefulPartitionedCallЂ&macro_conv2d_4/StatefulPartitionedCallЂ&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_2macro_conv2d_3_1596645macro_conv2d_3_1596647*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335ї
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346ё
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296И
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_1596652macro_conv2d_4_1596654*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366ѕ
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377ё
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308И
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_1596659macro_conv2d_5_1596661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397ѕ
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408о
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_1596666dense_1_1596668*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2
џ	
р
)__inference_model_1_layer_call_fn_1596455
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1596436o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ  
!
_user_specified_name	input_2

h
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ	
п
)__inference_model_1_layer_call_fn_1596697

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identityЂStatefulPartitionedCallЊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1596436o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ТB
ќ
D__inference_model_1_layer_call_and_return_conditional_losses_1596832

inputsJ
*macro_conv2d_3_mul_readvariableop_resource:  8
*macro_conv2d_3_add_readvariableop_resource:H
*macro_conv2d_4_mul_readvariableop_resource:OO8
*macro_conv2d_4_add_readvariableop_resource:H
*macro_conv2d_5_mul_readvariableop_resource:&&8
*macro_conv2d_5_add_readvariableop_resource:9
&dense_1_matmul_readvariableop_resource:	Q5
'dense_1_biasadd_readvariableop_resource:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂ!macro_conv2d_3/add/ReadVariableOpЂ!macro_conv2d_3/mul/ReadVariableOpЂ!macro_conv2d_4/add/ReadVariableOpЂ!macro_conv2d_4/mul/ReadVariableOpЂ!macro_conv2d_5/add/ReadVariableOpЂ!macro_conv2d_5/mul/ReadVariableOph
macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
macro_conv2d_3/ExpandDims
ExpandDimsinputs&macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  
!macro_conv2d_3/mul/ReadVariableOpReadVariableOp*macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0Ј
macro_conv2d_3/mulMul"macro_conv2d_3/ExpandDims:output:0)macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:џџџџџџџџџ  f
$macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_3/SumSummacro_conv2d_3/mul:z:0-macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:џџџџџџџџџ  И
macro_conv2d_3/AvgPool2DAvgPoolmacro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
[
macro_conv2d_3/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_3/mul_1Mul!macro_conv2d_3/AvgPool2D:output:0macro_conv2d_3/mul_1/y:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
!macro_conv2d_3/add/ReadVariableOpReadVariableOp*macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_3/addAddV2macro_conv2d_3/mul_1:z:0)macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџm
activation_3/ReluRelumacro_conv2d_3/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџА
max_pooling2d_2/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџOO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЏ
macro_conv2d_4/ExpandDims
ExpandDims max_pooling2d_2/MaxPool:output:0&macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџOO
!macro_conv2d_4/mul/ReadVariableOpReadVariableOp*macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0І
macro_conv2d_4/mulMul"macro_conv2d_4/ExpandDims:output:0)macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџOOf
$macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_4/SumSummacro_conv2d_4/mul:z:0-macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџOOЖ
macro_conv2d_4/AvgPool2DAvgPoolmacro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_4/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_4/mul_1Mul!macro_conv2d_4/AvgPool2D:output:0macro_conv2d_4/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџMM
!macro_conv2d_4/add/ReadVariableOpReadVariableOp*macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_4/addAddV2macro_conv2d_4/mul_1:z:0)macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџMMk
activation_4/ReluRelumacro_conv2d_4/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџMMА
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЏ
macro_conv2d_5/ExpandDims
ExpandDims max_pooling2d_3/MaxPool:output:0&macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&
!macro_conv2d_5/mul/ReadVariableOpReadVariableOp*macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0І
macro_conv2d_5/mulMul"macro_conv2d_5/ExpandDims:output:0)macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ&&f
$macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_5/SumSummacro_conv2d_5/mul:z:0-macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:џџџџџџџџџ&&Ж
macro_conv2d_5/AvgPool2DAvgPoolmacro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_5/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_5/mul_1Mul!macro_conv2d_5/AvgPool2D:output:0macro_conv2d_5/mul_1/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$
!macro_conv2d_5/add/ReadVariableOpReadVariableOp*macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_5/addAddV2macro_conv2d_5/mul_1:z:0)macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$$k
activation_5/ReluRelumacro_conv2d_5/add:z:0*
T0*/
_output_shapes
:џџџџџџџџџ$$`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(  
flatten_1/ReshapeReshapeactivation_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџп
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^macro_conv2d_3/add/ReadVariableOp"^macro_conv2d_3/mul/ReadVariableOp"^macro_conv2d_4/add/ReadVariableOp"^macro_conv2d_4/mul/ReadVariableOp"^macro_conv2d_5/add/ReadVariableOp"^macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2F
!macro_conv2d_3/add/ReadVariableOp!macro_conv2d_3/add/ReadVariableOp2F
!macro_conv2d_3/mul/ReadVariableOp!macro_conv2d_3/mul/ReadVariableOp2F
!macro_conv2d_4/add/ReadVariableOp!macro_conv2d_4/add/ReadVariableOp2F
!macro_conv2d_4/mul/ReadVariableOp!macro_conv2d_4/mul/ReadVariableOp2F
!macro_conv2d_5/add/ReadVariableOp!macro_conv2d_5/add/ReadVariableOp2F
!macro_conv2d_5/mul/ReadVariableOp!macro_conv2d_5/mul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596901

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
А*
й
D__inference_model_1_layer_call_and_return_conditional_losses_1596436

inputs6
macro_conv2d_3_1596336:  $
macro_conv2d_3_1596338:4
macro_conv2d_4_1596367:OO$
macro_conv2d_4_1596369:4
macro_conv2d_5_1596398:&&$
macro_conv2d_5_1596400:"
dense_1_1596430:	Q
dense_1_1596432:
identityЂdense_1/StatefulPartitionedCallЂ&macro_conv2d_3/StatefulPartitionedCallЂ&macro_conv2d_4/StatefulPartitionedCallЂ&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_3_1596336macro_conv2d_3_1596338*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596335ї
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346ё
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596296И
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_1596367macro_conv2d_4_1596369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596366ѕ
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_1596377ё
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596308И
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_1596398macro_conv2d_5_1596400*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596397ѕ
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408о
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_1596430dense_1_1596432*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1596429w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
э
e
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
ѕ
e
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:џџџџџџџџџd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ж
G
+__inference_flatten_1_layer_call_fn_1596988

inputs
identityЕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596416a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
Ъ
J
.__inference_activation_5_layer_call_fn_1596978

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_1596408h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$$:W S
/
_output_shapes
:џџџџџџџџџ$$
 
_user_specified_nameinputs
в
J
.__inference_activation_3_layer_call_fn_1596886

inputs
identityС
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_1596346j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Д
serving_default 
E
input_2:
serving_default_input_2:0џџџџџџџџџ  ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЏЅ
л
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Л

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
I
Yiter
	Zdecay
[learning_rate
\momentum"
	optimizer
X
0
1
)2
*3
=4
>5
Q6
R7"
trackable_list_wrapper
X
0
1
)2
*3
=4
>5
Q6
R7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ђ2я
)__inference_model_1_layer_call_fn_1596455
)__inference_model_1_layer_call_fn_1596697
)__inference_model_1_layer_call_fn_1596718
)__inference_model_1_layer_call_fn_1596612Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
D__inference_model_1_layer_call_and_return_conditional_losses_1596775
D__inference_model_1_layer_call_and_return_conditional_losses_1596832
D__inference_model_1_layer_call_and_return_conditional_losses_1596642
D__inference_model_1_layer_call_and_return_conditional_losses_1596672Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЭBЪ
"__inference__wrapped_model_1596287input_2"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,
bserving_default"
signature_map
5:3  2macro_conv2d_3/kernel
!:2macro_conv2d_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
к2з
0__inference_macro_conv2d_3_layer_call_fn_1596864Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596881Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
и2е
.__inference_activation_3_layer_call_fn_1596886Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_3_layer_call_and_return_conditional_losses_1596891Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling2d_2_layer_call_fn_1596896Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596901Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
3:1OO2macro_conv2d_4/kernel
!:2macro_conv2d_4/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
к2з
0__inference_macro_conv2d_4_layer_call_fn_1596910Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596927Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
и2е
.__inference_activation_4_layer_call_fn_1596932Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_4_layer_call_and_return_conditional_losses_1596937Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ў
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
л2и
1__inference_max_pooling2d_3_layer_call_fn_1596942Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
і2ѓ
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596947Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
3:1&&2macro_conv2d_5/kernel
!:2macro_conv2d_5/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
к2з
0__inference_macro_conv2d_5_layer_call_fn_1596956Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕ2ђ
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596973Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
и2е
.__inference_activation_5_layer_call_fn_1596978Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ2№
I__inference_activation_5_layer_call_and_return_conditional_losses_1596983Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_flatten_1_layer_call_fn_1596988Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596994Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!:	Q2dense_1/kernel
:2dense_1/bias
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
г2а
)__inference_dense_1_layer_call_fn_1597003Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_1_layer_call_and_return_conditional_losses_1597014Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBЩ
%__inference_signature_wrapper_1596855input_2"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
"__inference__wrapped_model_1596287y)*=>QR:Ђ7
0Ђ-
+(
input_2џџџџџџџџџ  
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЙ
I__inference_activation_3_layer_call_and_return_conditional_losses_1596891l9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "/Ђ,
%"
0џџџџџџџџџ
 
.__inference_activation_3_layer_call_fn_1596886_9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ ""џџџџџџџџџЕ
I__inference_activation_4_layer_call_and_return_conditional_losses_1596937h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџMM
Њ "-Ђ*
# 
0џџџџџџџџџMM
 
.__inference_activation_4_layer_call_fn_1596932[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџMM
Њ " џџџџџџџџџMMЕ
I__inference_activation_5_layer_call_and_return_conditional_losses_1596983h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$
Њ "-Ђ*
# 
0џџџџџџџџџ$$
 
.__inference_activation_5_layer_call_fn_1596978[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$
Њ " џџџџџџџџџ$$Ѕ
D__inference_dense_1_layer_call_and_return_conditional_losses_1597014]QR0Ђ-
&Ђ#
!
inputsџџџџџџџџџQ
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_dense_1_layer_call_fn_1597003PQR0Ђ-
&Ђ#
!
inputsџџџџџџџџџQ
Њ "џџџџџџџџџЋ
F__inference_flatten_1_layer_call_and_return_conditional_losses_1596994a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$
Њ "&Ђ#

0џџџџџџџџџQ
 
+__inference_flatten_1_layer_call_fn_1596988T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$$
Њ "џџџџџџџџџQП
K__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_1596881p9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ  
Њ "/Ђ,
%"
0џџџџџџџџџ
 
0__inference_macro_conv2d_3_layer_call_fn_1596864c9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ  
Њ ""џџџџџџџџџЛ
K__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_1596927l)*7Ђ4
-Ђ*
(%
inputsџџџџџџџџџOO
Њ "-Ђ*
# 
0џџџџџџџџџMM
 
0__inference_macro_conv2d_4_layer_call_fn_1596910_)*7Ђ4
-Ђ*
(%
inputsџџџџџџџџџOO
Њ " џџџџџџџџџMMЛ
K__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_1596973l=>7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&&
Њ "-Ђ*
# 
0џџџџџџџџџ$$
 
0__inference_macro_conv2d_5_layer_call_fn_1596956_=>7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ&&
Њ " џџџџџџџџџ$$я
L__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1596901RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_2_layer_call_fn_1596896RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџя
L__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1596947RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_3_layer_call_fn_1596942RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџН
D__inference_model_1_layer_call_and_return_conditional_losses_1596642u)*=>QRBЂ?
8Ђ5
+(
input_2џџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Н
D__inference_model_1_layer_call_and_return_conditional_losses_1596672u)*=>QRBЂ?
8Ђ5
+(
input_2џџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ
 М
D__inference_model_1_layer_call_and_return_conditional_losses_1596775t)*=>QRAЂ>
7Ђ4
*'
inputsџџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 М
D__inference_model_1_layer_call_and_return_conditional_losses_1596832t)*=>QRAЂ>
7Ђ4
*'
inputsџџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
)__inference_model_1_layer_call_fn_1596455h)*=>QRBЂ?
8Ђ5
+(
input_2џџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ
)__inference_model_1_layer_call_fn_1596612h)*=>QRBЂ?
8Ђ5
+(
input_2џџџџџџџџџ  
p

 
Њ "џџџџџџџџџ
)__inference_model_1_layer_call_fn_1596697g)*=>QRAЂ>
7Ђ4
*'
inputsџџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ
)__inference_model_1_layer_call_fn_1596718g)*=>QRAЂ>
7Ђ4
*'
inputsџџџџџџџџџ  
p

 
Њ "џџџџџџџџџЎ
%__inference_signature_wrapper_1596855)*=>QREЂB
Ђ 
;Њ8
6
input_2+(
input_2џџџџџџџџџ  "1Њ.
,
dense_1!
dense_1џџџџџџџџџ