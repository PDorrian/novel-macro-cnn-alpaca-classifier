úÝ	
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68î

macro_conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *'
shared_namemacro_conv2d_15/kernel

*macro_conv2d_15/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_15/kernel*,
_output_shapes
:  *
dtype0

macro_conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namemacro_conv2d_15/bias
y
(macro_conv2d_15/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_15/bias*
_output_shapes
:*
dtype0

macro_conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*'
shared_namemacro_conv2d_16/kernel

*macro_conv2d_16/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_16/kernel**
_output_shapes
:OO*
dtype0

macro_conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namemacro_conv2d_16/bias
y
(macro_conv2d_16/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_16/bias*
_output_shapes
:*
dtype0

macro_conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*'
shared_namemacro_conv2d_17/kernel

*macro_conv2d_17/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_17/kernel**
_output_shapes
:&&*
dtype0

macro_conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namemacro_conv2d_17/bias
y
(macro_conv2d_17/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_17/bias*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À(*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	À(*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
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
¤
Adam/macro_conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *.
shared_nameAdam/macro_conv2d_15/kernel/m

1Adam/macro_conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_15/kernel/m*,
_output_shapes
:  *
dtype0

Adam/macro_conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_15/bias/m

/Adam/macro_conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_15/bias/m*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*.
shared_nameAdam/macro_conv2d_16/kernel/m

1Adam/macro_conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_16/kernel/m**
_output_shapes
:OO*
dtype0

Adam/macro_conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_16/bias/m

/Adam/macro_conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_16/bias/m*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*.
shared_nameAdam/macro_conv2d_17/kernel/m

1Adam/macro_conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_17/kernel/m**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_17/bias/m

/Adam/macro_conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_17/bias/m*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À(*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	À(*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
¤
Adam/macro_conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:  *.
shared_nameAdam/macro_conv2d_15/kernel/v

1Adam/macro_conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_15/kernel/v*,
_output_shapes
:  *
dtype0

Adam/macro_conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_15/bias/v

/Adam/macro_conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_15/bias/v*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO*.
shared_nameAdam/macro_conv2d_16/kernel/v

1Adam/macro_conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_16/kernel/v**
_output_shapes
:OO*
dtype0

Adam/macro_conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_16/bias/v

/Adam/macro_conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_16/bias/v*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*.
shared_nameAdam/macro_conv2d_17/kernel/v

1Adam/macro_conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_17/kernel/v**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_17/bias/v

/Adam/macro_conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_17/bias/v*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À(*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	À(*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
äO
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*O
valueOBO BO
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
ä
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem¡m¢)m£*m¤=m¥>m¦Qm§Rm¨v©vª)v«*v¬=v­>v®Qv¯Rv°*
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
f`
VARIABLE_VALUEmacro_conv2d_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
f`
VARIABLE_VALUEmacro_conv2d_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
f`
VARIABLE_VALUEmacro_conv2d_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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

VARIABLE_VALUEAdam/macro_conv2d_15/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_15/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_16/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_16/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_15/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_15/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_16/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_16/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_6Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ  
î
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6macro_conv2d_15/kernelmacro_conv2d_15/biasmacro_conv2d_16/kernelmacro_conv2d_16/biasmacro_conv2d_17/kernelmacro_conv2d_17/biasdense_5/kerneldense_5/bias*
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
%__inference_signature_wrapper_1727920
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¡
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*macro_conv2d_15/kernel/Read/ReadVariableOp(macro_conv2d_15/bias/Read/ReadVariableOp*macro_conv2d_16/kernel/Read/ReadVariableOp(macro_conv2d_16/bias/Read/ReadVariableOp*macro_conv2d_17/kernel/Read/ReadVariableOp(macro_conv2d_17/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/macro_conv2d_15/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_15/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_16/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_16/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_17/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_17/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_15/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_15/bias/v/Read/ReadVariableOp1Adam/macro_conv2d_16/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_16/bias/v/Read/ReadVariableOp1Adam/macro_conv2d_17/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_17/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*.
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
 __inference__traced_save_1728201

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemacro_conv2d_15/kernelmacro_conv2d_15/biasmacro_conv2d_16/kernelmacro_conv2d_16/biasmacro_conv2d_17/kernelmacro_conv2d_17/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/macro_conv2d_15/kernel/mAdam/macro_conv2d_15/bias/mAdam/macro_conv2d_16/kernel/mAdam/macro_conv2d_16/bias/mAdam/macro_conv2d_17/kernel/mAdam/macro_conv2d_17/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/macro_conv2d_15/kernel/vAdam/macro_conv2d_15/bias/vAdam/macro_conv2d_16/kernel/vAdam/macro_conv2d_16/bias/vAdam/macro_conv2d_17/kernel/vAdam/macro_conv2d_17/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*-
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
#__inference__traced_restore_1728310Ìê

i
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359

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
¿
û
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727992

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs
ÿ	
à
)__inference_model_5_layer_call_fn_1727518
input_6'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	À(
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *M
fHRF
D__inference_model_5_layer_call_and_return_conditional_losses_1727499o
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
_user_specified_name	input_6


ö
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492

inputs1
matmul_readvariableop_resource:	À(-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À(*
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
:ÿÿÿÿÿÿÿÿÿÀ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
 
_user_specified_nameinputs
¿
N
2__inference_max_pooling2d_11_layer_call_fn_1728007

inputs
identityÞ
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
GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371
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
ö
f
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã*
ã
D__inference_model_5_layer_call_and_return_conditional_losses_1727705
input_67
macro_conv2d_15_1727678:  %
macro_conv2d_15_1727680:5
macro_conv2d_16_1727685:OO%
macro_conv2d_16_1727687:5
macro_conv2d_17_1727692:&&%
macro_conv2d_17_1727694:"
dense_5_1727699:	À(
dense_5_1727701:
identity¢dense_5/StatefulPartitionedCall¢'macro_conv2d_15/StatefulPartitionedCall¢'macro_conv2d_16/StatefulPartitionedCall¢'macro_conv2d_17/StatefulPartitionedCall
'macro_conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinput_6macro_conv2d_15_1727678macro_conv2d_15_1727680*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398ú
activation_15/PartitionedCallPartitionedCall0macro_conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409ô
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359½
'macro_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0macro_conv2d_16_1727685macro_conv2d_16_1727687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429ø
activation_16/PartitionedCallPartitionedCall0macro_conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440ô
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371½
'macro_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0macro_conv2d_17_1727692macro_conv2d_17_1727694*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460ø
activation_17/PartitionedCallPartitionedCall0macro_conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471ß
flatten_5/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_5_1727699dense_5_1727701*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_5/StatefulPartitionedCall(^macro_conv2d_15/StatefulPartitionedCall(^macro_conv2d_16/StatefulPartitionedCall(^macro_conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2R
'macro_conv2d_15/StatefulPartitionedCall'macro_conv2d_15/StatefulPartitionedCall2R
'macro_conv2d_16/StatefulPartitionedCall'macro_conv2d_16/StatefulPartitionedCall2R
'macro_conv2d_17/StatefulPartitionedCall'macro_conv2d_17/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_6

i
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1728012

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
È
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_1728059

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs

ª
1__inference_macro_conv2d_16_layer_call_fn_1727975

inputs%
unknown:OO
	unknown_0:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs
È
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
ã*
ã
D__inference_model_5_layer_call_and_return_conditional_losses_1727735
input_67
macro_conv2d_15_1727708:  %
macro_conv2d_15_1727710:5
macro_conv2d_16_1727715:OO%
macro_conv2d_16_1727717:5
macro_conv2d_17_1727722:&&%
macro_conv2d_17_1727724:"
dense_5_1727729:	À(
dense_5_1727731:
identity¢dense_5/StatefulPartitionedCall¢'macro_conv2d_15/StatefulPartitionedCall¢'macro_conv2d_16/StatefulPartitionedCall¢'macro_conv2d_17/StatefulPartitionedCall
'macro_conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinput_6macro_conv2d_15_1727708macro_conv2d_15_1727710*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398ú
activation_15/PartitionedCallPartitionedCall0macro_conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409ô
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359½
'macro_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0macro_conv2d_16_1727715macro_conv2d_16_1727717*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429ø
activation_16/PartitionedCallPartitionedCall0macro_conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440ô
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371½
'macro_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0macro_conv2d_17_1727722macro_conv2d_17_1727724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460ø
activation_17/PartitionedCallPartitionedCall0macro_conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471ß
flatten_5/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_5_1727729dense_5_1727731*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_5/StatefulPartitionedCall(^macro_conv2d_15/StatefulPartitionedCall(^macro_conv2d_16/StatefulPartitionedCall(^macro_conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2R
'macro_conv2d_15/StatefulPartitionedCall'macro_conv2d_15/StatefulPartitionedCall2R
'macro_conv2d_16/StatefulPartitionedCall'macro_conv2d_16/StatefulPartitionedCall2R
'macro_conv2d_17/StatefulPartitionedCall'macro_conv2d_17/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_6
ü	
ß
)__inference_model_5_layer_call_fn_1727762

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	À(
	unknown_6:
identity¢StatefulPartitionedCallª
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
GPU2*0J 8 *M
fHRF
D__inference_model_5_layer_call_and_return_conditional_losses_1727499o
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
¿
N
2__inference_max_pooling2d_10_layer_call_fn_1727961

inputs
identityÞ
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
GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359
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
î
f
J__inference_activation_17_layer_call_and_return_conditional_losses_1728048

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
à*
â
D__inference_model_5_layer_call_and_return_conditional_losses_1727499

inputs7
macro_conv2d_15_1727399:  %
macro_conv2d_15_1727401:5
macro_conv2d_16_1727430:OO%
macro_conv2d_16_1727432:5
macro_conv2d_17_1727461:&&%
macro_conv2d_17_1727463:"
dense_5_1727493:	À(
dense_5_1727495:
identity¢dense_5/StatefulPartitionedCall¢'macro_conv2d_15/StatefulPartitionedCall¢'macro_conv2d_16/StatefulPartitionedCall¢'macro_conv2d_17/StatefulPartitionedCall
'macro_conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_15_1727399macro_conv2d_15_1727401*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398ú
activation_15/PartitionedCallPartitionedCall0macro_conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409ô
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359½
'macro_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0macro_conv2d_16_1727430macro_conv2d_16_1727432*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429ø
activation_16/PartitionedCallPartitionedCall0macro_conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440ô
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371½
'macro_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0macro_conv2d_17_1727461macro_conv2d_17_1727463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460ø
activation_17/PartitionedCallPartitionedCall0macro_conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471ß
flatten_5/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_5_1727493dense_5_1727495*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_5/StatefulPartitionedCall(^macro_conv2d_15/StatefulPartitionedCall(^macro_conv2d_16/StatefulPartitionedCall(^macro_conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2R
'macro_conv2d_15/StatefulPartitionedCall'macro_conv2d_15/StatefulPartitionedCall2R
'macro_conv2d_16/StatefulPartitionedCall'macro_conv2d_16/StatefulPartitionedCall2R
'macro_conv2d_17/StatefulPartitionedCall'macro_conv2d_17/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¿
û
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
à*
â
D__inference_model_5_layer_call_and_return_conditional_losses_1727635

inputs7
macro_conv2d_15_1727608:  %
macro_conv2d_15_1727610:5
macro_conv2d_16_1727615:OO%
macro_conv2d_16_1727617:5
macro_conv2d_17_1727622:&&%
macro_conv2d_17_1727624:"
dense_5_1727629:	À(
dense_5_1727631:
identity¢dense_5/StatefulPartitionedCall¢'macro_conv2d_15/StatefulPartitionedCall¢'macro_conv2d_16/StatefulPartitionedCall¢'macro_conv2d_17/StatefulPartitionedCall
'macro_conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_15_1727608macro_conv2d_15_1727610*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398ú
activation_15/PartitionedCallPartitionedCall0macro_conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409ô
 max_pooling2d_10/PartitionedCallPartitionedCall&activation_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727359½
'macro_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0macro_conv2d_16_1727615macro_conv2d_16_1727617*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429ø
activation_16/PartitionedCallPartitionedCall0macro_conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440ô
 max_pooling2d_11/PartitionedCallPartitionedCall&activation_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371½
'macro_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0macro_conv2d_17_1727622macro_conv2d_17_1727624*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460ø
activation_17/PartitionedCallPartitionedCall0macro_conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471ß
flatten_5/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479
dense_5/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_5_1727629dense_5_1727631*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_5/StatefulPartitionedCall(^macro_conv2d_15/StatefulPartitionedCall(^macro_conv2d_16/StatefulPartitionedCall(^macro_conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2R
'macro_conv2d_15/StatefulPartitionedCall'macro_conv2d_15/StatefulPartitionedCall2R
'macro_conv2d_16/StatefulPartitionedCall'macro_conv2d_16/StatefulPartitionedCall2R
'macro_conv2d_17/StatefulPartitionedCall'macro_conv2d_17/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ÿ	
à
)__inference_model_5_layer_call_fn_1727675
input_6'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	À(
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *M
fHRF
D__inference_model_5_layer_call_and_return_conditional_losses_1727635o
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
_user_specified_name	input_6
ÝI
¹
 __inference__traced_save_1728201
file_prefix5
1savev2_macro_conv2d_15_kernel_read_readvariableop3
/savev2_macro_conv2d_15_bias_read_readvariableop5
1savev2_macro_conv2d_16_kernel_read_readvariableop3
/savev2_macro_conv2d_16_bias_read_readvariableop5
1savev2_macro_conv2d_17_kernel_read_readvariableop3
/savev2_macro_conv2d_17_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_macro_conv2d_15_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_15_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_16_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_16_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_17_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_17_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_15_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_15_bias_v_read_readvariableop<
8savev2_adam_macro_conv2d_16_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_16_bias_v_read_readvariableop<
8savev2_adam_macro_conv2d_17_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_17_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
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
: ¯
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_macro_conv2d_15_kernel_read_readvariableop/savev2_macro_conv2d_15_bias_read_readvariableop1savev2_macro_conv2d_16_kernel_read_readvariableop/savev2_macro_conv2d_16_bias_read_readvariableop1savev2_macro_conv2d_17_kernel_read_readvariableop/savev2_macro_conv2d_17_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_macro_conv2d_15_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_15_bias_m_read_readvariableop8savev2_adam_macro_conv2d_16_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_16_bias_m_read_readvariableop8savev2_adam_macro_conv2d_17_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_17_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop8savev2_adam_macro_conv2d_15_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_15_bias_v_read_readvariableop8savev2_adam_macro_conv2d_16_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_16_bias_v_read_readvariableop8savev2_adam_macro_conv2d_17_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_17_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*à
_input_shapesÎ
Ë: :  ::OO::&&::	À(:: : : : : : : : : :  ::OO::&&::	À(::  ::OO::&&::	À(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:2.
,
_output_shapes
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::%!

_output_shapes
:	À(: 
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
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::%!

_output_shapes
:	À(: 

_output_shapes
::2.
,
_output_shapes
:  : 

_output_shapes
::0,
*
_output_shapes
:OO: 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::% !

_output_shapes
:	À(: !

_output_shapes
::"

_output_shapes
: 

ª
1__inference_macro_conv2d_17_layer_call_fn_1728021

inputs%
unknown:&&
	unknown_0:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1727460w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
ü	
ß
)__inference_model_5_layer_call_fn_1727783

inputs'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	À(
	unknown_6:
identity¢StatefulPartitionedCallª
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
GPU2*0J 8 *M
fHRF
D__inference_model_5_layer_call_and_return_conditional_losses_1727635o
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
Ì
K
/__inference_activation_16_layer_call_fn_1727997

inputs
identityÀ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
²C

D__inference_model_5_layer_call_and_return_conditional_losses_1727897

inputsK
+macro_conv2d_15_mul_readvariableop_resource:  9
+macro_conv2d_15_add_readvariableop_resource:I
+macro_conv2d_16_mul_readvariableop_resource:OO9
+macro_conv2d_16_add_readvariableop_resource:I
+macro_conv2d_17_mul_readvariableop_resource:&&9
+macro_conv2d_17_add_readvariableop_resource:9
&dense_5_matmul_readvariableop_resource:	À(5
'dense_5_biasadd_readvariableop_resource:
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢"macro_conv2d_15/add/ReadVariableOp¢"macro_conv2d_15/mul/ReadVariableOp¢"macro_conv2d_16/add/ReadVariableOp¢"macro_conv2d_16/mul/ReadVariableOp¢"macro_conv2d_17/add/ReadVariableOp¢"macro_conv2d_17/mul/ReadVariableOpi
macro_conv2d_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_15/ExpandDims
ExpandDimsinputs'macro_conv2d_15/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
"macro_conv2d_15/mul/ReadVariableOpReadVariableOp+macro_conv2d_15_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0«
macro_conv2d_15/mulMul#macro_conv2d_15/ExpandDims:output:0*macro_conv2d_15/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  g
%macro_conv2d_15/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_15/SumSummacro_conv2d_15/mul:z:0.macro_conv2d_15/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  º
macro_conv2d_15/AvgPool2DAvgPoolmacro_conv2d_15/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
\
macro_conv2d_15/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_15/mul_1Mul"macro_conv2d_15/AvgPool2D:output:0 macro_conv2d_15/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"macro_conv2d_15/add/ReadVariableOpReadVariableOp+macro_conv2d_15_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_15/addAddV2macro_conv2d_15/mul_1:z:0*macro_conv2d_15/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
activation_15/ReluRelumacro_conv2d_15/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
max_pooling2d_10/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
i
macro_conv2d_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
macro_conv2d_16/ExpandDims
ExpandDims!max_pooling2d_10/MaxPool:output:0'macro_conv2d_16/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
"macro_conv2d_16/mul/ReadVariableOpReadVariableOp+macro_conv2d_16_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0©
macro_conv2d_16/mulMul#macro_conv2d_16/ExpandDims:output:0*macro_conv2d_16/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOg
%macro_conv2d_16/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_16/SumSummacro_conv2d_16/mul:z:0.macro_conv2d_16/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¸
macro_conv2d_16/AvgPool2DAvgPoolmacro_conv2d_16/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
\
macro_conv2d_16/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_16/mul_1Mul"macro_conv2d_16/AvgPool2D:output:0 macro_conv2d_16/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
"macro_conv2d_16/add/ReadVariableOpReadVariableOp+macro_conv2d_16_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_16/addAddV2macro_conv2d_16/mul_1:z:0*macro_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMm
activation_16/ReluRelumacro_conv2d_16/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM²
max_pooling2d_11/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
i
macro_conv2d_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
macro_conv2d_17/ExpandDims
ExpandDims!max_pooling2d_11/MaxPool:output:0'macro_conv2d_17/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
"macro_conv2d_17/mul/ReadVariableOpReadVariableOp+macro_conv2d_17_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0©
macro_conv2d_17/mulMul#macro_conv2d_17/ExpandDims:output:0*macro_conv2d_17/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&g
%macro_conv2d_17/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_17/SumSummacro_conv2d_17/mul:z:0.macro_conv2d_17/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¸
macro_conv2d_17/AvgPool2DAvgPoolmacro_conv2d_17/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
\
macro_conv2d_17/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_17/mul_1Mul"macro_conv2d_17/AvgPool2D:output:0 macro_conv2d_17/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
"macro_conv2d_17/add/ReadVariableOpReadVariableOp+macro_conv2d_17_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_17/addAddV2macro_conv2d_17/mul_1:z:0*macro_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$m
activation_17/ReluRelumacro_conv2d_17/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_5/ReshapeReshape activation_17/Relu:activations:0flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	À(*
dtype0
dense_5/MatMulMatMulflatten_5/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp#^macro_conv2d_15/add/ReadVariableOp#^macro_conv2d_15/mul/ReadVariableOp#^macro_conv2d_16/add/ReadVariableOp#^macro_conv2d_16/mul/ReadVariableOp#^macro_conv2d_17/add/ReadVariableOp#^macro_conv2d_17/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2H
"macro_conv2d_15/add/ReadVariableOp"macro_conv2d_15/add/ReadVariableOp2H
"macro_conv2d_15/mul/ReadVariableOp"macro_conv2d_15/mul/ReadVariableOp2H
"macro_conv2d_16/add/ReadVariableOp"macro_conv2d_16/add/ReadVariableOp2H
"macro_conv2d_16/mul/ReadVariableOp"macro_conv2d_16/mul/ReadVariableOp2H
"macro_conv2d_17/add/ReadVariableOp"macro_conv2d_17/add/ReadVariableOp2H
"macro_conv2d_17/mul/ReadVariableOp"macro_conv2d_17/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¶
G
+__inference_flatten_5_layer_call_fn_1728053

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_1727479a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs


ö
D__inference_dense_5_layer_call_and_return_conditional_losses_1728079

inputs1
matmul_readvariableop_resource:	À(-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À(*
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
:ÿÿÿÿÿÿÿÿÿÀ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
 
_user_specified_nameinputs
ãK
ç
"__inference__wrapped_model_1727350
input_6S
3model_5_macro_conv2d_15_mul_readvariableop_resource:  A
3model_5_macro_conv2d_15_add_readvariableop_resource:Q
3model_5_macro_conv2d_16_mul_readvariableop_resource:OOA
3model_5_macro_conv2d_16_add_readvariableop_resource:Q
3model_5_macro_conv2d_17_mul_readvariableop_resource:&&A
3model_5_macro_conv2d_17_add_readvariableop_resource:A
.model_5_dense_5_matmul_readvariableop_resource:	À(=
/model_5_dense_5_biasadd_readvariableop_resource:
identity¢&model_5/dense_5/BiasAdd/ReadVariableOp¢%model_5/dense_5/MatMul/ReadVariableOp¢*model_5/macro_conv2d_15/add/ReadVariableOp¢*model_5/macro_conv2d_15/mul/ReadVariableOp¢*model_5/macro_conv2d_16/add/ReadVariableOp¢*model_5/macro_conv2d_16/mul/ReadVariableOp¢*model_5/macro_conv2d_17/add/ReadVariableOp¢*model_5/macro_conv2d_17/mul/ReadVariableOpq
&model_5/macro_conv2d_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
"model_5/macro_conv2d_15/ExpandDims
ExpandDimsinput_6/model_5/macro_conv2d_15/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  ¬
*model_5/macro_conv2d_15/mul/ReadVariableOpReadVariableOp3model_5_macro_conv2d_15_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0Ã
model_5/macro_conv2d_15/mulMul+model_5/macro_conv2d_15/ExpandDims:output:02model_5/macro_conv2d_15/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  o
-model_5/macro_conv2d_15/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :·
model_5/macro_conv2d_15/SumSummodel_5/macro_conv2d_15/mul:z:06model_5/macro_conv2d_15/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  Ê
!model_5/macro_conv2d_15/AvgPool2DAvgPool$model_5/macro_conv2d_15/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
d
model_5/macro_conv2d_15/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A¶
model_5/macro_conv2d_15/mul_1Mul*model_5/macro_conv2d_15/AvgPool2D:output:0(model_5/macro_conv2d_15/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_5/macro_conv2d_15/add/ReadVariableOpReadVariableOp3model_5_macro_conv2d_15_add_readvariableop_resource*
_output_shapes
:*
dtype0·
model_5/macro_conv2d_15/addAddV2!model_5/macro_conv2d_15/mul_1:z:02model_5/macro_conv2d_15/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_5/activation_15/ReluRelumodel_5/macro_conv2d_15/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
 model_5/max_pooling2d_10/MaxPoolMaxPool(model_5/activation_15/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
q
&model_5/macro_conv2d_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÊ
"model_5/macro_conv2d_16/ExpandDims
ExpandDims)model_5/max_pooling2d_10/MaxPool:output:0/model_5/macro_conv2d_16/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOª
*model_5/macro_conv2d_16/mul/ReadVariableOpReadVariableOp3model_5_macro_conv2d_16_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0Á
model_5/macro_conv2d_16/mulMul+model_5/macro_conv2d_16/ExpandDims:output:02model_5/macro_conv2d_16/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOo
-model_5/macro_conv2d_16/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :µ
model_5/macro_conv2d_16/SumSummodel_5/macro_conv2d_16/mul:z:06model_5/macro_conv2d_16/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOOÈ
!model_5/macro_conv2d_16/AvgPool2DAvgPool$model_5/macro_conv2d_16/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
d
model_5/macro_conv2d_16/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A´
model_5/macro_conv2d_16/mul_1Mul*model_5/macro_conv2d_16/AvgPool2D:output:0(model_5/macro_conv2d_16/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
*model_5/macro_conv2d_16/add/ReadVariableOpReadVariableOp3model_5_macro_conv2d_16_add_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_5/macro_conv2d_16/addAddV2!model_5/macro_conv2d_16/mul_1:z:02model_5/macro_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM}
model_5/activation_16/ReluRelumodel_5/macro_conv2d_16/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMÂ
 model_5/max_pooling2d_11/MaxPoolMaxPool(model_5/activation_16/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
q
&model_5/macro_conv2d_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÊ
"model_5/macro_conv2d_17/ExpandDims
ExpandDims)model_5/max_pooling2d_11/MaxPool:output:0/model_5/macro_conv2d_17/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&ª
*model_5/macro_conv2d_17/mul/ReadVariableOpReadVariableOp3model_5_macro_conv2d_17_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0Á
model_5/macro_conv2d_17/mulMul+model_5/macro_conv2d_17/ExpandDims:output:02model_5/macro_conv2d_17/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&o
-model_5/macro_conv2d_17/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :µ
model_5/macro_conv2d_17/SumSummodel_5/macro_conv2d_17/mul:z:06model_5/macro_conv2d_17/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&È
!model_5/macro_conv2d_17/AvgPool2DAvgPool$model_5/macro_conv2d_17/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
d
model_5/macro_conv2d_17/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A´
model_5/macro_conv2d_17/mul_1Mul*model_5/macro_conv2d_17/AvgPool2D:output:0(model_5/macro_conv2d_17/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
*model_5/macro_conv2d_17/add/ReadVariableOpReadVariableOp3model_5_macro_conv2d_17_add_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_5/macro_conv2d_17/addAddV2!model_5/macro_conv2d_17/mul_1:z:02model_5/macro_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$}
model_5/activation_17/ReluRelumodel_5/macro_conv2d_17/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$h
model_5/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  £
model_5/flatten_5/ReshapeReshape(model_5/activation_17/Relu:activations:0 model_5/flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
%model_5/dense_5/MatMul/ReadVariableOpReadVariableOp.model_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	À(*
dtype0¥
model_5/dense_5/MatMulMatMul"model_5/flatten_5/Reshape:output:0-model_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_5/dense_5/BiasAddBiasAdd model_5/dense_5/MatMul:product:0.model_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_5/dense_5/SigmoidSigmoid model_5/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitymodel_5/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp'^model_5/dense_5/BiasAdd/ReadVariableOp&^model_5/dense_5/MatMul/ReadVariableOp+^model_5/macro_conv2d_15/add/ReadVariableOp+^model_5/macro_conv2d_15/mul/ReadVariableOp+^model_5/macro_conv2d_16/add/ReadVariableOp+^model_5/macro_conv2d_16/mul/ReadVariableOp+^model_5/macro_conv2d_17/add/ReadVariableOp+^model_5/macro_conv2d_17/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2P
&model_5/dense_5/BiasAdd/ReadVariableOp&model_5/dense_5/BiasAdd/ReadVariableOp2N
%model_5/dense_5/MatMul/ReadVariableOp%model_5/dense_5/MatMul/ReadVariableOp2X
*model_5/macro_conv2d_15/add/ReadVariableOp*model_5/macro_conv2d_15/add/ReadVariableOp2X
*model_5/macro_conv2d_15/mul/ReadVariableOp*model_5/macro_conv2d_15/mul/ReadVariableOp2X
*model_5/macro_conv2d_16/add/ReadVariableOp*model_5/macro_conv2d_16/add/ReadVariableOp2X
*model_5/macro_conv2d_16/mul/ReadVariableOp*model_5/macro_conv2d_16/mul/ReadVariableOp2X
*model_5/macro_conv2d_17/add/ReadVariableOp*model_5/macro_conv2d_17/add/ReadVariableOp2X
*model_5/macro_conv2d_17/mul/ReadVariableOp*model_5/macro_conv2d_17/mul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_6
Õ
ý
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727946

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
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
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
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
Ù	
Ü
%__inference_signature_wrapper_1727920
input_6'
unknown:  
	unknown_0:'
	unknown_1:OO
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:	À(
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_1727350o
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
_user_specified_name	input_6
Õ
ý
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398

inputs;
mul_readvariableop_resource:  )
add_readvariableop_resource:
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
:  *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
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

i
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1727371

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

¬
1__inference_macro_conv2d_15_layer_call_fn_1727929

inputs'
unknown:  
	unknown_0:
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727398y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
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
î
f
J__inference_activation_16_layer_call_and_return_conditional_losses_1727440

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
Ô
K
/__inference_activation_15_layer_call_fn_1727951

inputs
identityÂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_15_layer_call_and_return_conditional_losses_1727409j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
f
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
È

)__inference_dense_5_layer_call_fn_1728068

inputs
unknown:	À(
	unknown_0:
identity¢StatefulPartitionedCallÜ
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
GPU2*0J 8 *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1727492o
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
:ÿÿÿÿÿÿÿÿÿÀ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
 
_user_specified_nameinputs
ï
¸
#__inference__traced_restore_1728310
file_prefixG
'assignvariableop_macro_conv2d_15_kernel:  5
'assignvariableop_1_macro_conv2d_15_bias:G
)assignvariableop_2_macro_conv2d_16_kernel:OO5
'assignvariableop_3_macro_conv2d_16_bias:G
)assignvariableop_4_macro_conv2d_17_kernel:&&5
'assignvariableop_5_macro_conv2d_17_bias:4
!assignvariableop_6_dense_5_kernel:	À(-
assignvariableop_7_dense_5_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: Q
1assignvariableop_17_adam_macro_conv2d_15_kernel_m:  =
/assignvariableop_18_adam_macro_conv2d_15_bias_m:O
1assignvariableop_19_adam_macro_conv2d_16_kernel_m:OO=
/assignvariableop_20_adam_macro_conv2d_16_bias_m:O
1assignvariableop_21_adam_macro_conv2d_17_kernel_m:&&=
/assignvariableop_22_adam_macro_conv2d_17_bias_m:<
)assignvariableop_23_adam_dense_5_kernel_m:	À(5
'assignvariableop_24_adam_dense_5_bias_m:Q
1assignvariableop_25_adam_macro_conv2d_15_kernel_v:  =
/assignvariableop_26_adam_macro_conv2d_15_bias_v:O
1assignvariableop_27_adam_macro_conv2d_16_kernel_v:OO=
/assignvariableop_28_adam_macro_conv2d_16_bias_v:O
1assignvariableop_29_adam_macro_conv2d_17_kernel_v:&&=
/assignvariableop_30_adam_macro_conv2d_17_bias_v:<
)assignvariableop_31_adam_dense_5_kernel_v:	À(5
'assignvariableop_32_adam_dense_5_bias_v:
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9²
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_macro_conv2d_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp'assignvariableop_1_macro_conv2d_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp)assignvariableop_2_macro_conv2d_16_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp'assignvariableop_3_macro_conv2d_16_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp)assignvariableop_4_macro_conv2d_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp'assignvariableop_5_macro_conv2d_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_5_biasIdentity_7:output:0"/device:CPU:0*
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
:¢
AssignVariableOp_17AssignVariableOp1assignvariableop_17_adam_macro_conv2d_15_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_macro_conv2d_15_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_macro_conv2d_16_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_macro_conv2d_16_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_macro_conv2d_17_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_22AssignVariableOp/assignvariableop_22_adam_macro_conv2d_17_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_25AssignVariableOp1assignvariableop_25_adam_macro_conv2d_15_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_26AssignVariableOp/assignvariableop_26_adam_macro_conv2d_15_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_macro_conv2d_16_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_28AssignVariableOp/assignvariableop_28_adam_macro_conv2d_16_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_29AssignVariableOp1assignvariableop_29_adam_macro_conv2d_17_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_30AssignVariableOp/assignvariableop_30_adam_macro_conv2d_17_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_5_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
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
ö
f
J__inference_activation_15_layer_call_and_return_conditional_losses_1727956

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
û
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727429

inputs9
mul_readvariableop_resource:OO)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿOOz
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727966

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
¿
û
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1728038

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
Ì
K
/__inference_activation_17_layer_call_fn_1728043

inputs
identityÀ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_17_layer_call_and_return_conditional_losses_1727471h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
î
f
J__inference_activation_16_layer_call_and_return_conditional_losses_1728002

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
²C

D__inference_model_5_layer_call_and_return_conditional_losses_1727840

inputsK
+macro_conv2d_15_mul_readvariableop_resource:  9
+macro_conv2d_15_add_readvariableop_resource:I
+macro_conv2d_16_mul_readvariableop_resource:OO9
+macro_conv2d_16_add_readvariableop_resource:I
+macro_conv2d_17_mul_readvariableop_resource:&&9
+macro_conv2d_17_add_readvariableop_resource:9
&dense_5_matmul_readvariableop_resource:	À(5
'dense_5_biasadd_readvariableop_resource:
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢"macro_conv2d_15/add/ReadVariableOp¢"macro_conv2d_15/mul/ReadVariableOp¢"macro_conv2d_16/add/ReadVariableOp¢"macro_conv2d_16/mul/ReadVariableOp¢"macro_conv2d_17/add/ReadVariableOp¢"macro_conv2d_17/mul/ReadVariableOpi
macro_conv2d_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_15/ExpandDims
ExpandDimsinputs'macro_conv2d_15/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
"macro_conv2d_15/mul/ReadVariableOpReadVariableOp+macro_conv2d_15_mul_readvariableop_resource*,
_output_shapes
:  *
dtype0«
macro_conv2d_15/mulMul#macro_conv2d_15/ExpandDims:output:0*macro_conv2d_15/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  g
%macro_conv2d_15/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_15/SumSummacro_conv2d_15/mul:z:0.macro_conv2d_15/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  º
macro_conv2d_15/AvgPool2DAvgPoolmacro_conv2d_15/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
\
macro_conv2d_15/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_15/mul_1Mul"macro_conv2d_15/AvgPool2D:output:0 macro_conv2d_15/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"macro_conv2d_15/add/ReadVariableOpReadVariableOp+macro_conv2d_15_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_15/addAddV2macro_conv2d_15/mul_1:z:0*macro_conv2d_15/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
activation_15/ReluRelumacro_conv2d_15/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
max_pooling2d_10/MaxPoolMaxPool activation_15/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO*
ksize
*
paddingVALID*
strides
i
macro_conv2d_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
macro_conv2d_16/ExpandDims
ExpandDims!max_pooling2d_10/MaxPool:output:0'macro_conv2d_16/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO
"macro_conv2d_16/mul/ReadVariableOpReadVariableOp+macro_conv2d_16_mul_readvariableop_resource**
_output_shapes
:OO*
dtype0©
macro_conv2d_16/mulMul#macro_conv2d_16/ExpandDims:output:0*macro_conv2d_16/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOOg
%macro_conv2d_16/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_16/SumSummacro_conv2d_16/mul:z:0.macro_conv2d_16/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¸
macro_conv2d_16/AvgPool2DAvgPoolmacro_conv2d_16/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
\
macro_conv2d_16/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_16/mul_1Mul"macro_conv2d_16/AvgPool2D:output:0 macro_conv2d_16/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
"macro_conv2d_16/add/ReadVariableOpReadVariableOp+macro_conv2d_16_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_16/addAddV2macro_conv2d_16/mul_1:z:0*macro_conv2d_16/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMm
activation_16/ReluRelumacro_conv2d_16/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM²
max_pooling2d_11/MaxPoolMaxPool activation_16/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
i
macro_conv2d_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
macro_conv2d_17/ExpandDims
ExpandDims!max_pooling2d_11/MaxPool:output:0'macro_conv2d_17/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
"macro_conv2d_17/mul/ReadVariableOpReadVariableOp+macro_conv2d_17_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0©
macro_conv2d_17/mulMul#macro_conv2d_17/ExpandDims:output:0*macro_conv2d_17/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&g
%macro_conv2d_17/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_17/SumSummacro_conv2d_17/mul:z:0.macro_conv2d_17/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¸
macro_conv2d_17/AvgPool2DAvgPoolmacro_conv2d_17/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
\
macro_conv2d_17/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_17/mul_1Mul"macro_conv2d_17/AvgPool2D:output:0 macro_conv2d_17/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
"macro_conv2d_17/add/ReadVariableOpReadVariableOp+macro_conv2d_17_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_17/addAddV2macro_conv2d_17/mul_1:z:0*macro_conv2d_17/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$m
activation_17/ReluRelumacro_conv2d_17/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_5/ReshapeReshape activation_17/Relu:activations:0flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ(
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	À(*
dtype0
dense_5/MatMulMatMulflatten_5/Reshape:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp#^macro_conv2d_15/add/ReadVariableOp#^macro_conv2d_15/mul/ReadVariableOp#^macro_conv2d_16/add/ReadVariableOp#^macro_conv2d_16/mul/ReadVariableOp#^macro_conv2d_17/add/ReadVariableOp#^macro_conv2d_17/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2H
"macro_conv2d_15/add/ReadVariableOp"macro_conv2d_15/add/ReadVariableOp2H
"macro_conv2d_15/mul/ReadVariableOp"macro_conv2d_15/mul/ReadVariableOp2H
"macro_conv2d_16/add/ReadVariableOp"macro_conv2d_16/add/ReadVariableOp2H
"macro_conv2d_16/mul/ReadVariableOp"macro_conv2d_16/mul/ReadVariableOp2H
"macro_conv2d_17/add/ReadVariableOp"macro_conv2d_17/add/ReadVariableOp2H
"macro_conv2d_17/mul/ReadVariableOp"macro_conv2d_17/mul/ReadVariableOp:Y U
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
input_6:
serving_default_input_6:0ÿÿÿÿÿÿÿÿÿ  ;
dense_50
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:­
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
ó
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem¡m¢)m£*m¤=m¥>m¦Qm§Rm¨v©vª)v«*v¬=v­>v®Qv¯Rv°"
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
ò2ï
)__inference_model_5_layer_call_fn_1727518
)__inference_model_5_layer_call_fn_1727762
)__inference_model_5_layer_call_fn_1727783
)__inference_model_5_layer_call_fn_1727675À
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
Þ2Û
D__inference_model_5_layer_call_and_return_conditional_losses_1727840
D__inference_model_5_layer_call_and_return_conditional_losses_1727897
D__inference_model_5_layer_call_and_return_conditional_losses_1727705
D__inference_model_5_layer_call_and_return_conditional_losses_1727735À
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
"__inference__wrapped_model_1727350input_6"
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
cserving_default"
signature_map
6:4  2macro_conv2d_15/kernel
": 2macro_conv2d_15/bias
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
Û2Ø
1__inference_macro_conv2d_15_layer_call_fn_1727929¢
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
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727946¢
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
Ù2Ö
/__inference_activation_15_layer_call_fn_1727951¢
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
J__inference_activation_15_layer_call_and_return_conditional_losses_1727956¢
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
Ü2Ù
2__inference_max_pooling2d_10_layer_call_fn_1727961¢
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
÷2ô
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727966¢
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
4:2OO2macro_conv2d_16/kernel
": 2macro_conv2d_16/bias
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
Û2Ø
1__inference_macro_conv2d_16_layer_call_fn_1727975¢
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
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727992¢
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
Ù2Ö
/__inference_activation_16_layer_call_fn_1727997¢
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
J__inference_activation_16_layer_call_and_return_conditional_losses_1728002¢
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
¯
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
Ü2Ù
2__inference_max_pooling2d_11_layer_call_fn_1728007¢
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
÷2ô
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1728012¢
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
4:2&&2macro_conv2d_17/kernel
": 2macro_conv2d_17/bias
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
Û2Ø
1__inference_macro_conv2d_17_layer_call_fn_1728021¢
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
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1728038¢
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
Ù2Ö
/__inference_activation_17_layer_call_fn_1728043¢
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
J__inference_activation_17_layer_call_and_return_conditional_losses_1728048¢
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
Õ2Ò
+__inference_flatten_5_layer_call_fn_1728053¢
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
ð2í
F__inference_flatten_5_layer_call_and_return_conditional_losses_1728059¢
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
!:	À(2dense_5/kernel
:2dense_5/bias
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
Ó2Ð
)__inference_dense_5_layer_call_fn_1728068¢
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
D__inference_dense_5_layer_call_and_return_conditional_losses_1728079¢
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
ÌBÉ
%__inference_signature_wrapper_1727920input_6"
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
;:9  2Adam/macro_conv2d_15/kernel/m
':%2Adam/macro_conv2d_15/bias/m
9:7OO2Adam/macro_conv2d_16/kernel/m
':%2Adam/macro_conv2d_16/bias/m
9:7&&2Adam/macro_conv2d_17/kernel/m
':%2Adam/macro_conv2d_17/bias/m
&:$	À(2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
;:9  2Adam/macro_conv2d_15/kernel/v
':%2Adam/macro_conv2d_15/bias/v
9:7OO2Adam/macro_conv2d_16/kernel/v
':%2Adam/macro_conv2d_16/bias/v
9:7&&2Adam/macro_conv2d_17/kernel/v
':%2Adam/macro_conv2d_17/bias/v
&:$	À(2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
"__inference__wrapped_model_1727350y)*=>QR:¢7
0¢-
+(
input_6ÿÿÿÿÿÿÿÿÿ  
ª "1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿº
J__inference_activation_15_layer_call_and_return_conditional_losses_1727956l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_activation_15_layer_call_fn_1727951_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ¶
J__inference_activation_16_layer_call_and_return_conditional_losses_1728002h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
/__inference_activation_16_layer_call_fn_1727997[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª " ÿÿÿÿÿÿÿÿÿMM¶
J__inference_activation_17_layer_call_and_return_conditional_losses_1728048h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
/__inference_activation_17_layer_call_fn_1728043[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª " ÿÿÿÿÿÿÿÿÿ$$¥
D__inference_dense_5_layer_call_and_return_conditional_losses_1728079]QR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ(
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_5_layer_call_fn_1728068PQR0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ(
ª "ÿÿÿÿÿÿÿÿÿ«
F__inference_flatten_5_layer_call_and_return_conditional_losses_1728059a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ(
 
+__inference_flatten_5_layer_call_fn_1728053T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "ÿÿÿÿÿÿÿÿÿÀ(À
L__inference_macro_conv2d_15_layer_call_and_return_conditional_losses_1727946p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
1__inference_macro_conv2d_15_layer_call_fn_1727929c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª ""ÿÿÿÿÿÿÿÿÿ¼
L__inference_macro_conv2d_16_layer_call_and_return_conditional_losses_1727992l)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
1__inference_macro_conv2d_16_layer_call_fn_1727975_)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO
ª " ÿÿÿÿÿÿÿÿÿMM¼
L__inference_macro_conv2d_17_layer_call_and_return_conditional_losses_1728038l=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
1__inference_macro_conv2d_17_layer_call_fn_1728021_=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª " ÿÿÿÿÿÿÿÿÿ$$ð
M__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1727966R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_10_layer_call_fn_1727961R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
M__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_1728012R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_11_layer_call_fn_1728007R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
D__inference_model_5_layer_call_and_return_conditional_losses_1727705u)*=>QRB¢?
8¢5
+(
input_6ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
D__inference_model_5_layer_call_and_return_conditional_losses_1727735u)*=>QRB¢?
8¢5
+(
input_6ÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
D__inference_model_5_layer_call_and_return_conditional_losses_1727840t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
D__inference_model_5_layer_call_and_return_conditional_losses_1727897t)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_5_layer_call_fn_1727518h)*=>QRB¢?
8¢5
+(
input_6ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_5_layer_call_fn_1727675h)*=>QRB¢?
8¢5
+(
input_6ÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_5_layer_call_fn_1727762g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_5_layer_call_fn_1727783g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ®
%__inference_signature_wrapper_1727920)*=>QRE¢B
¢ 
;ª8
6
input_6+(
input_6ÿÿÿÿÿÿÿÿÿ  "1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ