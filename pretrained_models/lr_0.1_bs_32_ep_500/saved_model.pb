ø
ä
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
¼
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
Á
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
executor_typestring ¨
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68á

macro_conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *$
shared_namemacro_conv2d/kernel

'macro_conv2d/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d/kernel*,
_output_shapes
:  *
dtype0
z
macro_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namemacro_conv2d/bias
s
%macro_conv2d/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d/bias*
_output_shapes
:*
dtype0

macro_conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*&
shared_namemacro_conv2d_1/kernel

)macro_conv2d_1/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_1/kernel**
_output_shapes
:OO*
dtype0
~
macro_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_1/bias
w
'macro_conv2d_1/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_1/bias*
_output_shapes
:*
dtype0

macro_conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*&
shared_namemacro_conv2d_2/kernel

)macro_conv2d_2/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_2/kernel**
_output_shapes
:&&*
dtype0
~
macro_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_2/bias
w
'macro_conv2d_2/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_2/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Q*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	Q*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
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
Ô<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*<
value<B< Bû;
Ä
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
¦

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
¦

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
¦

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
¦

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
°
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
c]
VARIABLE_VALUEmacro_conv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmacro_conv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEmacro_conv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEmacro_conv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ  
à
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1macro_conv2d/kernelmacro_conv2d/biasmacro_conv2d_1/kernelmacro_conv2d_1/biasmacro_conv2d_2/kernelmacro_conv2d_2/biasdense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1023961
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ß
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'macro_conv2d/kernel/Read/ReadVariableOp%macro_conv2d/bias/Read/ReadVariableOp)macro_conv2d_1/kernel/Read/ReadVariableOp'macro_conv2d_1/bias/Read/ReadVariableOp)macro_conv2d_2/kernel/Read/ReadVariableOp'macro_conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
 __inference__traced_save_1024191

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemacro_conv2d/kernelmacro_conv2d/biasmacro_conv2d_1/kernelmacro_conv2d_1/biasmacro_conv2d_2/kernelmacro_conv2d_2/biasdense/kernel
dense/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
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
#__inference__traced_restore_1024249§÷
ó
c
G__inference_activation_layer_call_and_return_conditional_losses_1023997

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
J
.__inference_activation_2_layer_call_fn_1024084

inputs
identity¿
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
í@
¹	
#__inference__traced_restore_1024249
file_prefixD
$assignvariableop_macro_conv2d_kernel:  2
$assignvariableop_1_macro_conv2d_bias:F
(assignvariableop_2_macro_conv2d_1_kernel:OO4
&assignvariableop_3_macro_conv2d_1_bias:F
(assignvariableop_4_macro_conv2d_2_kernel:&&4
&assignvariableop_5_macro_conv2d_2_bias:2
assignvariableop_6_dense_kernel:	Q+
assignvariableop_7_dense_bias:%
assignvariableop_8_sgd_iter:	 &
assignvariableop_9_sgd_decay: /
%assignvariableop_10_sgd_learning_rate: *
 assignvariableop_11_sgd_momentum: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: 
identity_17¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9×
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp$assignvariableop_macro_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp$assignvariableop_1_macro_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_macro_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_macro_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp(assignvariableop_4_macro_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp&assignvariableop_5_macro_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
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
 ¯
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
Ä

'__inference_dense_layer_call_fn_1024109

inputs
unknown:	Q
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1023535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿQ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
 
_user_specified_nameinputs
¾
ú
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1024079

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
û	
Þ
'__inference_model_layer_call_fn_1023718
input_1'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1023678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
ó
c
G__inference_activation_layer_call_and_return_conditional_losses_1023452

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Ý
'__inference_model_layer_call_fn_1023824

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1023678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1024007

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û	
Þ
'__inference_model_layer_call_fn_1023561
input_1'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1023542o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
¿A
ê
B__inference_model_layer_call_and_return_conditional_losses_1023938

inputsH
(macro_conv2d_mul_readvariableop_resource:  6
(macro_conv2d_add_readvariableop_resource:H
*macro_conv2d_1_mul_readvariableop_resource:OO8
*macro_conv2d_1_add_readvariableop_resource:H
*macro_conv2d_2_mul_readvariableop_resource:&&8
*macro_conv2d_2_add_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	Q3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢macro_conv2d/add/ReadVariableOp¢macro_conv2d/mul/ReadVariableOp¢!macro_conv2d_1/add/ReadVariableOp¢!macro_conv2d_1/mul/ReadVariableOp¢!macro_conv2d_2/add/ReadVariableOp¢!macro_conv2d_2/mul/ReadVariableOpf
macro_conv2d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d/ExpandDims
ExpandDimsinputs$macro_conv2d/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
macro_conv2d/mul/ReadVariableOpReadVariableOp(macro_conv2d_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¢
macro_conv2d/mulMul macro_conv2d/ExpandDims:output:0'macro_conv2d/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  d
"macro_conv2d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d/SumSummacro_conv2d/mul:z:0+macro_conv2d/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  ´
macro_conv2d/AvgPool2DAvgPoolmacro_conv2d/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Y
macro_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d/mul_1Mulmacro_conv2d/AvgPool2D:output:0macro_conv2d/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
macro_conv2d/add/ReadVariableOpReadVariableOp(macro_conv2d_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d/addAddV2macro_conv2d/mul_1:z:0'macro_conv2d/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
activation/ReluRelumacro_conv2d/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ­
macro_conv2d_1/ExpandDims
ExpandDimsmax_pooling2d/MaxPool:output:0&macro_conv2d_1/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
!macro_conv2d_1/mul/ReadVariableOpReadVariableOp*macro_conv2d_1_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_1/mulMul"macro_conv2d_1/ExpandDims:output:0)macro_conv2d_1/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOf
$macro_conv2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_1/SumSummacro_conv2d_1/mul:z:0-macro_conv2d_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¶
macro_conv2d_1/AvgPool2DAvgPoolmacro_conv2d_1/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_1/mul_1Mul!macro_conv2d_1/AvgPool2D:output:0macro_conv2d_1/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
!macro_conv2d_1/add/ReadVariableOpReadVariableOp*macro_conv2d_1_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_1/addAddV2macro_conv2d_1/mul_1:z:0)macro_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMk
activation_1/ReluRelumacro_conv2d_1/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM°
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_2/ExpandDims
ExpandDims max_pooling2d_1/MaxPool:output:0&macro_conv2d_2/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
!macro_conv2d_2/mul/ReadVariableOpReadVariableOp*macro_conv2d_2_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_2/mulMul"macro_conv2d_2/ExpandDims:output:0)macro_conv2d_2/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&f
$macro_conv2d_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_2/SumSummacro_conv2d_2/mul:z:0-macro_conv2d_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¶
macro_conv2d_2/AvgPool2DAvgPoolmacro_conv2d_2/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_2/mul_1Mul!macro_conv2d_2/AvgPool2D:output:0macro_conv2d_2/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
!macro_conv2d_2/add/ReadVariableOpReadVariableOp*macro_conv2d_2_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_2/addAddV2macro_conv2d_2/mul_1:z:0)macro_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$k
activation_2/ReluRelumacro_conv2d_2/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  
flatten/ReshapeReshapeactivation_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^macro_conv2d/add/ReadVariableOp ^macro_conv2d/mul/ReadVariableOp"^macro_conv2d_1/add/ReadVariableOp"^macro_conv2d_1/mul/ReadVariableOp"^macro_conv2d_2/add/ReadVariableOp"^macro_conv2d_2/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
macro_conv2d/add/ReadVariableOpmacro_conv2d/add/ReadVariableOp2B
macro_conv2d/mul/ReadVariableOpmacro_conv2d/mul/ReadVariableOp2F
!macro_conv2d_1/add/ReadVariableOp!macro_conv2d_1/add/ReadVariableOp2F
!macro_conv2d_1/mul/ReadVariableOp!macro_conv2d_1/mul/ReadVariableOp2F
!macro_conv2d_2/add/ReadVariableOp!macro_conv2d_2/add/ReadVariableOp2F
!macro_conv2d_2/mul/ReadVariableOp!macro_conv2d_2/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
²
E
)__inference_flatten_layer_call_fn_1024094

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1023522a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_layer_call_and_return_conditional_losses_1024100

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
í
e
I__inference_activation_1_layer_call_and_return_conditional_losses_1024043

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs


ô
B__inference_dense_layer_call_and_return_conditional_losses_1024120

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿQ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
 
_user_specified_nameinputs
ø	
Ý
'__inference_model_layer_call_fn_1023803

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1023542o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ð)
Ë
B__inference_model_layer_call_and_return_conditional_losses_1023678

inputs4
macro_conv2d_1023651:  "
macro_conv2d_1023653:4
macro_conv2d_1_1023658:OO$
macro_conv2d_1_1023660:4
macro_conv2d_2_1023665:&&$
macro_conv2d_2_1023667: 
dense_1023672:	Q
dense_1023674:
identity¢dense/StatefulPartitionedCall¢$macro_conv2d/StatefulPartitionedCall¢&macro_conv2d_1/StatefulPartitionedCall¢&macro_conv2d_2/StatefulPartitionedCall
$macro_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_1023651macro_conv2d_1023653*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441ñ
activation/PartitionedCallPartitionedCall-macro_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1023452ë
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402¶
&macro_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0macro_conv2d_1_1023658macro_conv2d_1_1023660*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472õ
activation_1/PartitionedCallPartitionedCall/macro_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483ñ
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414¸
&macro_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0macro_conv2d_2_1023665macro_conv2d_2_1023667*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503õ
activation_2/PartitionedCallPartitionedCall/macro_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514Ú
flatten/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1023522
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1023672dense_1023674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1023535u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense/StatefulPartitionedCall%^macro_conv2d/StatefulPartitionedCall'^macro_conv2d_1/StatefulPartitionedCall'^macro_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$macro_conv2d/StatefulPartitionedCall$macro_conv2d/StatefulPartitionedCall2P
&macro_conv2d_1/StatefulPartitionedCall&macro_conv2d_1/StatefulPartitionedCall2P
&macro_conv2d_2/StatefulPartitionedCall&macro_conv2d_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
í
e
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
¹
K
/__inference_max_pooling2d_layer_call_fn_1024002

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó)
Ì
B__inference_model_layer_call_and_return_conditional_losses_1023778
input_14
macro_conv2d_1023751:  "
macro_conv2d_1023753:4
macro_conv2d_1_1023758:OO$
macro_conv2d_1_1023760:4
macro_conv2d_2_1023765:&&$
macro_conv2d_2_1023767: 
dense_1023772:	Q
dense_1023774:
identity¢dense/StatefulPartitionedCall¢$macro_conv2d/StatefulPartitionedCall¢&macro_conv2d_1/StatefulPartitionedCall¢&macro_conv2d_2/StatefulPartitionedCall
$macro_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1macro_conv2d_1023751macro_conv2d_1023753*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441ñ
activation/PartitionedCallPartitionedCall-macro_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1023452ë
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402¶
&macro_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0macro_conv2d_1_1023758macro_conv2d_1_1023760*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472õ
activation_1/PartitionedCallPartitionedCall/macro_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483ñ
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414¸
&macro_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0macro_conv2d_2_1023765macro_conv2d_2_1023767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503õ
activation_2/PartitionedCallPartitionedCall/macro_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514Ú
flatten/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1023522
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1023772dense_1023774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1023535u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense/StatefulPartitionedCall%^macro_conv2d/StatefulPartitionedCall'^macro_conv2d_1/StatefulPartitionedCall'^macro_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$macro_conv2d/StatefulPartitionedCall$macro_conv2d/StatefulPartitionedCall2P
&macro_conv2d_1/StatefulPartitionedCall&macro_conv2d_1/StatefulPartitionedCall2P
&macro_conv2d_2/StatefulPartitionedCall&macro_conv2d_2/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
¾
ú
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
Ò
ú
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿy

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¾
ú
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs
í
e
I__inference_activation_2_layer_call_and_return_conditional_losses_1024089

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
½(
Í
 __inference__traced_save_1024191
file_prefix2
.savev2_macro_conv2d_kernel_read_readvariableop0
,savev2_macro_conv2d_bias_read_readvariableop4
0savev2_macro_conv2d_1_kernel_read_readvariableop2
.savev2_macro_conv2d_1_bias_read_readvariableop4
0savev2_macro_conv2d_2_kernel_read_readvariableop2
.savev2_macro_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: Ô
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B à
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_macro_conv2d_kernel_read_readvariableop,savev2_macro_conv2d_bias_read_readvariableop0savev2_macro_conv2d_1_kernel_read_readvariableop.savev2_macro_conv2d_1_bias_read_readvariableop0savev2_macro_conv2d_2_kernel_read_readvariableop.savev2_macro_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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

f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
ú
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1024033

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs
Ù	
Ü
%__inference_signature_wrapper_1023961
input_1'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1023393o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
Ê
J
.__inference_activation_1_layer_call_fn_1024038

inputs
identity¿
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
í
e
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs

©
.__inference_macro_conv2d_layer_call_fn_1023970

inputs'
unknown:  
	unknown_0:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_1_layer_call_fn_1024048

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_layer_call_and_return_conditional_losses_1023522

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1024053

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
ú
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023987

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identity¢add/ReadVariableOp¢mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿy

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ÿ
©
0__inference_macro_conv2d_2_layer_call_fn_1024062

inputs%
unknown:&&
	unknown_0:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
ð)
Ë
B__inference_model_layer_call_and_return_conditional_losses_1023542

inputs4
macro_conv2d_1023442:  "
macro_conv2d_1023444:4
macro_conv2d_1_1023473:OO$
macro_conv2d_1_1023475:4
macro_conv2d_2_1023504:&&$
macro_conv2d_2_1023506: 
dense_1023536:	Q
dense_1023538:
identity¢dense/StatefulPartitionedCall¢$macro_conv2d/StatefulPartitionedCall¢&macro_conv2d_1/StatefulPartitionedCall¢&macro_conv2d_2/StatefulPartitionedCall
$macro_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_1023442macro_conv2d_1023444*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441ñ
activation/PartitionedCallPartitionedCall-macro_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1023452ë
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402¶
&macro_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0macro_conv2d_1_1023473macro_conv2d_1_1023475*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472õ
activation_1/PartitionedCallPartitionedCall/macro_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483ñ
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414¸
&macro_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0macro_conv2d_2_1023504macro_conv2d_2_1023506*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503õ
activation_2/PartitionedCallPartitionedCall/macro_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514Ú
flatten/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1023522
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1023536dense_1023538*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1023535u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense/StatefulPartitionedCall%^macro_conv2d/StatefulPartitionedCall'^macro_conv2d_1/StatefulPartitionedCall'^macro_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$macro_conv2d/StatefulPartitionedCall$macro_conv2d/StatefulPartitionedCall2P
&macro_conv2d_1/StatefulPartitionedCall&macro_conv2d_1/StatefulPartitionedCall2P
&macro_conv2d_2/StatefulPartitionedCall&macro_conv2d_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


ô
B__inference_dense_layer_call_and_return_conditional_losses_1023535

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿQ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
 
_user_specified_nameinputs
Î
H
,__inference_activation_layer_call_fn_1023992

inputs
identity¿
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1023452j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó)
Ì
B__inference_model_layer_call_and_return_conditional_losses_1023748
input_14
macro_conv2d_1023721:  "
macro_conv2d_1023723:4
macro_conv2d_1_1023728:OO$
macro_conv2d_1_1023730:4
macro_conv2d_2_1023735:&&$
macro_conv2d_2_1023737: 
dense_1023742:	Q
dense_1023744:
identity¢dense/StatefulPartitionedCall¢$macro_conv2d/StatefulPartitionedCall¢&macro_conv2d_1/StatefulPartitionedCall¢&macro_conv2d_2/StatefulPartitionedCall
$macro_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1macro_conv2d_1023721macro_conv2d_1023723*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023441ñ
activation/PartitionedCallPartitionedCall-macro_conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1023452ë
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1023402¶
&macro_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0macro_conv2d_1_1023728macro_conv2d_1_1023730*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472õ
activation_1/PartitionedCallPartitionedCall/macro_conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_1023483ñ
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1023414¸
&macro_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0macro_conv2d_2_1023735macro_conv2d_2_1023737*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1023503õ
activation_2/PartitionedCallPartitionedCall/macro_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_1023514Ú
flatten/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1023522
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1023742dense_1023744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1023535u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense/StatefulPartitionedCall%^macro_conv2d/StatefulPartitionedCall'^macro_conv2d_1/StatefulPartitionedCall'^macro_conv2d_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$macro_conv2d/StatefulPartitionedCall$macro_conv2d/StatefulPartitionedCall2P
&macro_conv2d_1/StatefulPartitionedCall&macro_conv2d_1/StatefulPartitionedCall2P
&macro_conv2d_2/StatefulPartitionedCall&macro_conv2d_2/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
¿A
ê
B__inference_model_layer_call_and_return_conditional_losses_1023881

inputsH
(macro_conv2d_mul_readvariableop_resource:  6
(macro_conv2d_add_readvariableop_resource:H
*macro_conv2d_1_mul_readvariableop_resource:OO8
*macro_conv2d_1_add_readvariableop_resource:H
*macro_conv2d_2_mul_readvariableop_resource:&&8
*macro_conv2d_2_add_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	Q3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢macro_conv2d/add/ReadVariableOp¢macro_conv2d/mul/ReadVariableOp¢!macro_conv2d_1/add/ReadVariableOp¢!macro_conv2d_1/mul/ReadVariableOp¢!macro_conv2d_2/add/ReadVariableOp¢!macro_conv2d_2/mul/ReadVariableOpf
macro_conv2d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d/ExpandDims
ExpandDimsinputs$macro_conv2d/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
macro_conv2d/mul/ReadVariableOpReadVariableOp(macro_conv2d_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¢
macro_conv2d/mulMul macro_conv2d/ExpandDims:output:0'macro_conv2d/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  d
"macro_conv2d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d/SumSummacro_conv2d/mul:z:0+macro_conv2d/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  ´
macro_conv2d/AvgPool2DAvgPoolmacro_conv2d/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
Y
macro_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d/mul_1Mulmacro_conv2d/AvgPool2D:output:0macro_conv2d/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
macro_conv2d/add/ReadVariableOpReadVariableOp(macro_conv2d_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d/addAddV2macro_conv2d/mul_1:z:0'macro_conv2d/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
activation/ReluRelumacro_conv2d/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ­
macro_conv2d_1/ExpandDims
ExpandDimsmax_pooling2d/MaxPool:output:0&macro_conv2d_1/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
!macro_conv2d_1/mul/ReadVariableOpReadVariableOp*macro_conv2d_1_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_1/mulMul"macro_conv2d_1/ExpandDims:output:0)macro_conv2d_1/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOf
$macro_conv2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_1/SumSummacro_conv2d_1/mul:z:0-macro_conv2d_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¶
macro_conv2d_1/AvgPool2DAvgPoolmacro_conv2d_1/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_1/mul_1Mul!macro_conv2d_1/AvgPool2D:output:0macro_conv2d_1/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
!macro_conv2d_1/add/ReadVariableOpReadVariableOp*macro_conv2d_1_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_1/addAddV2macro_conv2d_1/mul_1:z:0)macro_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMk
activation_1/ReluRelumacro_conv2d_1/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM°
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_2/ExpandDims
ExpandDims max_pooling2d_1/MaxPool:output:0&macro_conv2d_2/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
!macro_conv2d_2/mul/ReadVariableOpReadVariableOp*macro_conv2d_2_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_2/mulMul"macro_conv2d_2/ExpandDims:output:0)macro_conv2d_2/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&f
$macro_conv2d_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_2/SumSummacro_conv2d_2/mul:z:0-macro_conv2d_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¶
macro_conv2d_2/AvgPool2DAvgPoolmacro_conv2d_2/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_2/mul_1Mul!macro_conv2d_2/AvgPool2D:output:0macro_conv2d_2/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
!macro_conv2d_2/add/ReadVariableOpReadVariableOp*macro_conv2d_2_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_2/addAddV2macro_conv2d_2/mul_1:z:0)macro_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$k
activation_2/ReluRelumacro_conv2d_2/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  
flatten/ReshapeReshapeactivation_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^macro_conv2d/add/ReadVariableOp ^macro_conv2d/mul/ReadVariableOp"^macro_conv2d_1/add/ReadVariableOp"^macro_conv2d_1/mul/ReadVariableOp"^macro_conv2d_2/add/ReadVariableOp"^macro_conv2d_2/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
macro_conv2d/add/ReadVariableOpmacro_conv2d/add/ReadVariableOp2B
macro_conv2d/mul/ReadVariableOpmacro_conv2d/mul/ReadVariableOp2F
!macro_conv2d_1/add/ReadVariableOp!macro_conv2d_1/add/ReadVariableOp2F
!macro_conv2d_1/mul/ReadVariableOp!macro_conv2d_1/mul/ReadVariableOp2F
!macro_conv2d_2/add/ReadVariableOp!macro_conv2d_2/add/ReadVariableOp2F
!macro_conv2d_2/mul/ReadVariableOp!macro_conv2d_2/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ßG
«
"__inference__wrapped_model_1023393
input_1N
.model_macro_conv2d_mul_readvariableop_resource:  <
.model_macro_conv2d_add_readvariableop_resource:N
0model_macro_conv2d_1_mul_readvariableop_resource:OO>
0model_macro_conv2d_1_add_readvariableop_resource:N
0model_macro_conv2d_2_mul_readvariableop_resource:&&>
0model_macro_conv2d_2_add_readvariableop_resource:=
*model_dense_matmul_readvariableop_resource:	Q9
+model_dense_biasadd_readvariableop_resource:
identity¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¢%model/macro_conv2d/add/ReadVariableOp¢%model/macro_conv2d/mul/ReadVariableOp¢'model/macro_conv2d_1/add/ReadVariableOp¢'model/macro_conv2d_1/mul/ReadVariableOp¢'model/macro_conv2d_2/add/ReadVariableOp¢'model/macro_conv2d_2/mul/ReadVariableOpl
!model/macro_conv2d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
model/macro_conv2d/ExpandDims
ExpandDimsinput_1*model/macro_conv2d/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  ¢
%model/macro_conv2d/mul/ReadVariableOpReadVariableOp.model_macro_conv2d_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0´
model/macro_conv2d/mulMul&model/macro_conv2d/ExpandDims:output:0-model/macro_conv2d/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  j
(model/macro_conv2d/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¨
model/macro_conv2d/SumSummodel/macro_conv2d/mul:z:01model/macro_conv2d/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  À
model/macro_conv2d/AvgPool2DAvgPoolmodel/macro_conv2d/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
_
model/macro_conv2d/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A§
model/macro_conv2d/mul_1Mul%model/macro_conv2d/AvgPool2D:output:0#model/macro_conv2d/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model/macro_conv2d/add/ReadVariableOpReadVariableOp.model_macro_conv2d_add_readvariableop_resource*
_output_shapes
:*
dtype0¨
model/macro_conv2d/addAddV2model/macro_conv2d/mul_1:z:0-model/macro_conv2d/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
model/activation/ReluRelumodel/macro_conv2d/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
model/max_pooling2d/MaxPoolMaxPool#model/activation/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
n
#model/macro_conv2d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¿
model/macro_conv2d_1/ExpandDims
ExpandDims$model/max_pooling2d/MaxPool:output:0,model/macro_conv2d_1/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO¤
'model/macro_conv2d_1/mul/ReadVariableOpReadVariableOp0model_macro_conv2d_1_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¸
model/macro_conv2d_1/mulMul(model/macro_conv2d_1/ExpandDims:output:0/model/macro_conv2d_1/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOl
*model/macro_conv2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¬
model/macro_conv2d_1/SumSummodel/macro_conv2d_1/mul:z:03model/macro_conv2d_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOOÂ
model/macro_conv2d_1/AvgPool2DAvgPool!model/macro_conv2d_1/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
a
model/macro_conv2d_1/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A«
model/macro_conv2d_1/mul_1Mul'model/macro_conv2d_1/AvgPool2D:output:0%model/macro_conv2d_1/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
'model/macro_conv2d_1/add/ReadVariableOpReadVariableOp0model_macro_conv2d_1_add_readvariableop_resource*
_output_shapes
:*
dtype0¬
model/macro_conv2d_1/addAddV2model/macro_conv2d_1/mul_1:z:0/model/macro_conv2d_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMw
model/activation_1/ReluRelumodel/macro_conv2d_1/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM¼
model/max_pooling2d_1/MaxPoolMaxPool%model/activation_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
n
#model/macro_conv2d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÁ
model/macro_conv2d_2/ExpandDims
ExpandDims&model/max_pooling2d_1/MaxPool:output:0,model/macro_conv2d_2/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&¤
'model/macro_conv2d_2/mul/ReadVariableOpReadVariableOp0model_macro_conv2d_2_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¸
model/macro_conv2d_2/mulMul(model/macro_conv2d_2/ExpandDims:output:0/model/macro_conv2d_2/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&l
*model/macro_conv2d_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¬
model/macro_conv2d_2/SumSummodel/macro_conv2d_2/mul:z:03model/macro_conv2d_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&Â
model/macro_conv2d_2/AvgPool2DAvgPool!model/macro_conv2d_2/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
a
model/macro_conv2d_2/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A«
model/macro_conv2d_2/mul_1Mul'model/macro_conv2d_2/AvgPool2D:output:0%model/macro_conv2d_2/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
'model/macro_conv2d_2/add/ReadVariableOpReadVariableOp0model_macro_conv2d_2_add_readvariableop_resource*
_output_shapes
:*
dtype0¬
model/macro_conv2d_2/addAddV2model/macro_conv2d_2/mul_1:z:0/model/macro_conv2d_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$w
model/activation_2/ReluRelumodel/macro_conv2d_2/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  
model/flatten/ReshapeReshape%model/activation_2/Relu:activations:0model/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitymodel/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp&^model/macro_conv2d/add/ReadVariableOp&^model/macro_conv2d/mul/ReadVariableOp(^model/macro_conv2d_1/add/ReadVariableOp(^model/macro_conv2d_1/mul/ReadVariableOp(^model/macro_conv2d_2/add/ReadVariableOp(^model/macro_conv2d_2/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2N
%model/macro_conv2d/add/ReadVariableOp%model/macro_conv2d/add/ReadVariableOp2N
%model/macro_conv2d/mul/ReadVariableOp%model/macro_conv2d/mul/ReadVariableOp2R
'model/macro_conv2d_1/add/ReadVariableOp'model/macro_conv2d_1/add/ReadVariableOp2R
'model/macro_conv2d_1/mul/ReadVariableOp'model/macro_conv2d_1/mul/ReadVariableOp2R
'model/macro_conv2d_2/add/ReadVariableOp'model/macro_conv2d_2/add/ReadVariableOp2R
'model/macro_conv2d_2/mul/ReadVariableOp'model/macro_conv2d_2/mul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_1
ÿ
©
0__inference_macro_conv2d_1_layer_call_fn_1024016

inputs%
unknown:OO
	unknown_0:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1023472w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ  9
dense0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:×¤
Û
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
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
»

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
»

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
»

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
Ê
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
ê2ç
'__inference_model_layer_call_fn_1023561
'__inference_model_layer_call_fn_1023803
'__inference_model_layer_call_fn_1023824
'__inference_model_layer_call_fn_1023718À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
B__inference_model_layer_call_and_return_conditional_losses_1023881
B__inference_model_layer_call_and_return_conditional_losses_1023938
B__inference_model_layer_call_and_return_conditional_losses_1023748
B__inference_model_layer_call_and_return_conditional_losses_1023778À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
"__inference__wrapped_model_1023393input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
bserving_default"
signature_map
3:1  2macro_conv2d/kernel
:2macro_conv2d/bias
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
Ø2Õ
.__inference_macro_conv2d_layer_call_fn_1023970¢
²
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
annotationsª *
 
ó2ð
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023987¢
²
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
annotationsª *
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
Ö2Ó
,__inference_activation_layer_call_fn_1023992¢
²
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
annotationsª *
 
ñ2î
G__inference_activation_layer_call_and_return_conditional_losses_1023997¢
²
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
annotationsª *
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
Ù2Ö
/__inference_max_pooling2d_layer_call_fn_1024002¢
²
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
annotationsª *
 
ô2ñ
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1024007¢
²
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
annotationsª *
 
3:1OO2macro_conv2d_1/kernel
!:2macro_conv2d_1/bias
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
Ú2×
0__inference_macro_conv2d_1_layer_call_fn_1024016¢
²
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
annotationsª *
 
õ2ò
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1024033¢
²
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
annotationsª *
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
Ø2Õ
.__inference_activation_1_layer_call_fn_1024038¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_1_layer_call_and_return_conditional_losses_1024043¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
®
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
Û2Ø
1__inference_max_pooling2d_1_layer_call_fn_1024048¢
²
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
annotationsª *
 
ö2ó
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1024053¢
²
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
annotationsª *
 
3:1&&2macro_conv2d_2/kernel
!:2macro_conv2d_2/bias
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
²
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
Ú2×
0__inference_macro_conv2d_2_layer_call_fn_1024062¢
²
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
annotationsª *
 
õ2ò
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1024079¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
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
Ø2Õ
.__inference_activation_2_layer_call_fn_1024084¢
²
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
annotationsª *
 
ó2ð
I__inference_activation_2_layer_call_and_return_conditional_losses_1024089¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
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
Ó2Ð
)__inference_flatten_layer_call_fn_1024094¢
²
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
annotationsª *
 
î2ë
D__inference_flatten_layer_call_and_return_conditional_losses_1024100¢
²
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
annotationsª *
 
:	Q2dense/kernel
:2
dense/bias
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
²
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
Ñ2Î
'__inference_dense_layer_call_fn_1024109¢
²
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
annotationsª *
 
ì2é
B__inference_dense_layer_call_and_return_conditional_losses_1024120¢
²
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
annotationsª *
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
ÌBÉ
%__inference_signature_wrapper_1023961input_1"
²
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
annotationsª *
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
_generic_user_object
"__inference__wrapped_model_1023393u)*=>QR:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿ  
ª "-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿµ
I__inference_activation_1_layer_call_and_return_conditional_losses_1024043h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
.__inference_activation_1_layer_call_fn_1024038[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª " ÿÿÿÿÿÿÿÿÿMMµ
I__inference_activation_2_layer_call_and_return_conditional_losses_1024089h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
.__inference_activation_2_layer_call_fn_1024084[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª " ÿÿÿÿÿÿÿÿÿ$$·
G__inference_activation_layer_call_and_return_conditional_losses_1023997l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_activation_layer_call_fn_1023992_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ£
B__inference_dense_layer_call_and_return_conditional_losses_1024120]QR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿQ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_dense_layer_call_fn_1024109PQR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿQ
ª "ÿÿÿÿÿÿÿÿÿ©
D__inference_flatten_layer_call_and_return_conditional_losses_1024100a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "&¢#

0ÿÿÿÿÿÿÿÿÿQ
 
)__inference_flatten_layer_call_fn_1024094T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "ÿÿÿÿÿÿÿÿÿQ»
K__inference_macro_conv2d_1_layer_call_and_return_conditional_losses_1024033l)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
0__inference_macro_conv2d_1_layer_call_fn_1024016_)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª " ÿÿÿÿÿÿÿÿÿMM»
K__inference_macro_conv2d_2_layer_call_and_return_conditional_losses_1024079l=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
0__inference_macro_conv2d_2_layer_call_fn_1024062_=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª " ÿÿÿÿÿÿÿÿÿ$$½
I__inference_macro_conv2d_layer_call_and_return_conditional_losses_1023987p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
.__inference_macro_conv2d_layer_call_fn_1023970c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª ""ÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1024053R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_1_layer_call_fn_1024048R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1024007R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_layer_call_fn_1024002R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»
B__inference_model_layer_call_and_return_conditional_losses_1023748u)*=>QRB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
B__inference_model_layer_call_and_return_conditional_losses_1023778u)*=>QRB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
B__inference_model_layer_call_and_return_conditional_losses_1023881t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
B__inference_model_layer_call_and_return_conditional_losses_1023938t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_model_layer_call_fn_1023561h)*=>QRB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_model_layer_call_fn_1023718h)*=>QRB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_model_layer_call_fn_1023803g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_model_layer_call_fn_1023824g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿª
%__inference_signature_wrapper_1023961)*=>QRE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿ  "-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿ