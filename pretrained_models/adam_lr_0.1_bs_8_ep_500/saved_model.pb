¢¥
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68«è
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
Ü<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*<
value<B< B<
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
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ  
ç
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2macro_conv2d_3/kernelmacro_conv2d_3/biasmacro_conv2d_4/kernelmacro_conv2d_4/biasmacro_conv2d_5/kernelmacro_conv2d_5/biasdense_1/kerneldense_1/bias*
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
GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_572799
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
æ
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_573029
¡
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_573087öý
»
L
0__inference_max_pooling2d_2_layer_call_fn_572840

inputs
identityÜ
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240
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
´
F
*__inference_flatten_1_layer_call_fn_572932

inputs
identity´
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
GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360a
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
ô
d
H__inference_activation_3_layer_call_and_return_conditional_losses_572290

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
Ð
I
-__inference_activation_3_layer_call_fn_572830

inputs
identityÀ
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_572290j
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
×	
Û
$__inference_signature_wrapper_572799
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 **
f%R#
!__inference__wrapped_model_572231o
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
_user_specified_name	input_2
ì
d
H__inference_activation_5_layer_call_and_return_conditional_losses_572352

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
ÁB
û
C__inference_model_1_layer_call_and_return_conditional_losses_572776

inputsJ
*macro_conv2d_3_mul_readvariableop_resource:  8
*macro_conv2d_3_add_readvariableop_resource:H
*macro_conv2d_4_mul_readvariableop_resource:OO8
*macro_conv2d_4_add_readvariableop_resource:H
*macro_conv2d_5_mul_readvariableop_resource:&&8
*macro_conv2d_5_add_readvariableop_resource:9
&dense_1_matmul_readvariableop_resource:	Q5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢!macro_conv2d_3/add/ReadVariableOp¢!macro_conv2d_3/mul/ReadVariableOp¢!macro_conv2d_4/add/ReadVariableOp¢!macro_conv2d_4/mul/ReadVariableOp¢!macro_conv2d_5/add/ReadVariableOp¢!macro_conv2d_5/mul/ReadVariableOph
macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_3/ExpandDims
ExpandDimsinputs&macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
!macro_conv2d_3/mul/ReadVariableOpReadVariableOp*macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¨
macro_conv2d_3/mulMul"macro_conv2d_3/ExpandDims:output:0)macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  f
$macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_3/SumSummacro_conv2d_3/mul:z:0-macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  ¸
macro_conv2d_3/AvgPool2DAvgPoolmacro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ
!macro_conv2d_3/add/ReadVariableOpReadVariableOp*macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_3/addAddV2macro_conv2d_3/mul_1:z:0)macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
activation_3/ReluRelumacro_conv2d_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
max_pooling2d_2/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
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
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_4/ExpandDims
ExpandDims max_pooling2d_2/MaxPool:output:0&macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
!macro_conv2d_4/mul/ReadVariableOpReadVariableOp*macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_4/mulMul"macro_conv2d_4/ExpandDims:output:0)macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOf
$macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_4/SumSummacro_conv2d_4/mul:z:0-macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¶
macro_conv2d_4/AvgPool2DAvgPoolmacro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMM
!macro_conv2d_4/add/ReadVariableOpReadVariableOp*macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_4/addAddV2macro_conv2d_4/mul_1:z:0)macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMk
activation_4/ReluRelumacro_conv2d_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM°
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
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
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_5/ExpandDims
ExpandDims max_pooling2d_3/MaxPool:output:0&macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
!macro_conv2d_5/mul/ReadVariableOpReadVariableOp*macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_5/mulMul"macro_conv2d_5/ExpandDims:output:0)macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&f
$macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_5/SumSummacro_conv2d_5/mul:z:0-macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¶
macro_conv2d_5/AvgPool2DAvgPoolmacro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$
!macro_conv2d_5/add/ReadVariableOpReadVariableOp*macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_5/addAddV2macro_conv2d_5/mul_1:z:0)macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$k
activation_5/ReluRelumacro_conv2d_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  
flatten_1/ReshapeReshapeactivation_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^macro_conv2d_3/add/ReadVariableOp"^macro_conv2d_3/mul/ReadVariableOp"^macro_conv2d_4/add/ReadVariableOp"^macro_conv2d_4/mul/ReadVariableOp"^macro_conv2d_5/add/ReadVariableOp"^macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
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
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252

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
ì
d
H__inference_activation_4_layer_call_and_return_conditional_losses_572321

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
*
Ñ
C__inference_model_1_layer_call_and_return_conditional_losses_572616
input_25
macro_conv2d_3_572589:  #
macro_conv2d_3_572591:3
macro_conv2d_4_572596:OO#
macro_conv2d_4_572598:3
macro_conv2d_5_572603:&&#
macro_conv2d_5_572605:!
dense_1_572610:	Q
dense_1_572612:
identity¢dense_1/StatefulPartitionedCall¢&macro_conv2d_3/StatefulPartitionedCall¢&macro_conv2d_4/StatefulPartitionedCall¢&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_2macro_conv2d_3_572589macro_conv2d_3_572591*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279ö
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_572290ð
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240µ
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_572596macro_conv2d_4_572598*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310ô
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_572321ð
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252µ
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_572603macro_conv2d_5_572605*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341ô
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_572352Ý
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_572610dense_1_572612*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_572373w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_2
Æ

(__inference_dense_1_layer_call_fn_572947

inputs
unknown:	Q
	unknown_0:
identity¢StatefulPartitionedCallÛ
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
GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_572373o
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


õ
C__inference_dense_1_layer_call_and_return_conditional_losses_572373

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
ô
d
H__inference_activation_3_layer_call_and_return_conditional_losses_572835

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
Ç
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_572938

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
½
ù
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572917

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
*
Ñ
C__inference_model_1_layer_call_and_return_conditional_losses_572586
input_25
macro_conv2d_3_572559:  #
macro_conv2d_3_572561:3
macro_conv2d_4_572566:OO#
macro_conv2d_4_572568:3
macro_conv2d_5_572573:&&#
macro_conv2d_5_572575:!
dense_1_572580:	Q
dense_1_572582:
identity¢dense_1/StatefulPartitionedCall¢&macro_conv2d_3/StatefulPartitionedCall¢&macro_conv2d_4/StatefulPartitionedCall¢&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinput_2macro_conv2d_3_572559macro_conv2d_3_572561*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279ö
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_572290ð
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240µ
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_572566macro_conv2d_4_572568*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310ô
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_572321ð
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252µ
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_572573macro_conv2d_5_572575*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341ô
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_572352Ý
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_572580dense_1_572582*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_572373w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_2
ý	
ß
(__inference_model_1_layer_call_fn_572399
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_572380o
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
_user_specified_name	input_2
Ó
û
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572825

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
½
ù
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341

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


õ
C__inference_dense_1_layer_call_and_return_conditional_losses_572958

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
Ì(
Ô
__inference__traced_save_573029
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
value,B*B B B B B B B B B B B B B B B B B è
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

ª
/__inference_macro_conv2d_3_layer_call_fn_572808

inputs'
unknown:  
	unknown_0:
identity¢StatefulPartitionedCallì
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279y
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
ý	
ß
(__inference_model_1_layer_call_fn_572556
input_2'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_572516o
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
_user_specified_name	input_2
*
Ð
C__inference_model_1_layer_call_and_return_conditional_losses_572380

inputs5
macro_conv2d_3_572280:  #
macro_conv2d_3_572282:3
macro_conv2d_4_572311:OO#
macro_conv2d_4_572313:3
macro_conv2d_5_572342:&&#
macro_conv2d_5_572344:!
dense_1_572374:	Q
dense_1_572376:
identity¢dense_1/StatefulPartitionedCall¢&macro_conv2d_3/StatefulPartitionedCall¢&macro_conv2d_4/StatefulPartitionedCall¢&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_3_572280macro_conv2d_3_572282*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279ö
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_572290ð
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240µ
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_572311macro_conv2d_4_572313*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310ô
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_572321ð
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252µ
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_572342macro_conv2d_5_572344*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341ô
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_572352Ý
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_572374dense_1_572376*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_572373w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
È
I
-__inference_activation_4_layer_call_fn_572876

inputs
identity¾
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_572321h
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
»
L
0__inference_max_pooling2d_3_layer_call_fn_572886

inputs
identityÜ
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252
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
Ç
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360

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
½
ù
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572871

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
ý
¨
/__inference_macro_conv2d_4_layer_call_fn_572854

inputs%
unknown:OO
	unknown_0:
identity¢StatefulPartitionedCallê
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310w
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
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572891

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
ì
d
H__inference_activation_4_layer_call_and_return_conditional_losses_572881

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
òJ
Ú
!__inference__wrapped_model_572231
input_2R
2model_1_macro_conv2d_3_mul_readvariableop_resource:  @
2model_1_macro_conv2d_3_add_readvariableop_resource:P
2model_1_macro_conv2d_4_mul_readvariableop_resource:OO@
2model_1_macro_conv2d_4_add_readvariableop_resource:P
2model_1_macro_conv2d_5_mul_readvariableop_resource:&&@
2model_1_macro_conv2d_5_add_readvariableop_resource:A
.model_1_dense_1_matmul_readvariableop_resource:	Q=
/model_1_dense_1_biasadd_readvariableop_resource:
identity¢&model_1/dense_1/BiasAdd/ReadVariableOp¢%model_1/dense_1/MatMul/ReadVariableOp¢)model_1/macro_conv2d_3/add/ReadVariableOp¢)model_1/macro_conv2d_3/mul/ReadVariableOp¢)model_1/macro_conv2d_4/add/ReadVariableOp¢)model_1/macro_conv2d_4/mul/ReadVariableOp¢)model_1/macro_conv2d_5/add/ReadVariableOp¢)model_1/macro_conv2d_5/mul/ReadVariableOpp
%model_1/macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¨
!model_1/macro_conv2d_3/ExpandDims
ExpandDimsinput_2.model_1/macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  ª
)model_1/macro_conv2d_3/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0À
model_1/macro_conv2d_3/mulMul*model_1/macro_conv2d_3/ExpandDims:output:01model_1/macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  n
,model_1/macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :´
model_1/macro_conv2d_3/SumSummodel_1/macro_conv2d_3/mul:z:05model_1/macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  È
 model_1/macro_conv2d_3/AvgPool2DAvgPool#model_1/macro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
 *  A³
model_1/macro_conv2d_3/mul_1Mul)model_1/macro_conv2d_3/AvgPool2D:output:0'model_1/macro_conv2d_3/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_1/macro_conv2d_3/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0´
model_1/macro_conv2d_3/addAddV2 model_1/macro_conv2d_3/mul_1:z:01model_1/macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
model_1/activation_3/ReluRelumodel_1/macro_conv2d_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
model_1/max_pooling2d_2/MaxPoolMaxPool'model_1/activation_3/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
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
ÿÿÿÿÿÿÿÿÿÇ
!model_1/macro_conv2d_4/ExpandDims
ExpandDims(model_1/max_pooling2d_2/MaxPool:output:0.model_1/macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO¨
)model_1/macro_conv2d_4/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¾
model_1/macro_conv2d_4/mulMul*model_1/macro_conv2d_4/ExpandDims:output:01model_1/macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOn
,model_1/macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :²
model_1/macro_conv2d_4/SumSummodel_1/macro_conv2d_4/mul:z:05model_1/macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOOÆ
 model_1/macro_conv2d_4/AvgPool2DAvgPool#model_1/macro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
 *  A±
model_1/macro_conv2d_4/mul_1Mul)model_1/macro_conv2d_4/AvgPool2D:output:0'model_1/macro_conv2d_4/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
)model_1/macro_conv2d_4/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0²
model_1/macro_conv2d_4/addAddV2 model_1/macro_conv2d_4/mul_1:z:01model_1/macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM{
model_1/activation_4/ReluRelumodel_1/macro_conv2d_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMÀ
model_1/max_pooling2d_3/MaxPoolMaxPool'model_1/activation_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
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
ÿÿÿÿÿÿÿÿÿÇ
!model_1/macro_conv2d_5/ExpandDims
ExpandDims(model_1/max_pooling2d_3/MaxPool:output:0.model_1/macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&¨
)model_1/macro_conv2d_5/mul/ReadVariableOpReadVariableOp2model_1_macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¾
model_1/macro_conv2d_5/mulMul*model_1/macro_conv2d_5/ExpandDims:output:01model_1/macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&n
,model_1/macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :²
model_1/macro_conv2d_5/SumSummodel_1/macro_conv2d_5/mul:z:05model_1/macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&Æ
 model_1/macro_conv2d_5/AvgPool2DAvgPool#model_1/macro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
 *  A±
model_1/macro_conv2d_5/mul_1Mul)model_1/macro_conv2d_5/AvgPool2D:output:0'model_1/macro_conv2d_5/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
)model_1/macro_conv2d_5/add/ReadVariableOpReadVariableOp2model_1_macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0²
model_1/macro_conv2d_5/addAddV2 model_1/macro_conv2d_5/mul_1:z:01model_1/macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$${
model_1/activation_5/ReluRelumodel_1/macro_conv2d_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$h
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  ¢
model_1/flatten_1/ReshapeReshape'model_1/activation_5/Relu:activations:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0¥
model_1/dense_1/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_1/dense_1/SigmoidSigmoid model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitymodel_1/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp*^model_1/macro_conv2d_3/add/ReadVariableOp*^model_1/macro_conv2d_3/mul/ReadVariableOp*^model_1/macro_conv2d_4/add/ReadVariableOp*^model_1/macro_conv2d_4/mul/ReadVariableOp*^model_1/macro_conv2d_5/add/ReadVariableOp*^model_1/macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2P
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
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_2
Ó
û
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279

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
ý
¨
/__inference_macro_conv2d_5_layer_call_fn_572900

inputs%
unknown:&&
	unknown_0:
identity¢StatefulPartitionedCallê
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341w
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

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240

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
ú	
Þ
(__inference_model_1_layer_call_fn_572641

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall©
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
GPU2*0J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_572380o
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
È
I
-__inference_activation_5_layer_call_fn_572922

inputs
identity¾
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_572352h
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
ú	
Þ
(__inference_model_1_layer_call_fn_572662

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity¢StatefulPartitionedCall©
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
GPU2*0J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_572516o
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
ÁB
û
C__inference_model_1_layer_call_and_return_conditional_losses_572719

inputsJ
*macro_conv2d_3_mul_readvariableop_resource:  8
*macro_conv2d_3_add_readvariableop_resource:H
*macro_conv2d_4_mul_readvariableop_resource:OO8
*macro_conv2d_4_add_readvariableop_resource:H
*macro_conv2d_5_mul_readvariableop_resource:&&8
*macro_conv2d_5_add_readvariableop_resource:9
&dense_1_matmul_readvariableop_resource:	Q5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢!macro_conv2d_3/add/ReadVariableOp¢!macro_conv2d_3/mul/ReadVariableOp¢!macro_conv2d_4/add/ReadVariableOp¢!macro_conv2d_4/mul/ReadVariableOp¢!macro_conv2d_5/add/ReadVariableOp¢!macro_conv2d_5/mul/ReadVariableOph
macro_conv2d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_3/ExpandDims
ExpandDimsinputs&macro_conv2d_3/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
!macro_conv2d_3/mul/ReadVariableOpReadVariableOp*macro_conv2d_3_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¨
macro_conv2d_3/mulMul"macro_conv2d_3/ExpandDims:output:0)macro_conv2d_3/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  f
$macro_conv2d_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_3/SumSummacro_conv2d_3/mul:z:0-macro_conv2d_3/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  ¸
macro_conv2d_3/AvgPool2DAvgPoolmacro_conv2d_3/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ
!macro_conv2d_3/add/ReadVariableOpReadVariableOp*macro_conv2d_3_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_3/addAddV2macro_conv2d_3/mul_1:z:0)macro_conv2d_3/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
activation_3/ReluRelumacro_conv2d_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
max_pooling2d_2/MaxPoolMaxPoolactivation_3/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
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
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_4/ExpandDims
ExpandDims max_pooling2d_2/MaxPool:output:0&macro_conv2d_4/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
!macro_conv2d_4/mul/ReadVariableOpReadVariableOp*macro_conv2d_4_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_4/mulMul"macro_conv2d_4/ExpandDims:output:0)macro_conv2d_4/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOf
$macro_conv2d_4/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_4/SumSummacro_conv2d_4/mul:z:0-macro_conv2d_4/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¶
macro_conv2d_4/AvgPool2DAvgPoolmacro_conv2d_4/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMM
!macro_conv2d_4/add/ReadVariableOpReadVariableOp*macro_conv2d_4_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_4/addAddV2macro_conv2d_4/mul_1:z:0)macro_conv2d_4/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMk
activation_4/ReluRelumacro_conv2d_4/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM°
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
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
ÿÿÿÿÿÿÿÿÿ¯
macro_conv2d_5/ExpandDims
ExpandDims max_pooling2d_3/MaxPool:output:0&macro_conv2d_5/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
!macro_conv2d_5/mul/ReadVariableOpReadVariableOp*macro_conv2d_5_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_5/mulMul"macro_conv2d_5/ExpandDims:output:0)macro_conv2d_5/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&f
$macro_conv2d_5/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_5/SumSummacro_conv2d_5/mul:z:0-macro_conv2d_5/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¶
macro_conv2d_5/AvgPool2DAvgPoolmacro_conv2d_5/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$
!macro_conv2d_5/add/ReadVariableOpReadVariableOp*macro_conv2d_5_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_5/addAddV2macro_conv2d_5/mul_1:z:0)macro_conv2d_5/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$k
activation_5/ReluRelumacro_conv2d_5/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ(  
flatten_1/ReshapeReshapeactivation_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp"^macro_conv2d_3/add/ReadVariableOp"^macro_conv2d_3/mul/ReadVariableOp"^macro_conv2d_4/add/ReadVariableOp"^macro_conv2d_4/mul/ReadVariableOp"^macro_conv2d_5/add/ReadVariableOp"^macro_conv2d_5/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
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
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572845

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
½
ù
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310

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
ü@
À	
"__inference__traced_restore_573087
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
ì
d
H__inference_activation_5_layer_call_and_return_conditional_losses_572927

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
*
Ð
C__inference_model_1_layer_call_and_return_conditional_losses_572516

inputs5
macro_conv2d_3_572489:  #
macro_conv2d_3_572491:3
macro_conv2d_4_572496:OO#
macro_conv2d_4_572498:3
macro_conv2d_5_572503:&&#
macro_conv2d_5_572505:!
dense_1_572510:	Q
dense_1_572512:
identity¢dense_1/StatefulPartitionedCall¢&macro_conv2d_3/StatefulPartitionedCall¢&macro_conv2d_4/StatefulPartitionedCall¢&macro_conv2d_5/StatefulPartitionedCall
&macro_conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_3_572489macro_conv2d_3_572491*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572279ö
activation_3/PartitionedCallPartitionedCall/macro_conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_572290ð
max_pooling2d_2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572240µ
&macro_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0macro_conv2d_4_572496macro_conv2d_4_572498*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572310ô
activation_4/PartitionedCallPartitionedCall/macro_conv2d_4/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_572321ð
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
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
GPU2*0J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572252µ
&macro_conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0macro_conv2d_5_572503macro_conv2d_5_572505*
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
GPU2*0J 8 *S
fNRL
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572341ô
activation_5/PartitionedCallPartitionedCall/macro_conv2d_5/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_572352Ý
flatten_1/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
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
GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_572360
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_572510dense_1_572512*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_572373w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp ^dense_1/StatefulPartitionedCall'^macro_conv2d_3/StatefulPartitionedCall'^macro_conv2d_4/StatefulPartitionedCall'^macro_conv2d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2P
&macro_conv2d_3/StatefulPartitionedCall&macro_conv2d_3/StatefulPartitionedCall2P
&macro_conv2d_4/StatefulPartitionedCall&macro_conv2d_4/StatefulPartitionedCall2P
&macro_conv2d_5/StatefulPartitionedCall&macro_conv2d_5/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
E
input_2:
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ  ;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ó¤
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
î2ë
(__inference_model_1_layer_call_fn_572399
(__inference_model_1_layer_call_fn_572641
(__inference_model_1_layer_call_fn_572662
(__inference_model_1_layer_call_fn_572556À
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
Ú2×
C__inference_model_1_layer_call_and_return_conditional_losses_572719
C__inference_model_1_layer_call_and_return_conditional_losses_572776
C__inference_model_1_layer_call_and_return_conditional_losses_572586
C__inference_model_1_layer_call_and_return_conditional_losses_572616À
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
ÌBÉ
!__inference__wrapped_model_572231input_2"
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
Ù2Ö
/__inference_macro_conv2d_3_layer_call_fn_572808¢
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
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572825¢
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
×2Ô
-__inference_activation_3_layer_call_fn_572830¢
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
ò2ï
H__inference_activation_3_layer_call_and_return_conditional_losses_572835¢
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
Ú2×
0__inference_max_pooling2d_2_layer_call_fn_572840¢
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
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572845¢
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
Ù2Ö
/__inference_macro_conv2d_4_layer_call_fn_572854¢
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
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572871¢
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
×2Ô
-__inference_activation_4_layer_call_fn_572876¢
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
ò2ï
H__inference_activation_4_layer_call_and_return_conditional_losses_572881¢
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
Ú2×
0__inference_max_pooling2d_3_layer_call_fn_572886¢
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572891¢
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
Ù2Ö
/__inference_macro_conv2d_5_layer_call_fn_572900¢
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
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572917¢
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
×2Ô
-__inference_activation_5_layer_call_fn_572922¢
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
ò2ï
H__inference_activation_5_layer_call_and_return_conditional_losses_572927¢
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
Ô2Ñ
*__inference_flatten_1_layer_call_fn_572932¢
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
ï2ì
E__inference_flatten_1_layer_call_and_return_conditional_losses_572938¢
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
Ò2Ï
(__inference_dense_1_layer_call_fn_572947¢
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
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_572958¢
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
ËBÈ
$__inference_signature_wrapper_572799input_2"
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
_generic_user_object
!__inference__wrapped_model_572231y)*=>QR:¢7
0¢-
+(
input_2ÿÿÿÿÿÿÿÿÿ  
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ¸
H__inference_activation_3_layer_call_and_return_conditional_losses_572835l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_activation_3_layer_call_fn_572830_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ´
H__inference_activation_4_layer_call_and_return_conditional_losses_572881h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
-__inference_activation_4_layer_call_fn_572876[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª " ÿÿÿÿÿÿÿÿÿMM´
H__inference_activation_5_layer_call_and_return_conditional_losses_572927h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
-__inference_activation_5_layer_call_fn_572922[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª " ÿÿÿÿÿÿÿÿÿ$$¤
C__inference_dense_1_layer_call_and_return_conditional_losses_572958]QR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿQ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_1_layer_call_fn_572947PQR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿQ
ª "ÿÿÿÿÿÿÿÿÿª
E__inference_flatten_1_layer_call_and_return_conditional_losses_572938a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "&¢#

0ÿÿÿÿÿÿÿÿÿQ
 
*__inference_flatten_1_layer_call_fn_572932T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "ÿÿÿÿÿÿÿÿÿQ¾
J__inference_macro_conv2d_3_layer_call_and_return_conditional_losses_572825p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_macro_conv2d_3_layer_call_fn_572808c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª ""ÿÿÿÿÿÿÿÿÿº
J__inference_macro_conv2d_4_layer_call_and_return_conditional_losses_572871l)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
/__inference_macro_conv2d_4_layer_call_fn_572854_)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª " ÿÿÿÿÿÿÿÿÿMMº
J__inference_macro_conv2d_5_layer_call_and_return_conditional_losses_572917l=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
/__inference_macro_conv2d_5_layer_call_fn_572900_=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª " ÿÿÿÿÿÿÿÿÿ$$î
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_572845R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_2_layer_call_fn_572840R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_572891R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_3_layer_call_fn_572886R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
C__inference_model_1_layer_call_and_return_conditional_losses_572586u)*=>QRB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
C__inference_model_1_layer_call_and_return_conditional_losses_572616u)*=>QRB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
C__inference_model_1_layer_call_and_return_conditional_losses_572719t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
C__inference_model_1_layer_call_and_return_conditional_losses_572776t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_model_1_layer_call_fn_572399h)*=>QRB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_1_layer_call_fn_572556h)*=>QRB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_1_layer_call_fn_572641g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_1_layer_call_fn_572662g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ­
$__inference_signature_wrapper_572799)*=>QRE¢B
¢ 
;ª8
6
input_2+(
input_2ÿÿÿÿÿÿÿÿÿ  "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ