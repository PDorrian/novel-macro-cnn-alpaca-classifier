ΙΧ	
δ
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
Ό
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
Α
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ο

macro_conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *&
shared_namemacro_conv2d_6/kernel

)macro_conv2d_6/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_6/kernel*,
_output_shapes
:  *
dtype0
~
macro_conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_6/bias
w
'macro_conv2d_6/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_6/bias*
_output_shapes
:*
dtype0

macro_conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*&
shared_namemacro_conv2d_7/kernel

)macro_conv2d_7/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_7/kernel**
_output_shapes
:OO*
dtype0
~
macro_conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_7/bias
w
'macro_conv2d_7/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_7/bias*
_output_shapes
:*
dtype0

macro_conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*&
shared_namemacro_conv2d_8/kernel

)macro_conv2d_8/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_8/kernel**
_output_shapes
:&&*
dtype0
~
macro_conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namemacro_conv2d_8/bias
w
'macro_conv2d_8/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_8/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Q*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	Q*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
’
Adam/macro_conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *-
shared_nameAdam/macro_conv2d_6/kernel/m

0Adam/macro_conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_6/kernel/m*,
_output_shapes
:  *
dtype0

Adam/macro_conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_6/bias/m

.Adam/macro_conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_6/bias/m*
_output_shapes
:*
dtype0
 
Adam/macro_conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*-
shared_nameAdam/macro_conv2d_7/kernel/m

0Adam/macro_conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_7/kernel/m**
_output_shapes
:OO*
dtype0

Adam/macro_conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_7/bias/m

.Adam/macro_conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_7/bias/m*
_output_shapes
:*
dtype0
 
Adam/macro_conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*-
shared_nameAdam/macro_conv2d_8/kernel/m

0Adam/macro_conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_8/kernel/m**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_8/bias/m

.Adam/macro_conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_8/bias/m*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Q*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	Q*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
’
Adam/macro_conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *-
shared_nameAdam/macro_conv2d_6/kernel/v

0Adam/macro_conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_6/kernel/v*,
_output_shapes
:  *
dtype0

Adam/macro_conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_6/bias/v

.Adam/macro_conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_6/bias/v*
_output_shapes
:*
dtype0
 
Adam/macro_conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*-
shared_nameAdam/macro_conv2d_7/kernel/v

0Adam/macro_conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_7/kernel/v**
_output_shapes
:OO*
dtype0

Adam/macro_conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_7/bias/v

.Adam/macro_conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_7/bias/v*
_output_shapes
:*
dtype0
 
Adam/macro_conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*-
shared_nameAdam/macro_conv2d_8/kernel/v

0Adam/macro_conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_8/kernel/v**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/macro_conv2d_8/bias/v

.Adam/macro_conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_8/bias/v*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Q*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	Q*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?O
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*O
valueOBO BωN
Δ
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
δ
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem‘m’)m£*m€=m₯>m¦Qm§Rm¨v©vͺ)v«*v¬=v­>v?Qv―Rv°*
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
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
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
cserving_default* 
e_
VARIABLE_VALUEmacro_conv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
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
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
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
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 
* 
* 
e_
VARIABLE_VALUEmacro_conv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 

snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
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
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
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

}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 
* 
* 
e_
VARIABLE_VALUEmacro_conv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEmacro_conv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
0
1*
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

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
 	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

VARIABLE_VALUEAdam/macro_conv2d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/macro_conv2d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_3Placeholder*1
_output_shapes
:?????????  *
dtype0*&
shape:?????????  
θ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3macro_conv2d_6/kernelmacro_conv2d_6/biasmacro_conv2d_7/kernelmacro_conv2d_7/biasmacro_conv2d_8/kernelmacro_conv2d_8/biasdense_2/kerneldense_2/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_3211842
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)macro_conv2d_6/kernel/Read/ReadVariableOp'macro_conv2d_6/bias/Read/ReadVariableOp)macro_conv2d_7/kernel/Read/ReadVariableOp'macro_conv2d_7/bias/Read/ReadVariableOp)macro_conv2d_8/kernel/Read/ReadVariableOp'macro_conv2d_8/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0Adam/macro_conv2d_6/kernel/m/Read/ReadVariableOp.Adam/macro_conv2d_6/bias/m/Read/ReadVariableOp0Adam/macro_conv2d_7/kernel/m/Read/ReadVariableOp.Adam/macro_conv2d_7/bias/m/Read/ReadVariableOp0Adam/macro_conv2d_8/kernel/m/Read/ReadVariableOp.Adam/macro_conv2d_8/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp0Adam/macro_conv2d_6/kernel/v/Read/ReadVariableOp.Adam/macro_conv2d_6/bias/v/Read/ReadVariableOp0Adam/macro_conv2d_7/kernel/v/Read/ReadVariableOp.Adam/macro_conv2d_7/bias/v/Read/ReadVariableOp0Adam/macro_conv2d_8/kernel/v/Read/ReadVariableOp.Adam/macro_conv2d_8/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
 __inference__traced_save_3212123
φ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemacro_conv2d_6/kernelmacro_conv2d_6/biasmacro_conv2d_7/kernelmacro_conv2d_7/biasmacro_conv2d_8/kernelmacro_conv2d_8/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/macro_conv2d_6/kernel/mAdam/macro_conv2d_6/bias/mAdam/macro_conv2d_7/kernel/mAdam/macro_conv2d_7/bias/mAdam/macro_conv2d_8/kernel/mAdam/macro_conv2d_8/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/macro_conv2d_6/kernel/vAdam/macro_conv2d_6/bias/vAdam/macro_conv2d_7/kernel/vAdam/macro_conv2d_7/bias/vAdam/macro_conv2d_8/kernel/vAdam/macro_conv2d_8/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*-
Tin&
$2"*
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
#__inference__traced_restore_3212232Τε
°*
Ω
D__inference_model_2_layer_call_and_return_conditional_losses_3211421

inputs6
macro_conv2d_6_3211321:  $
macro_conv2d_6_3211323:4
macro_conv2d_7_3211352:OO$
macro_conv2d_7_3211354:4
macro_conv2d_8_3211383:&&$
macro_conv2d_8_3211385:"
dense_2_3211415:	Q
dense_2_3211417:
identity’dense_2/StatefulPartitionedCall’&macro_conv2d_6/StatefulPartitionedCall’&macro_conv2d_7/StatefulPartitionedCall’&macro_conv2d_8/StatefulPartitionedCall
&macro_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_6_3211321macro_conv2d_6_3211323*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320χ
activation_6/PartitionedCallPartitionedCall/macro_conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331ρ
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????OO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281Έ
&macro_conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0macro_conv2d_7_3211352macro_conv2d_7_3211354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351υ
activation_7/PartitionedCallPartitionedCall/macro_conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362ρ
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293Έ
&macro_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0macro_conv2d_8_3211383macro_conv2d_8_3211385*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382υ
activation_8/PartitionedCallPartitionedCall/macro_conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393ή
flatten_2/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_3211415dense_2_3211417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????γ
NoOpNoOp ^dense_2/StatefulPartitionedCall'^macro_conv2d_6/StatefulPartitionedCall'^macro_conv2d_7/StatefulPartitionedCall'^macro_conv2d_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&macro_conv2d_6/StatefulPartitionedCall&macro_conv2d_6/StatefulPartitionedCall2P
&macro_conv2d_7/StatefulPartitionedCall&macro_conv2d_7/StatefulPartitionedCall2P
&macro_conv2d_8/StatefulPartitionedCall&macro_conv2d_8/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
Θ
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????QY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs
ν
e
I__inference_activation_7_layer_call_and_return_conditional_losses_3211924

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????MMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????MM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????MM:W S
/
_output_shapes
:?????????MM
 
_user_specified_nameinputs
ό	
ί
)__inference_model_2_layer_call_fn_3211705

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity’StatefulPartitionedCallͺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_3211557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
ΒB
ό
D__inference_model_2_layer_call_and_return_conditional_losses_3211819

inputsJ
*macro_conv2d_6_mul_readvariableop_resource:  8
*macro_conv2d_6_add_readvariableop_resource:H
*macro_conv2d_7_mul_readvariableop_resource:OO8
*macro_conv2d_7_add_readvariableop_resource:H
*macro_conv2d_8_mul_readvariableop_resource:&&8
*macro_conv2d_8_add_readvariableop_resource:9
&dense_2_matmul_readvariableop_resource:	Q5
'dense_2_biasadd_readvariableop_resource:
identity’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’!macro_conv2d_6/add/ReadVariableOp’!macro_conv2d_6/mul/ReadVariableOp’!macro_conv2d_7/add/ReadVariableOp’!macro_conv2d_7/mul/ReadVariableOp’!macro_conv2d_8/add/ReadVariableOp’!macro_conv2d_8/mul/ReadVariableOph
macro_conv2d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
macro_conv2d_6/ExpandDims
ExpandDimsinputs&macro_conv2d_6/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:?????????  
!macro_conv2d_6/mul/ReadVariableOpReadVariableOp*macro_conv2d_6_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¨
macro_conv2d_6/mulMul"macro_conv2d_6/ExpandDims:output:0)macro_conv2d_6/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:?????????  f
$macro_conv2d_6/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_6/SumSummacro_conv2d_6/mul:z:0-macro_conv2d_6/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:?????????  Έ
macro_conv2d_6/AvgPool2DAvgPoolmacro_conv2d_6/Sum:output:0*
T0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
[
macro_conv2d_6/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_6/mul_1Mul!macro_conv2d_6/AvgPool2D:output:0macro_conv2d_6/mul_1/y:output:0*
T0*1
_output_shapes
:?????????
!macro_conv2d_6/add/ReadVariableOpReadVariableOp*macro_conv2d_6_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_6/addAddV2macro_conv2d_6/mul_1:z:0)macro_conv2d_6/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????m
activation_6/ReluRelumacro_conv2d_6/add:z:0*
T0*1
_output_shapes
:?????????°
max_pooling2d_4/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:?????????OO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????―
macro_conv2d_7/ExpandDims
ExpandDims max_pooling2d_4/MaxPool:output:0&macro_conv2d_7/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????OO
!macro_conv2d_7/mul/ReadVariableOpReadVariableOp*macro_conv2d_7_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_7/mulMul"macro_conv2d_7/ExpandDims:output:0)macro_conv2d_7/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????OOf
$macro_conv2d_7/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_7/SumSummacro_conv2d_7/mul:z:0-macro_conv2d_7/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????OOΆ
macro_conv2d_7/AvgPool2DAvgPoolmacro_conv2d_7/Sum:output:0*
T0*/
_output_shapes
:?????????MM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_7/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_7/mul_1Mul!macro_conv2d_7/AvgPool2D:output:0macro_conv2d_7/mul_1/y:output:0*
T0*/
_output_shapes
:?????????MM
!macro_conv2d_7/add/ReadVariableOpReadVariableOp*macro_conv2d_7_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_7/addAddV2macro_conv2d_7/mul_1:z:0)macro_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????MMk
activation_7/ReluRelumacro_conv2d_7/add:z:0*
T0*/
_output_shapes
:?????????MM°
max_pooling2d_5/MaxPoolMaxPoolactivation_7/Relu:activations:0*/
_output_shapes
:?????????&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????―
macro_conv2d_8/ExpandDims
ExpandDims max_pooling2d_5/MaxPool:output:0&macro_conv2d_8/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????&&
!macro_conv2d_8/mul/ReadVariableOpReadVariableOp*macro_conv2d_8_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_8/mulMul"macro_conv2d_8/ExpandDims:output:0)macro_conv2d_8/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????&&f
$macro_conv2d_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_8/SumSummacro_conv2d_8/mul:z:0-macro_conv2d_8/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????&&Ά
macro_conv2d_8/AvgPool2DAvgPoolmacro_conv2d_8/Sum:output:0*
T0*/
_output_shapes
:?????????$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_8/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_8/mul_1Mul!macro_conv2d_8/AvgPool2D:output:0macro_conv2d_8/mul_1/y:output:0*
T0*/
_output_shapes
:?????????$$
!macro_conv2d_8/add/ReadVariableOpReadVariableOp*macro_conv2d_8_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_8/addAddV2macro_conv2d_8/mul_1:z:0)macro_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$$k
activation_8/ReluRelumacro_conv2d_8/add:z:0*
T0*/
_output_shapes
:?????????$$`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????(  
flatten_2/ReshapeReshapeactivation_8/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:?????????Q
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ί
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp"^macro_conv2d_6/add/ReadVariableOp"^macro_conv2d_6/mul/ReadVariableOp"^macro_conv2d_7/add/ReadVariableOp"^macro_conv2d_7/mul/ReadVariableOp"^macro_conv2d_8/add/ReadVariableOp"^macro_conv2d_8/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2F
!macro_conv2d_6/add/ReadVariableOp!macro_conv2d_6/add/ReadVariableOp2F
!macro_conv2d_6/mul/ReadVariableOp!macro_conv2d_6/mul/ReadVariableOp2F
!macro_conv2d_7/add/ReadVariableOp!macro_conv2d_7/add/ReadVariableOp2F
!macro_conv2d_7/mul/ReadVariableOp!macro_conv2d_7/mul/ReadVariableOp2F
!macro_conv2d_8/add/ReadVariableOp!macro_conv2d_8/add/ReadVariableOp2F
!macro_conv2d_8/mul/ReadVariableOp!macro_conv2d_8/mul/ReadVariableOp:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211934

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
υ
e
I__inference_activation_6_layer_call_and_return_conditional_losses_3211878

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:?????????d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
³*
Ϊ
D__inference_model_2_layer_call_and_return_conditional_losses_3211657
input_36
macro_conv2d_6_3211630:  $
macro_conv2d_6_3211632:4
macro_conv2d_7_3211637:OO$
macro_conv2d_7_3211639:4
macro_conv2d_8_3211644:&&$
macro_conv2d_8_3211646:"
dense_2_3211651:	Q
dense_2_3211653:
identity’dense_2/StatefulPartitionedCall’&macro_conv2d_6/StatefulPartitionedCall’&macro_conv2d_7/StatefulPartitionedCall’&macro_conv2d_8/StatefulPartitionedCall
&macro_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3macro_conv2d_6_3211630macro_conv2d_6_3211632*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320χ
activation_6/PartitionedCallPartitionedCall/macro_conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331ρ
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????OO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281Έ
&macro_conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0macro_conv2d_7_3211637macro_conv2d_7_3211639*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351υ
activation_7/PartitionedCallPartitionedCall/macro_conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362ρ
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293Έ
&macro_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0macro_conv2d_8_3211644macro_conv2d_8_3211646*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382υ
activation_8/PartitionedCallPartitionedCall/macro_conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393ή
flatten_2/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_3211651dense_2_3211653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????γ
NoOpNoOp ^dense_2/StatefulPartitionedCall'^macro_conv2d_6/StatefulPartitionedCall'^macro_conv2d_7/StatefulPartitionedCall'^macro_conv2d_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&macro_conv2d_6/StatefulPartitionedCall&macro_conv2d_6/StatefulPartitionedCall2P
&macro_conv2d_7/StatefulPartitionedCall&macro_conv2d_7/StatefulPartitionedCall2P
&macro_conv2d_8/StatefulPartitionedCall&macro_conv2d_8/StatefulPartitionedCall:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3
?	
ΰ
)__inference_model_2_layer_call_fn_3211440
input_3'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity’StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_3211421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3
Ύ
ϊ
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????OOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????OOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????OO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:?????????MM*
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
:?????????MMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????MM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????MMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????OO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:?????????OO
 
_user_specified_nameinputs
Τ
ό
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211868

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:?????????  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:?????????  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:?????????  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:?????????*
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
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:?????????p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
ν
e
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????MMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????MM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????MM:W S
/
_output_shapes
:?????????MM
 
_user_specified_nameinputs
ΒB
ό
D__inference_model_2_layer_call_and_return_conditional_losses_3211762

inputsJ
*macro_conv2d_6_mul_readvariableop_resource:  8
*macro_conv2d_6_add_readvariableop_resource:H
*macro_conv2d_7_mul_readvariableop_resource:OO8
*macro_conv2d_7_add_readvariableop_resource:H
*macro_conv2d_8_mul_readvariableop_resource:&&8
*macro_conv2d_8_add_readvariableop_resource:9
&dense_2_matmul_readvariableop_resource:	Q5
'dense_2_biasadd_readvariableop_resource:
identity’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’!macro_conv2d_6/add/ReadVariableOp’!macro_conv2d_6/mul/ReadVariableOp’!macro_conv2d_7/add/ReadVariableOp’!macro_conv2d_7/mul/ReadVariableOp’!macro_conv2d_8/add/ReadVariableOp’!macro_conv2d_8/mul/ReadVariableOph
macro_conv2d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
macro_conv2d_6/ExpandDims
ExpandDimsinputs&macro_conv2d_6/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:?????????  
!macro_conv2d_6/mul/ReadVariableOpReadVariableOp*macro_conv2d_6_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0¨
macro_conv2d_6/mulMul"macro_conv2d_6/ExpandDims:output:0)macro_conv2d_6/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:?????????  f
$macro_conv2d_6/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_6/SumSummacro_conv2d_6/mul:z:0-macro_conv2d_6/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:?????????  Έ
macro_conv2d_6/AvgPool2DAvgPoolmacro_conv2d_6/Sum:output:0*
T0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
[
macro_conv2d_6/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_6/mul_1Mul!macro_conv2d_6/AvgPool2D:output:0macro_conv2d_6/mul_1/y:output:0*
T0*1
_output_shapes
:?????????
!macro_conv2d_6/add/ReadVariableOpReadVariableOp*macro_conv2d_6_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_6/addAddV2macro_conv2d_6/mul_1:z:0)macro_conv2d_6/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????m
activation_6/ReluRelumacro_conv2d_6/add:z:0*
T0*1
_output_shapes
:?????????°
max_pooling2d_4/MaxPoolMaxPoolactivation_6/Relu:activations:0*/
_output_shapes
:?????????OO*
ksize
*
paddingVALID*
strides
h
macro_conv2d_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????―
macro_conv2d_7/ExpandDims
ExpandDims max_pooling2d_4/MaxPool:output:0&macro_conv2d_7/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????OO
!macro_conv2d_7/mul/ReadVariableOpReadVariableOp*macro_conv2d_7_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0¦
macro_conv2d_7/mulMul"macro_conv2d_7/ExpandDims:output:0)macro_conv2d_7/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????OOf
$macro_conv2d_7/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_7/SumSummacro_conv2d_7/mul:z:0-macro_conv2d_7/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????OOΆ
macro_conv2d_7/AvgPool2DAvgPoolmacro_conv2d_7/Sum:output:0*
T0*/
_output_shapes
:?????????MM*
ksize
*
paddingVALID*
strides
[
macro_conv2d_7/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_7/mul_1Mul!macro_conv2d_7/AvgPool2D:output:0macro_conv2d_7/mul_1/y:output:0*
T0*/
_output_shapes
:?????????MM
!macro_conv2d_7/add/ReadVariableOpReadVariableOp*macro_conv2d_7_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_7/addAddV2macro_conv2d_7/mul_1:z:0)macro_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????MMk
activation_7/ReluRelumacro_conv2d_7/add:z:0*
T0*/
_output_shapes
:?????????MM°
max_pooling2d_5/MaxPoolMaxPoolactivation_7/Relu:activations:0*/
_output_shapes
:?????????&&*
ksize
*
paddingVALID*
strides
h
macro_conv2d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????―
macro_conv2d_8/ExpandDims
ExpandDims max_pooling2d_5/MaxPool:output:0&macro_conv2d_8/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????&&
!macro_conv2d_8/mul/ReadVariableOpReadVariableOp*macro_conv2d_8_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0¦
macro_conv2d_8/mulMul"macro_conv2d_8/ExpandDims:output:0)macro_conv2d_8/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????&&f
$macro_conv2d_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_8/SumSummacro_conv2d_8/mul:z:0-macro_conv2d_8/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????&&Ά
macro_conv2d_8/AvgPool2DAvgPoolmacro_conv2d_8/Sum:output:0*
T0*/
_output_shapes
:?????????$$*
ksize
*
paddingVALID*
strides
[
macro_conv2d_8/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_8/mul_1Mul!macro_conv2d_8/AvgPool2D:output:0macro_conv2d_8/mul_1/y:output:0*
T0*/
_output_shapes
:?????????$$
!macro_conv2d_8/add/ReadVariableOpReadVariableOp*macro_conv2d_8_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_8/addAddV2macro_conv2d_8/mul_1:z:0)macro_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$$k
activation_8/ReluRelumacro_conv2d_8/add:z:0*
T0*/
_output_shapes
:?????????$$`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????(  
flatten_2/ReshapeReshapeactivation_8/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:?????????Q
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ί
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp"^macro_conv2d_6/add/ReadVariableOp"^macro_conv2d_6/mul/ReadVariableOp"^macro_conv2d_7/add/ReadVariableOp"^macro_conv2d_7/mul/ReadVariableOp"^macro_conv2d_8/add/ReadVariableOp"^macro_conv2d_8/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2F
!macro_conv2d_6/add/ReadVariableOp!macro_conv2d_6/add/ReadVariableOp2F
!macro_conv2d_6/mul/ReadVariableOp!macro_conv2d_6/mul/ReadVariableOp2F
!macro_conv2d_7/add/ReadVariableOp!macro_conv2d_7/add/ReadVariableOp2F
!macro_conv2d_7/mul/ReadVariableOp!macro_conv2d_7/mul/ReadVariableOp2F
!macro_conv2d_8/add/ReadVariableOp!macro_conv2d_8/add/ReadVariableOp2F
!macro_conv2d_8/mul/ReadVariableOp!macro_conv2d_8/mul/ReadVariableOp:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
Ύ
ϊ
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211960

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:?????????$$*
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
:?????????$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:?????????&&
 
_user_specified_nameinputs
Θ
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211981

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????QY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs
?	
ΰ
)__inference_model_2_layer_call_fn_3211597
input_3'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity’StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_3211557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3
Ύ
ϊ
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:?????????$$*
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
:?????????$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:?????????&&
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_4_layer_call_fn_3211883

inputs
identityέ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Κ
J
.__inference_activation_7_layer_call_fn_3211919

inputs
identityΏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????MM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????MM:W S
/
_output_shapes
:?????????MM
 
_user_specified_nameinputs
Τ
ό
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*5
_output_shapes#
!:?????????  |
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*,
_output_shapes
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:?????????  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:?????????  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:?????????*
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
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:?????????p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????  : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
ΉI
§
 __inference__traced_save_3212123
file_prefix4
0savev2_macro_conv2d_6_kernel_read_readvariableop2
.savev2_macro_conv2d_6_bias_read_readvariableop4
0savev2_macro_conv2d_7_kernel_read_readvariableop2
.savev2_macro_conv2d_7_bias_read_readvariableop4
0savev2_macro_conv2d_8_kernel_read_readvariableop2
.savev2_macro_conv2d_8_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_adam_macro_conv2d_6_kernel_m_read_readvariableop9
5savev2_adam_macro_conv2d_6_bias_m_read_readvariableop;
7savev2_adam_macro_conv2d_7_kernel_m_read_readvariableop9
5savev2_adam_macro_conv2d_7_bias_m_read_readvariableop;
7savev2_adam_macro_conv2d_8_kernel_m_read_readvariableop9
5savev2_adam_macro_conv2d_8_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop;
7savev2_adam_macro_conv2d_6_kernel_v_read_readvariableop9
5savev2_adam_macro_conv2d_6_bias_v_read_readvariableop;
7savev2_adam_macro_conv2d_7_kernel_v_read_readvariableop9
5savev2_adam_macro_conv2d_7_bias_v_read_readvariableop;
7savev2_adam_macro_conv2d_8_kernel_v_read_readvariableop9
5savev2_adam_macro_conv2d_8_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
: ―
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ψ
valueΞBΛ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_macro_conv2d_6_kernel_read_readvariableop.savev2_macro_conv2d_6_bias_read_readvariableop0savev2_macro_conv2d_7_kernel_read_readvariableop.savev2_macro_conv2d_7_bias_read_readvariableop0savev2_macro_conv2d_8_kernel_read_readvariableop.savev2_macro_conv2d_8_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_adam_macro_conv2d_6_kernel_m_read_readvariableop5savev2_adam_macro_conv2d_6_bias_m_read_readvariableop7savev2_adam_macro_conv2d_7_kernel_m_read_readvariableop5savev2_adam_macro_conv2d_7_bias_m_read_readvariableop7savev2_adam_macro_conv2d_8_kernel_m_read_readvariableop5savev2_adam_macro_conv2d_8_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop7savev2_adam_macro_conv2d_6_kernel_v_read_readvariableop5savev2_adam_macro_conv2d_6_bias_v_read_readvariableop7savev2_adam_macro_conv2d_7_kernel_v_read_readvariableop5savev2_adam_macro_conv2d_7_bias_v_read_readvariableop7savev2_adam_macro_conv2d_8_kernel_v_read_readvariableop5savev2_adam_macro_conv2d_8_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
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

identity_1Identity_1:output:0*ΰ
_input_shapesΞ
Λ: :  ::OO::&&::	Q:: : : : : : : : : :  ::OO::&&::	Q::  ::OO::&&::	Q:: 2(
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
: :2.
,
_output_shapes
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::%!

_output_shapes
:	Q: 

_output_shapes
::2.
,
_output_shapes
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::% !

_output_shapes
:	Q: !

_output_shapes
::"

_output_shapes
: 
σJ
Ϋ
"__inference__wrapped_model_3211272
input_3R
2model_2_macro_conv2d_6_mul_readvariableop_resource:  @
2model_2_macro_conv2d_6_add_readvariableop_resource:P
2model_2_macro_conv2d_7_mul_readvariableop_resource:OO@
2model_2_macro_conv2d_7_add_readvariableop_resource:P
2model_2_macro_conv2d_8_mul_readvariableop_resource:&&@
2model_2_macro_conv2d_8_add_readvariableop_resource:A
.model_2_dense_2_matmul_readvariableop_resource:	Q=
/model_2_dense_2_biasadd_readvariableop_resource:
identity’&model_2/dense_2/BiasAdd/ReadVariableOp’%model_2/dense_2/MatMul/ReadVariableOp’)model_2/macro_conv2d_6/add/ReadVariableOp’)model_2/macro_conv2d_6/mul/ReadVariableOp’)model_2/macro_conv2d_7/add/ReadVariableOp’)model_2/macro_conv2d_7/mul/ReadVariableOp’)model_2/macro_conv2d_8/add/ReadVariableOp’)model_2/macro_conv2d_8/mul/ReadVariableOpp
%model_2/macro_conv2d_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????¨
!model_2/macro_conv2d_6/ExpandDims
ExpandDimsinput_3.model_2/macro_conv2d_6/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:?????????  ͺ
)model_2/macro_conv2d_6/mul/ReadVariableOpReadVariableOp2model_2_macro_conv2d_6_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0ΐ
model_2/macro_conv2d_6/mulMul*model_2/macro_conv2d_6/ExpandDims:output:01model_2/macro_conv2d_6/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:?????????  n
,model_2/macro_conv2d_6/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :΄
model_2/macro_conv2d_6/SumSummodel_2/macro_conv2d_6/mul:z:05model_2/macro_conv2d_6/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:?????????  Θ
 model_2/macro_conv2d_6/AvgPool2DAvgPool#model_2/macro_conv2d_6/Sum:output:0*
T0*1
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
c
model_2/macro_conv2d_6/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A³
model_2/macro_conv2d_6/mul_1Mul)model_2/macro_conv2d_6/AvgPool2D:output:0'model_2/macro_conv2d_6/mul_1/y:output:0*
T0*1
_output_shapes
:?????????
)model_2/macro_conv2d_6/add/ReadVariableOpReadVariableOp2model_2_macro_conv2d_6_add_readvariableop_resource*
_output_shapes
:*
dtype0΄
model_2/macro_conv2d_6/addAddV2 model_2/macro_conv2d_6/mul_1:z:01model_2/macro_conv2d_6/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????}
model_2/activation_6/ReluRelumodel_2/macro_conv2d_6/add:z:0*
T0*1
_output_shapes
:?????????ΐ
model_2/max_pooling2d_4/MaxPoolMaxPool'model_2/activation_6/Relu:activations:0*/
_output_shapes
:?????????OO*
ksize
*
paddingVALID*
strides
p
%model_2/macro_conv2d_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Η
!model_2/macro_conv2d_7/ExpandDims
ExpandDims(model_2/max_pooling2d_4/MaxPool:output:0.model_2/macro_conv2d_7/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????OO¨
)model_2/macro_conv2d_7/mul/ReadVariableOpReadVariableOp2model_2_macro_conv2d_7_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0Ύ
model_2/macro_conv2d_7/mulMul*model_2/macro_conv2d_7/ExpandDims:output:01model_2/macro_conv2d_7/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????OOn
,model_2/macro_conv2d_7/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :²
model_2/macro_conv2d_7/SumSummodel_2/macro_conv2d_7/mul:z:05model_2/macro_conv2d_7/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????OOΖ
 model_2/macro_conv2d_7/AvgPool2DAvgPool#model_2/macro_conv2d_7/Sum:output:0*
T0*/
_output_shapes
:?????????MM*
ksize
*
paddingVALID*
strides
c
model_2/macro_conv2d_7/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A±
model_2/macro_conv2d_7/mul_1Mul)model_2/macro_conv2d_7/AvgPool2D:output:0'model_2/macro_conv2d_7/mul_1/y:output:0*
T0*/
_output_shapes
:?????????MM
)model_2/macro_conv2d_7/add/ReadVariableOpReadVariableOp2model_2_macro_conv2d_7_add_readvariableop_resource*
_output_shapes
:*
dtype0²
model_2/macro_conv2d_7/addAddV2 model_2/macro_conv2d_7/mul_1:z:01model_2/macro_conv2d_7/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????MM{
model_2/activation_7/ReluRelumodel_2/macro_conv2d_7/add:z:0*
T0*/
_output_shapes
:?????????MMΐ
model_2/max_pooling2d_5/MaxPoolMaxPool'model_2/activation_7/Relu:activations:0*/
_output_shapes
:?????????&&*
ksize
*
paddingVALID*
strides
p
%model_2/macro_conv2d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Η
!model_2/macro_conv2d_8/ExpandDims
ExpandDims(model_2/max_pooling2d_5/MaxPool:output:0.model_2/macro_conv2d_8/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????&&¨
)model_2/macro_conv2d_8/mul/ReadVariableOpReadVariableOp2model_2_macro_conv2d_8_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0Ύ
model_2/macro_conv2d_8/mulMul*model_2/macro_conv2d_8/ExpandDims:output:01model_2/macro_conv2d_8/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????&&n
,model_2/macro_conv2d_8/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :²
model_2/macro_conv2d_8/SumSummodel_2/macro_conv2d_8/mul:z:05model_2/macro_conv2d_8/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????&&Ζ
 model_2/macro_conv2d_8/AvgPool2DAvgPool#model_2/macro_conv2d_8/Sum:output:0*
T0*/
_output_shapes
:?????????$$*
ksize
*
paddingVALID*
strides
c
model_2/macro_conv2d_8/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A±
model_2/macro_conv2d_8/mul_1Mul)model_2/macro_conv2d_8/AvgPool2D:output:0'model_2/macro_conv2d_8/mul_1/y:output:0*
T0*/
_output_shapes
:?????????$$
)model_2/macro_conv2d_8/add/ReadVariableOpReadVariableOp2model_2_macro_conv2d_8_add_readvariableop_resource*
_output_shapes
:*
dtype0²
model_2/macro_conv2d_8/addAddV2 model_2/macro_conv2d_8/mul_1:z:01model_2/macro_conv2d_8/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$${
model_2/activation_8/ReluRelumodel_2/macro_conv2d_8/add:z:0*
T0*/
_output_shapes
:?????????$$h
model_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????(  ’
model_2/flatten_2/ReshapeReshape'model_2/activation_8/Relu:activations:0 model_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:?????????Q
%model_2/dense_2/MatMul/ReadVariableOpReadVariableOp.model_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0₯
model_2/dense_2/MatMulMatMul"model_2/flatten_2/Reshape:output:0-model_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
&model_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_2/dense_2/BiasAddBiasAdd model_2/dense_2/MatMul:product:0.model_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
model_2/dense_2/SigmoidSigmoid model_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitymodel_2/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp'^model_2/dense_2/BiasAdd/ReadVariableOp&^model_2/dense_2/MatMul/ReadVariableOp*^model_2/macro_conv2d_6/add/ReadVariableOp*^model_2/macro_conv2d_6/mul/ReadVariableOp*^model_2/macro_conv2d_7/add/ReadVariableOp*^model_2/macro_conv2d_7/mul/ReadVariableOp*^model_2/macro_conv2d_8/add/ReadVariableOp*^model_2/macro_conv2d_8/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2P
&model_2/dense_2/BiasAdd/ReadVariableOp&model_2/dense_2/BiasAdd/ReadVariableOp2N
%model_2/dense_2/MatMul/ReadVariableOp%model_2/dense_2/MatMul/ReadVariableOp2V
)model_2/macro_conv2d_6/add/ReadVariableOp)model_2/macro_conv2d_6/add/ReadVariableOp2V
)model_2/macro_conv2d_6/mul/ReadVariableOp)model_2/macro_conv2d_6/mul/ReadVariableOp2V
)model_2/macro_conv2d_7/add/ReadVariableOp)model_2/macro_conv2d_7/add/ReadVariableOp2V
)model_2/macro_conv2d_7/mul/ReadVariableOp)model_2/macro_conv2d_7/mul/ReadVariableOp2V
)model_2/macro_conv2d_8/add/ReadVariableOp)model_2/macro_conv2d_8/add/ReadVariableOp2V
)model_2/macro_conv2d_8/mul/ReadVariableOp)model_2/macro_conv2d_8/mul/ReadVariableOp:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3
Κ
J
.__inference_activation_8_layer_call_fn_3211965

inputs
identityΏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs
ό	
ί
)__inference_model_2_layer_call_fn_3211684

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity’StatefulPartitionedCallͺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_3211421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
³*
Ϊ
D__inference_model_2_layer_call_and_return_conditional_losses_3211627
input_36
macro_conv2d_6_3211600:  $
macro_conv2d_6_3211602:4
macro_conv2d_7_3211607:OO$
macro_conv2d_7_3211609:4
macro_conv2d_8_3211614:&&$
macro_conv2d_8_3211616:"
dense_2_3211621:	Q
dense_2_3211623:
identity’dense_2/StatefulPartitionedCall’&macro_conv2d_6/StatefulPartitionedCall’&macro_conv2d_7/StatefulPartitionedCall’&macro_conv2d_8/StatefulPartitionedCall
&macro_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3macro_conv2d_6_3211600macro_conv2d_6_3211602*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320χ
activation_6/PartitionedCallPartitionedCall/macro_conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331ρ
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????OO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281Έ
&macro_conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0macro_conv2d_7_3211607macro_conv2d_7_3211609*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351υ
activation_7/PartitionedCallPartitionedCall/macro_conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362ρ
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293Έ
&macro_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0macro_conv2d_8_3211614macro_conv2d_8_3211616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382υ
activation_8/PartitionedCallPartitionedCall/macro_conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393ή
flatten_2/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_3211621dense_2_3211623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????γ
NoOpNoOp ^dense_2/StatefulPartitionedCall'^macro_conv2d_6/StatefulPartitionedCall'^macro_conv2d_7/StatefulPartitionedCall'^macro_conv2d_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&macro_conv2d_6/StatefulPartitionedCall&macro_conv2d_6/StatefulPartitionedCall2P
&macro_conv2d_7/StatefulPartitionedCall&macro_conv2d_7/StatefulPartitionedCall2P
&macro_conv2d_8/StatefulPartitionedCall&macro_conv2d_8/StatefulPartitionedCall:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3

h
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

«
0__inference_macro_conv2d_6_layer_call_fn_3211851

inputs'
unknown:  
	unknown_0:
identity’StatefulPartitionedCallν
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
©
0__inference_macro_conv2d_7_layer_call_fn_3211897

inputs%
unknown:OO
	unknown_0:
identity’StatefulPartitionedCallλ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????MM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????OO: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????OO
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Θ

)__inference_dense_2_layer_call_fn_3211990

inputs
unknown:	Q
	unknown_0:
identity’StatefulPartitionedCallά
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????Q
 
_user_specified_nameinputs
Ύ
ϊ
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211914

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
identity’add/ReadVariableOp’mul/ReadVariableOpY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????w

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*3
_output_shapes!
:?????????OOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????OOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????OO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:?????????MM*
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
:?????????MMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????MM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????MMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????OO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:?????????OO
 
_user_specified_nameinputs
Λ
¦
#__inference__traced_restore_3212232
file_prefixF
&assignvariableop_macro_conv2d_6_kernel:  4
&assignvariableop_1_macro_conv2d_6_bias:F
(assignvariableop_2_macro_conv2d_7_kernel:OO4
&assignvariableop_3_macro_conv2d_7_bias:F
(assignvariableop_4_macro_conv2d_8_kernel:&&4
&assignvariableop_5_macro_conv2d_8_bias:4
!assignvariableop_6_dense_2_kernel:	Q-
assignvariableop_7_dense_2_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: P
0assignvariableop_17_adam_macro_conv2d_6_kernel_m:  <
.assignvariableop_18_adam_macro_conv2d_6_bias_m:N
0assignvariableop_19_adam_macro_conv2d_7_kernel_m:OO<
.assignvariableop_20_adam_macro_conv2d_7_bias_m:N
0assignvariableop_21_adam_macro_conv2d_8_kernel_m:&&<
.assignvariableop_22_adam_macro_conv2d_8_bias_m:<
)assignvariableop_23_adam_dense_2_kernel_m:	Q5
'assignvariableop_24_adam_dense_2_bias_m:P
0assignvariableop_25_adam_macro_conv2d_6_kernel_v:  <
.assignvariableop_26_adam_macro_conv2d_6_bias_v:N
0assignvariableop_27_adam_macro_conv2d_7_kernel_v:OO<
.assignvariableop_28_adam_macro_conv2d_7_bias_v:N
0assignvariableop_29_adam_macro_conv2d_8_kernel_v:&&<
.assignvariableop_30_adam_macro_conv2d_8_bias_v:<
)assignvariableop_31_adam_dense_2_kernel_v:	Q5
'assignvariableop_32_adam_dense_2_bias_v:
identity_34’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9²
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ψ
valueΞBΛ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH΄
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Λ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_macro_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_macro_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_macro_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_macro_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp(assignvariableop_4_macro_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp&assignvariableop_5_macro_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_macro_conv2d_6_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_macro_conv2d_6_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_19AssignVariableOp0assignvariableop_19_adam_macro_conv2d_7_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_macro_conv2d_7_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_macro_conv2d_8_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_macro_conv2d_8_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_macro_conv2d_6_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_macro_conv2d_6_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_macro_conv2d_7_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_macro_conv2d_7_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_macro_conv2d_8_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_macro_conv2d_8_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_2_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_2_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ₯
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
ν
e
I__inference_activation_8_layer_call_and_return_conditional_losses_3211970

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs


φ
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
J
.__inference_activation_6_layer_call_fn_3211873

inputs
identityΑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


φ
D__inference_dense_2_layer_call_and_return_conditional_losses_3212001

inputs1
matmul_readvariableop_resource:	Q-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Q*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????Q
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_5_layer_call_fn_3211929

inputs
identityέ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
©
0__inference_macro_conv2d_8_layer_call_fn_3211943

inputs%
unknown:&&
	unknown_0:
identity’StatefulPartitionedCallλ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????$$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????&&
 
_user_specified_nameinputs
Ά
G
+__inference_flatten_2_layer_call_fn_3211975

inputs
identity΅
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs
υ
e
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:?????????d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211888

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
°*
Ω
D__inference_model_2_layer_call_and_return_conditional_losses_3211557

inputs6
macro_conv2d_6_3211530:  $
macro_conv2d_6_3211532:4
macro_conv2d_7_3211537:OO$
macro_conv2d_7_3211539:4
macro_conv2d_8_3211544:&&$
macro_conv2d_8_3211546:"
dense_2_3211551:	Q
dense_2_3211553:
identity’dense_2/StatefulPartitionedCall’&macro_conv2d_6/StatefulPartitionedCall’&macro_conv2d_7/StatefulPartitionedCall’&macro_conv2d_8/StatefulPartitionedCall
&macro_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_6_3211530macro_conv2d_6_3211532*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211320χ
activation_6/PartitionedCallPartitionedCall/macro_conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_6_layer_call_and_return_conditional_losses_3211331ρ
max_pooling2d_4/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????OO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211281Έ
&macro_conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0macro_conv2d_7_3211537macro_conv2d_7_3211539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211351υ
activation_7/PartitionedCallPartitionedCall/macro_conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????MM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_7_layer_call_and_return_conditional_losses_3211362ρ
max_pooling2d_5/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211293Έ
&macro_conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0macro_conv2d_8_3211544macro_conv2d_8_3211546*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211382υ
activation_8/PartitionedCallPartitionedCall/macro_conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393ή
flatten_2/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211401
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_2_3211551dense_2_3211553*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3211414w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????γ
NoOpNoOp ^dense_2/StatefulPartitionedCall'^macro_conv2d_6/StatefulPartitionedCall'^macro_conv2d_7/StatefulPartitionedCall'^macro_conv2d_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&macro_conv2d_6/StatefulPartitionedCall&macro_conv2d_6/StatefulPartitionedCall2P
&macro_conv2d_7/StatefulPartitionedCall&macro_conv2d_7/StatefulPartitionedCall2P
&macro_conv2d_8/StatefulPartitionedCall&macro_conv2d_8/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????  
 
_user_specified_nameinputs
ν
e
I__inference_activation_8_layer_call_and_return_conditional_losses_3211393

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$:W S
/
_output_shapes
:?????????$$
 
_user_specified_nameinputs
Ω	
ά
%__inference_signature_wrapper_3211842
input_3'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	Q
	unknown_6:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_3211272o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????  
!
_user_specified_name	input_3"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*΄
serving_default 
E
input_3:
serving_default_input_3:0?????????  ;
dense_20
StatefulPartitionedCall:0?????????tensorflow/serving/predict:Φ¬
Ϋ
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
₯
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
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
₯
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
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
₯
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
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
σ
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem‘m’)m£*m€=m₯>m¦Qm§Rm¨v©vͺ)v«*v¬=v­>v?Qv―Rv°"
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
Κ
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ς2ο
)__inference_model_2_layer_call_fn_3211440
)__inference_model_2_layer_call_fn_3211684
)__inference_model_2_layer_call_fn_3211705
)__inference_model_2_layer_call_fn_3211597ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ή2Ϋ
D__inference_model_2_layer_call_and_return_conditional_losses_3211762
D__inference_model_2_layer_call_and_return_conditional_losses_3211819
D__inference_model_2_layer_call_and_return_conditional_losses_3211627
D__inference_model_2_layer_call_and_return_conditional_losses_3211657ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ΝBΚ
"__inference__wrapped_model_3211272input_3"
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
annotationsͺ *
 
,
cserving_default"
signature_map
5:3  2macro_conv2d_6/kernel
!:2macro_conv2d_6/bias
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
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ϊ2Χ
0__inference_macro_conv2d_6_layer_call_fn_3211851’
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
annotationsͺ *
 
υ2ς
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211868’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ψ2Υ
.__inference_activation_6_layer_call_fn_3211873’
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
annotationsͺ *
 
σ2π
I__inference_activation_6_layer_call_and_return_conditional_losses_3211878’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ϋ2Ψ
1__inference_max_pooling2d_4_layer_call_fn_3211883’
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
annotationsͺ *
 
φ2σ
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211888’
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
annotationsͺ *
 
3:1OO2macro_conv2d_7/kernel
!:2macro_conv2d_7/bias
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
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ϊ2Χ
0__inference_macro_conv2d_7_layer_call_fn_3211897’
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
annotationsͺ *
 
υ2ς
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211914’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
Ψ2Υ
.__inference_activation_7_layer_call_fn_3211919’
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
annotationsͺ *
 
σ2π
I__inference_activation_7_layer_call_and_return_conditional_losses_3211924’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
―
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Ϋ2Ψ
1__inference_max_pooling2d_5_layer_call_fn_3211929’
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
annotationsͺ *
 
φ2σ
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211934’
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
annotationsͺ *
 
3:1&&2macro_conv2d_8/kernel
!:2macro_conv2d_8/bias
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
Ϊ2Χ
0__inference_macro_conv2d_8_layer_call_fn_3211943’
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
annotationsͺ *
 
υ2ς
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211960’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ψ2Υ
.__inference_activation_8_layer_call_fn_3211965’
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
annotationsͺ *
 
σ2π
I__inference_activation_8_layer_call_and_return_conditional_losses_3211970’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
Υ2?
+__inference_flatten_2_layer_call_fn_3211975’
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
annotationsͺ *
 
π2ν
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211981’
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
annotationsͺ *
 
!:	Q2dense_2/kernel
:2dense_2/bias
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_dense_2_layer_call_fn_3211990’
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
annotationsͺ *
 
ξ2λ
D__inference_dense_2_layer_call_and_return_conditional_losses_3212001’
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
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΜBΙ
%__inference_signature_wrapper_3211842input_3"
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
annotationsͺ *
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

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
 	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
::8  2Adam/macro_conv2d_6/kernel/m
&:$2Adam/macro_conv2d_6/bias/m
8:6OO2Adam/macro_conv2d_7/kernel/m
&:$2Adam/macro_conv2d_7/bias/m
8:6&&2Adam/macro_conv2d_8/kernel/m
&:$2Adam/macro_conv2d_8/bias/m
&:$	Q2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
::8  2Adam/macro_conv2d_6/kernel/v
&:$2Adam/macro_conv2d_6/bias/v
8:6OO2Adam/macro_conv2d_7/kernel/v
&:$2Adam/macro_conv2d_7/bias/v
8:6&&2Adam/macro_conv2d_8/kernel/v
&:$2Adam/macro_conv2d_8/bias/v
&:$	Q2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
"__inference__wrapped_model_3211272y)*=>QR:’7
0’-
+(
input_3?????????  
ͺ "1ͺ.
,
dense_2!
dense_2?????????Ή
I__inference_activation_6_layer_call_and_return_conditional_losses_3211878l9’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????
 
.__inference_activation_6_layer_call_fn_3211873_9’6
/’,
*'
inputs?????????
ͺ ""?????????΅
I__inference_activation_7_layer_call_and_return_conditional_losses_3211924h7’4
-’*
(%
inputs?????????MM
ͺ "-’*
# 
0?????????MM
 
.__inference_activation_7_layer_call_fn_3211919[7’4
-’*
(%
inputs?????????MM
ͺ " ?????????MM΅
I__inference_activation_8_layer_call_and_return_conditional_losses_3211970h7’4
-’*
(%
inputs?????????$$
ͺ "-’*
# 
0?????????$$
 
.__inference_activation_8_layer_call_fn_3211965[7’4
-’*
(%
inputs?????????$$
ͺ " ?????????$$₯
D__inference_dense_2_layer_call_and_return_conditional_losses_3212001]QR0’-
&’#
!
inputs?????????Q
ͺ "%’"

0?????????
 }
)__inference_dense_2_layer_call_fn_3211990PQR0’-
&’#
!
inputs?????????Q
ͺ "?????????«
F__inference_flatten_2_layer_call_and_return_conditional_losses_3211981a7’4
-’*
(%
inputs?????????$$
ͺ "&’#

0?????????Q
 
+__inference_flatten_2_layer_call_fn_3211975T7’4
-’*
(%
inputs?????????$$
ͺ "?????????QΏ
K__inference_macro_conv2d_6_layer_call_and_return_conditional_losses_3211868p9’6
/’,
*'
inputs?????????  
ͺ "/’,
%"
0?????????
 
0__inference_macro_conv2d_6_layer_call_fn_3211851c9’6
/’,
*'
inputs?????????  
ͺ ""?????????»
K__inference_macro_conv2d_7_layer_call_and_return_conditional_losses_3211914l)*7’4
-’*
(%
inputs?????????OO
ͺ "-’*
# 
0?????????MM
 
0__inference_macro_conv2d_7_layer_call_fn_3211897_)*7’4
-’*
(%
inputs?????????OO
ͺ " ?????????MM»
K__inference_macro_conv2d_8_layer_call_and_return_conditional_losses_3211960l=>7’4
-’*
(%
inputs?????????&&
ͺ "-’*
# 
0?????????$$
 
0__inference_macro_conv2d_8_layer_call_fn_3211943_=>7’4
-’*
(%
inputs?????????&&
ͺ " ?????????$$ο
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3211888R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_max_pooling2d_4_layer_call_fn_3211883R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ο
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3211934R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Η
1__inference_max_pooling2d_5_layer_call_fn_3211929R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????½
D__inference_model_2_layer_call_and_return_conditional_losses_3211627u)*=>QRB’?
8’5
+(
input_3?????????  
p 

 
ͺ "%’"

0?????????
 ½
D__inference_model_2_layer_call_and_return_conditional_losses_3211657u)*=>QRB’?
8’5
+(
input_3?????????  
p

 
ͺ "%’"

0?????????
 Ό
D__inference_model_2_layer_call_and_return_conditional_losses_3211762t)*=>QRA’>
7’4
*'
inputs?????????  
p 

 
ͺ "%’"

0?????????
 Ό
D__inference_model_2_layer_call_and_return_conditional_losses_3211819t)*=>QRA’>
7’4
*'
inputs?????????  
p

 
ͺ "%’"

0?????????
 
)__inference_model_2_layer_call_fn_3211440h)*=>QRB’?
8’5
+(
input_3?????????  
p 

 
ͺ "?????????
)__inference_model_2_layer_call_fn_3211597h)*=>QRB’?
8’5
+(
input_3?????????  
p

 
ͺ "?????????
)__inference_model_2_layer_call_fn_3211684g)*=>QRA’>
7’4
*'
inputs?????????  
p 

 
ͺ "?????????
)__inference_model_2_layer_call_fn_3211705g)*=>QRA’>
7’4
*'
inputs?????????  
p

 
ͺ "??????????
%__inference_signature_wrapper_3211842)*=>QRE’B
’ 
;ͺ8
6
input_3+(
input_3?????????  "1ͺ.
,
dense_2!
dense_2?????????