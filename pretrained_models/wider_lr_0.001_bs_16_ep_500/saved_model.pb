Þ	
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ø

macro_conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:   *'
shared_namemacro_conv2d_12/kernel

*macro_conv2d_12/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_12/kernel*,
_output_shapes
:   *
dtype0

macro_conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namemacro_conv2d_12/bias
y
(macro_conv2d_12/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_12/bias*
_output_shapes
: *
dtype0

macro_conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO *'
shared_namemacro_conv2d_13/kernel

*macro_conv2d_13/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_13/kernel**
_output_shapes
:OO *
dtype0

macro_conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namemacro_conv2d_13/bias
y
(macro_conv2d_13/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_13/bias*
_output_shapes
:*
dtype0

macro_conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*'
shared_namemacro_conv2d_14/kernel

*macro_conv2d_14/kernel/Read/ReadVariableOpReadVariableOpmacro_conv2d_14/kernel**
_output_shapes
:&&*
dtype0

macro_conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namemacro_conv2d_14/bias
y
(macro_conv2d_14/bias/Read/ReadVariableOpReadVariableOpmacro_conv2d_14/bias*
_output_shapes
:*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¢*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
¢*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
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
Adam/macro_conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:   *.
shared_nameAdam/macro_conv2d_12/kernel/m

1Adam/macro_conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_12/kernel/m*,
_output_shapes
:   *
dtype0

Adam/macro_conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/macro_conv2d_12/bias/m

/Adam/macro_conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_12/bias/m*
_output_shapes
: *
dtype0
¢
Adam/macro_conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO *.
shared_nameAdam/macro_conv2d_13/kernel/m

1Adam/macro_conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_13/kernel/m**
_output_shapes
:OO *
dtype0

Adam/macro_conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_13/bias/m

/Adam/macro_conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_13/bias/m*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*.
shared_nameAdam/macro_conv2d_14/kernel/m

1Adam/macro_conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_14/kernel/m**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_14/bias/m

/Adam/macro_conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¢*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
¢*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
¤
Adam/macro_conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:   *.
shared_nameAdam/macro_conv2d_12/kernel/v

1Adam/macro_conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_12/kernel/v*,
_output_shapes
:   *
dtype0

Adam/macro_conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/macro_conv2d_12/bias/v

/Adam/macro_conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_12/bias/v*
_output_shapes
: *
dtype0
¢
Adam/macro_conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:OO *.
shared_nameAdam/macro_conv2d_13/kernel/v

1Adam/macro_conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_13/kernel/v**
_output_shapes
:OO *
dtype0

Adam/macro_conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_13/bias/v

/Adam/macro_conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_13/bias/v*
_output_shapes
:*
dtype0
¢
Adam/macro_conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&&*.
shared_nameAdam/macro_conv2d_14/kernel/v

1Adam/macro_conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_14/kernel/v**
_output_shapes
:&&*
dtype0

Adam/macro_conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/macro_conv2d_14/bias/v

/Adam/macro_conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/macro_conv2d_14/bias/v*
_output_shapes
:*
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¢*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
¢*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
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
VARIABLE_VALUEmacro_conv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEmacro_conv2d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEmacro_conv2d_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEmacro_conv2d_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/macro_conv2d_12/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_12/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_13/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_13/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_12/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_12/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_13/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_13/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/macro_conv2d_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_5Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ  
î
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5macro_conv2d_12/kernelmacro_conv2d_12/biasmacro_conv2d_13/kernelmacro_conv2d_13/biasmacro_conv2d_14/kernelmacro_conv2d_14/biasdense_4/kerneldense_4/bias*
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
%__inference_signature_wrapper_1207365
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¡
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*macro_conv2d_12/kernel/Read/ReadVariableOp(macro_conv2d_12/bias/Read/ReadVariableOp*macro_conv2d_13/kernel/Read/ReadVariableOp(macro_conv2d_13/bias/Read/ReadVariableOp*macro_conv2d_14/kernel/Read/ReadVariableOp(macro_conv2d_14/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/macro_conv2d_12/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_12/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_13/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_13/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_14/kernel/m/Read/ReadVariableOp/Adam/macro_conv2d_14/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp1Adam/macro_conv2d_12/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_12/bias/v/Read/ReadVariableOp1Adam/macro_conv2d_13/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_13/bias/v/Read/ReadVariableOp1Adam/macro_conv2d_14/kernel/v/Read/ReadVariableOp/Adam/macro_conv2d_14/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*.
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
 __inference__traced_save_1207646

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemacro_conv2d_12/kernelmacro_conv2d_12/biasmacro_conv2d_13/kernelmacro_conv2d_13/biasmacro_conv2d_14/kernelmacro_conv2d_14/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/macro_conv2d_12/kernel/mAdam/macro_conv2d_12/bias/mAdam/macro_conv2d_13/kernel/mAdam/macro_conv2d_13/bias/mAdam/macro_conv2d_14/kernel/mAdam/macro_conv2d_14/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/macro_conv2d_12/kernel/vAdam/macro_conv2d_12/bias/vAdam/macro_conv2d_13/kernel/vAdam/macro_conv2d_13/bias/vAdam/macro_conv2d_14/kernel/vAdam/macro_conv2d_14/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*-
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
#__inference__traced_restore_1207755Ðê
Ú	
Ý
%__inference_signature_wrapper_1207365
input_5'
unknown:   
	unknown_0: '
	unknown_1:OO 
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:
¢
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_1206795o
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
_user_specified_name	input_5
ö
f
J__inference_activation_12_layer_call_and_return_conditional_losses_1207401

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


á
)__inference_model_4_layer_call_fn_1207120
input_5'
unknown:   
	unknown_0: '
	unknown_1:OO 
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:
¢
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
D__inference_model_4_layer_call_and_return_conditional_losses_1207080o
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
_user_specified_name	input_5
¿
û
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
±C

D__inference_model_4_layer_call_and_return_conditional_losses_1207342

inputsK
+macro_conv2d_12_mul_readvariableop_resource:   9
+macro_conv2d_12_add_readvariableop_resource: I
+macro_conv2d_13_mul_readvariableop_resource:OO 9
+macro_conv2d_13_add_readvariableop_resource:I
+macro_conv2d_14_mul_readvariableop_resource:&&9
+macro_conv2d_14_add_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
¢5
'dense_4_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢"macro_conv2d_12/add/ReadVariableOp¢"macro_conv2d_12/mul/ReadVariableOp¢"macro_conv2d_13/add/ReadVariableOp¢"macro_conv2d_13/mul/ReadVariableOp¢"macro_conv2d_14/add/ReadVariableOp¢"macro_conv2d_14/mul/ReadVariableOpi
macro_conv2d_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_12/ExpandDims
ExpandDimsinputs'macro_conv2d_12/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
"macro_conv2d_12/mul/ReadVariableOpReadVariableOp+macro_conv2d_12_mul_readvariableop_resource*,
_output_shapes
:   *
dtype0«
macro_conv2d_12/mulMul#macro_conv2d_12/ExpandDims:output:0*macro_conv2d_12/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ   g
%macro_conv2d_12/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_12/SumSummacro_conv2d_12/mul:z:0.macro_conv2d_12/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   º
macro_conv2d_12/AvgPool2DAvgPoolmacro_conv2d_12/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
\
macro_conv2d_12/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_12/mul_1Mul"macro_conv2d_12/AvgPool2D:output:0 macro_conv2d_12/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"macro_conv2d_12/add/ReadVariableOpReadVariableOp+macro_conv2d_12_add_readvariableop_resource*
_output_shapes
: *
dtype0
macro_conv2d_12/addAddV2macro_conv2d_12/mul_1:z:0*macro_conv2d_12/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
activation_12/ReluRelumacro_conv2d_12/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO *
ksize
*
paddingVALID*
strides
i
macro_conv2d_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
macro_conv2d_13/ExpandDims
ExpandDims max_pooling2d_8/MaxPool:output:0'macro_conv2d_13/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO 
"macro_conv2d_13/mul/ReadVariableOpReadVariableOp+macro_conv2d_13_mul_readvariableop_resource**
_output_shapes
:OO *
dtype0©
macro_conv2d_13/mulMul#macro_conv2d_13/ExpandDims:output:0*macro_conv2d_13/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO g
%macro_conv2d_13/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_13/SumSummacro_conv2d_13/mul:z:0.macro_conv2d_13/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¸
macro_conv2d_13/AvgPool2DAvgPoolmacro_conv2d_13/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
\
macro_conv2d_13/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_13/mul_1Mul"macro_conv2d_13/AvgPool2D:output:0 macro_conv2d_13/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
"macro_conv2d_13/add/ReadVariableOpReadVariableOp+macro_conv2d_13_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_13/addAddV2macro_conv2d_13/mul_1:z:0*macro_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMm
activation_13/ReluRelumacro_conv2d_13/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM±
max_pooling2d_9/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
i
macro_conv2d_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
macro_conv2d_14/ExpandDims
ExpandDims max_pooling2d_9/MaxPool:output:0'macro_conv2d_14/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
"macro_conv2d_14/mul/ReadVariableOpReadVariableOp+macro_conv2d_14_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0©
macro_conv2d_14/mulMul#macro_conv2d_14/ExpandDims:output:0*macro_conv2d_14/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&g
%macro_conv2d_14/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_14/SumSummacro_conv2d_14/mul:z:0.macro_conv2d_14/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¸
macro_conv2d_14/AvgPool2DAvgPoolmacro_conv2d_14/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
\
macro_conv2d_14/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_14/mul_1Mul"macro_conv2d_14/AvgPool2D:output:0 macro_conv2d_14/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
"macro_conv2d_14/add/ReadVariableOpReadVariableOp+macro_conv2d_14_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_14/addAddV2macro_conv2d_14/mul_1:z:0*macro_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$m
activation_14/ReluRelumacro_conv2d_14/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Q  
flatten_4/ReshapeReshape activation_14/Relu:activations:0flatten_4/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
¢*
dtype0
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp#^macro_conv2d_12/add/ReadVariableOp#^macro_conv2d_12/mul/ReadVariableOp#^macro_conv2d_13/add/ReadVariableOp#^macro_conv2d_13/mul/ReadVariableOp#^macro_conv2d_14/add/ReadVariableOp#^macro_conv2d_14/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2H
"macro_conv2d_12/add/ReadVariableOp"macro_conv2d_12/add/ReadVariableOp2H
"macro_conv2d_12/mul/ReadVariableOp"macro_conv2d_12/mul/ReadVariableOp2H
"macro_conv2d_13/add/ReadVariableOp"macro_conv2d_13/add/ReadVariableOp2H
"macro_conv2d_13/mul/ReadVariableOp"macro_conv2d_13/mul/ReadVariableOp2H
"macro_conv2d_14/add/ReadVariableOp"macro_conv2d_14/add/ReadVariableOp2H
"macro_conv2d_14/mul/ReadVariableOp"macro_conv2d_14/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¢

÷
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937

inputs2
matmul_readvariableop_resource:
¢-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¢*
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
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¢: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_9_layer_call_fn_1207452

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
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816
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

ª
1__inference_macro_conv2d_13_layer_call_fn_1207420

inputs%
unknown:OO 
	unknown_0:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO 
 
_user_specified_nameinputs
¸
G
+__inference_flatten_4_layer_call_fn_1207498

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
¢

÷
D__inference_dense_4_layer_call_and_return_conditional_losses_1207524

inputs2
matmul_readvariableop_resource:
¢-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¢*
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
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¢: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
 
_user_specified_nameinputs
âK
è
"__inference__wrapped_model_1206795
input_5S
3model_4_macro_conv2d_12_mul_readvariableop_resource:   A
3model_4_macro_conv2d_12_add_readvariableop_resource: Q
3model_4_macro_conv2d_13_mul_readvariableop_resource:OO A
3model_4_macro_conv2d_13_add_readvariableop_resource:Q
3model_4_macro_conv2d_14_mul_readvariableop_resource:&&A
3model_4_macro_conv2d_14_add_readvariableop_resource:B
.model_4_dense_4_matmul_readvariableop_resource:
¢=
/model_4_dense_4_biasadd_readvariableop_resource:
identity¢&model_4/dense_4/BiasAdd/ReadVariableOp¢%model_4/dense_4/MatMul/ReadVariableOp¢*model_4/macro_conv2d_12/add/ReadVariableOp¢*model_4/macro_conv2d_12/mul/ReadVariableOp¢*model_4/macro_conv2d_13/add/ReadVariableOp¢*model_4/macro_conv2d_13/mul/ReadVariableOp¢*model_4/macro_conv2d_14/add/ReadVariableOp¢*model_4/macro_conv2d_14/mul/ReadVariableOpq
&model_4/macro_conv2d_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
"model_4/macro_conv2d_12/ExpandDims
ExpandDimsinput_5/model_4/macro_conv2d_12/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  ¬
*model_4/macro_conv2d_12/mul/ReadVariableOpReadVariableOp3model_4_macro_conv2d_12_mul_readvariableop_resource*,
_output_shapes
:   *
dtype0Ã
model_4/macro_conv2d_12/mulMul+model_4/macro_conv2d_12/ExpandDims:output:02model_4/macro_conv2d_12/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ   o
-model_4/macro_conv2d_12/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :·
model_4/macro_conv2d_12/SumSummodel_4/macro_conv2d_12/mul:z:06model_4/macro_conv2d_12/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   Ê
!model_4/macro_conv2d_12/AvgPool2DAvgPool$model_4/macro_conv2d_12/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
d
model_4/macro_conv2d_12/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A¶
model_4/macro_conv2d_12/mul_1Mul*model_4/macro_conv2d_12/AvgPool2D:output:0(model_4/macro_conv2d_12/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_4/macro_conv2d_12/add/ReadVariableOpReadVariableOp3model_4_macro_conv2d_12_add_readvariableop_resource*
_output_shapes
: *
dtype0·
model_4/macro_conv2d_12/addAddV2!model_4/macro_conv2d_12/mul_1:z:02model_4/macro_conv2d_12/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_4/activation_12/ReluRelumodel_4/macro_conv2d_12/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
model_4/max_pooling2d_8/MaxPoolMaxPool(model_4/activation_12/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO *
ksize
*
paddingVALID*
strides
q
&model_4/macro_conv2d_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
"model_4/macro_conv2d_13/ExpandDims
ExpandDims(model_4/max_pooling2d_8/MaxPool:output:0/model_4/macro_conv2d_13/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO ª
*model_4/macro_conv2d_13/mul/ReadVariableOpReadVariableOp3model_4_macro_conv2d_13_mul_readvariableop_resource**
_output_shapes
:OO *
dtype0Á
model_4/macro_conv2d_13/mulMul+model_4/macro_conv2d_13/ExpandDims:output:02model_4/macro_conv2d_13/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO o
-model_4/macro_conv2d_13/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :µ
model_4/macro_conv2d_13/SumSummodel_4/macro_conv2d_13/mul:z:06model_4/macro_conv2d_13/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOOÈ
!model_4/macro_conv2d_13/AvgPool2DAvgPool$model_4/macro_conv2d_13/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
d
model_4/macro_conv2d_13/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A´
model_4/macro_conv2d_13/mul_1Mul*model_4/macro_conv2d_13/AvgPool2D:output:0(model_4/macro_conv2d_13/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
*model_4/macro_conv2d_13/add/ReadVariableOpReadVariableOp3model_4_macro_conv2d_13_add_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_4/macro_conv2d_13/addAddV2!model_4/macro_conv2d_13/mul_1:z:02model_4/macro_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM}
model_4/activation_13/ReluRelumodel_4/macro_conv2d_13/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMÁ
model_4/max_pooling2d_9/MaxPoolMaxPool(model_4/activation_13/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
q
&model_4/macro_conv2d_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
"model_4/macro_conv2d_14/ExpandDims
ExpandDims(model_4/max_pooling2d_9/MaxPool:output:0/model_4/macro_conv2d_14/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&ª
*model_4/macro_conv2d_14/mul/ReadVariableOpReadVariableOp3model_4_macro_conv2d_14_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0Á
model_4/macro_conv2d_14/mulMul+model_4/macro_conv2d_14/ExpandDims:output:02model_4/macro_conv2d_14/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&o
-model_4/macro_conv2d_14/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :µ
model_4/macro_conv2d_14/SumSummodel_4/macro_conv2d_14/mul:z:06model_4/macro_conv2d_14/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&È
!model_4/macro_conv2d_14/AvgPool2DAvgPool$model_4/macro_conv2d_14/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
d
model_4/macro_conv2d_14/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A´
model_4/macro_conv2d_14/mul_1Mul*model_4/macro_conv2d_14/AvgPool2D:output:0(model_4/macro_conv2d_14/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
*model_4/macro_conv2d_14/add/ReadVariableOpReadVariableOp3model_4_macro_conv2d_14_add_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_4/macro_conv2d_14/addAddV2!model_4/macro_conv2d_14/mul_1:z:02model_4/macro_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$}
model_4/activation_14/ReluRelumodel_4/macro_conv2d_14/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$h
model_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Q  ¤
model_4/flatten_4/ReshapeReshape(model_4/activation_14/Relu:activations:0 model_4/flatten_4/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%model_4/dense_4/MatMul/ReadVariableOpReadVariableOp.model_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
¢*
dtype0¥
model_4/dense_4/MatMulMatMul"model_4/flatten_4/Reshape:output:0-model_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_4/dense_4/BiasAddBiasAdd model_4/dense_4/MatMul:product:0.model_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_4/dense_4/SigmoidSigmoid model_4/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitymodel_4/dense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp'^model_4/dense_4/BiasAdd/ReadVariableOp&^model_4/dense_4/MatMul/ReadVariableOp+^model_4/macro_conv2d_12/add/ReadVariableOp+^model_4/macro_conv2d_12/mul/ReadVariableOp+^model_4/macro_conv2d_13/add/ReadVariableOp+^model_4/macro_conv2d_13/mul/ReadVariableOp+^model_4/macro_conv2d_14/add/ReadVariableOp+^model_4/macro_conv2d_14/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2P
&model_4/dense_4/BiasAdd/ReadVariableOp&model_4/dense_4/BiasAdd/ReadVariableOp2N
%model_4/dense_4/MatMul/ReadVariableOp%model_4/dense_4/MatMul/ReadVariableOp2X
*model_4/macro_conv2d_12/add/ReadVariableOp*model_4/macro_conv2d_12/add/ReadVariableOp2X
*model_4/macro_conv2d_12/mul/ReadVariableOp*model_4/macro_conv2d_12/mul/ReadVariableOp2X
*model_4/macro_conv2d_13/add/ReadVariableOp*model_4/macro_conv2d_13/add/ReadVariableOp2X
*model_4/macro_conv2d_13/mul/ReadVariableOp*model_4/macro_conv2d_13/mul/ReadVariableOp2X
*model_4/macro_conv2d_14/add/ReadVariableOp*model_4/macro_conv2d_14/add/ReadVariableOp2X
*model_4/macro_conv2d_14/mul/ReadVariableOp*model_4/macro_conv2d_14/mul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_5


á
)__inference_model_4_layer_call_fn_1206963
input_5'
unknown:   
	unknown_0: '
	unknown_1:OO 
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:
¢
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
D__inference_model_4_layer_call_and_return_conditional_losses_1206944o
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
_user_specified_name	input_5
Ê
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_1207504

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
ò
»
#__inference__traced_restore_1207755
file_prefixG
'assignvariableop_macro_conv2d_12_kernel:   5
'assignvariableop_1_macro_conv2d_12_bias: G
)assignvariableop_2_macro_conv2d_13_kernel:OO 5
'assignvariableop_3_macro_conv2d_13_bias:G
)assignvariableop_4_macro_conv2d_14_kernel:&&5
'assignvariableop_5_macro_conv2d_14_bias:5
!assignvariableop_6_dense_4_kernel:
¢-
assignvariableop_7_dense_4_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: Q
1assignvariableop_17_adam_macro_conv2d_12_kernel_m:   =
/assignvariableop_18_adam_macro_conv2d_12_bias_m: O
1assignvariableop_19_adam_macro_conv2d_13_kernel_m:OO =
/assignvariableop_20_adam_macro_conv2d_13_bias_m:O
1assignvariableop_21_adam_macro_conv2d_14_kernel_m:&&=
/assignvariableop_22_adam_macro_conv2d_14_bias_m:=
)assignvariableop_23_adam_dense_4_kernel_m:
¢5
'assignvariableop_24_adam_dense_4_bias_m:Q
1assignvariableop_25_adam_macro_conv2d_12_kernel_v:   =
/assignvariableop_26_adam_macro_conv2d_12_bias_v: O
1assignvariableop_27_adam_macro_conv2d_13_kernel_v:OO =
/assignvariableop_28_adam_macro_conv2d_13_bias_v:O
1assignvariableop_29_adam_macro_conv2d_14_kernel_v:&&=
/assignvariableop_30_adam_macro_conv2d_14_bias_v:=
)assignvariableop_31_adam_dense_4_kernel_v:
¢5
'assignvariableop_32_adam_dense_4_bias_v:
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
AssignVariableOpAssignVariableOp'assignvariableop_macro_conv2d_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp'assignvariableop_1_macro_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp)assignvariableop_2_macro_conv2d_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp'assignvariableop_3_macro_conv2d_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp)assignvariableop_4_macro_conv2d_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp'assignvariableop_5_macro_conv2d_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp1assignvariableop_17_adam_macro_conv2d_12_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_macro_conv2d_12_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_macro_conv2d_13_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_macro_conv2d_13_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_macro_conv2d_14_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_22AssignVariableOp/assignvariableop_22_adam_macro_conv2d_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_25AssignVariableOp1assignvariableop_25_adam_macro_conv2d_12_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_26AssignVariableOp/assignvariableop_26_adam_macro_conv2d_12_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_macro_conv2d_13_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_28AssignVariableOp/assignvariableop_28_adam_macro_conv2d_13_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_29AssignVariableOp1assignvariableop_29_adam_macro_conv2d_14_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_30AssignVariableOp/assignvariableop_30_adam_macro_conv2d_14_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_4_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_4_bias_vIdentity_32:output:0"/device:CPU:0*
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

h
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804

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
ý	
à
)__inference_model_4_layer_call_fn_1207207

inputs'
unknown:   
	unknown_0: '
	unknown_1:OO 
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:
¢
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
D__inference_model_4_layer_call_and_return_conditional_losses_1206944o
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

h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816

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
Õ
ý
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843

inputs;
mul_readvariableop_resource:   )
add_readvariableop_resource: 
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
:   *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ   W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
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
î
f
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
¿
û
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874

inputs9
mul_readvariableop_resource:OO )
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿOO z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO *
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO 
 
_user_specified_nameinputs
±C

D__inference_model_4_layer_call_and_return_conditional_losses_1207285

inputsK
+macro_conv2d_12_mul_readvariableop_resource:   9
+macro_conv2d_12_add_readvariableop_resource: I
+macro_conv2d_13_mul_readvariableop_resource:OO 9
+macro_conv2d_13_add_readvariableop_resource:I
+macro_conv2d_14_mul_readvariableop_resource:&&9
+macro_conv2d_14_add_readvariableop_resource::
&dense_4_matmul_readvariableop_resource:
¢5
'dense_4_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢"macro_conv2d_12/add/ReadVariableOp¢"macro_conv2d_12/mul/ReadVariableOp¢"macro_conv2d_13/add/ReadVariableOp¢"macro_conv2d_13/mul/ReadVariableOp¢"macro_conv2d_14/add/ReadVariableOp¢"macro_conv2d_14/mul/ReadVariableOpi
macro_conv2d_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
macro_conv2d_12/ExpandDims
ExpandDimsinputs'macro_conv2d_12/ExpandDims/dim:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ  
"macro_conv2d_12/mul/ReadVariableOpReadVariableOp+macro_conv2d_12_mul_readvariableop_resource*,
_output_shapes
:   *
dtype0«
macro_conv2d_12/mulMul#macro_conv2d_12/ExpandDims:output:0*macro_conv2d_12/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ   g
%macro_conv2d_12/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_12/SumSummacro_conv2d_12/mul:z:0.macro_conv2d_12/Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   º
macro_conv2d_12/AvgPool2DAvgPoolmacro_conv2d_12/Sum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
\
macro_conv2d_12/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_12/mul_1Mul"macro_conv2d_12/AvgPool2D:output:0 macro_conv2d_12/mul_1/y:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"macro_conv2d_12/add/ReadVariableOpReadVariableOp+macro_conv2d_12_add_readvariableop_resource*
_output_shapes
: *
dtype0
macro_conv2d_12/addAddV2macro_conv2d_12/mul_1:z:0*macro_conv2d_12/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
activation_12/ReluRelumacro_conv2d_12/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
max_pooling2d_8/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO *
ksize
*
paddingVALID*
strides
i
macro_conv2d_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
macro_conv2d_13/ExpandDims
ExpandDims max_pooling2d_8/MaxPool:output:0'macro_conv2d_13/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO 
"macro_conv2d_13/mul/ReadVariableOpReadVariableOp+macro_conv2d_13_mul_readvariableop_resource**
_output_shapes
:OO *
dtype0©
macro_conv2d_13/mulMul#macro_conv2d_13/ExpandDims:output:0*macro_conv2d_13/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO g
%macro_conv2d_13/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_13/SumSummacro_conv2d_13/mul:z:0.macro_conv2d_13/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO¸
macro_conv2d_13/AvgPool2DAvgPoolmacro_conv2d_13/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
ksize
*
paddingVALID*
strides
\
macro_conv2d_13/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_13/mul_1Mul"macro_conv2d_13/AvgPool2D:output:0 macro_conv2d_13/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
"macro_conv2d_13/add/ReadVariableOpReadVariableOp+macro_conv2d_13_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_13/addAddV2macro_conv2d_13/mul_1:z:0*macro_conv2d_13/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMm
activation_13/ReluRelumacro_conv2d_13/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM±
max_pooling2d_9/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&*
ksize
*
paddingVALID*
strides
i
macro_conv2d_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
macro_conv2d_14/ExpandDims
ExpandDims max_pooling2d_9/MaxPool:output:0'macro_conv2d_14/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&
"macro_conv2d_14/mul/ReadVariableOpReadVariableOp+macro_conv2d_14_mul_readvariableop_resource**
_output_shapes
:&&*
dtype0©
macro_conv2d_14/mulMul#macro_conv2d_14/ExpandDims:output:0*macro_conv2d_14/mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&g
%macro_conv2d_14/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
macro_conv2d_14/SumSummacro_conv2d_14/mul:z:0.macro_conv2d_14/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&¸
macro_conv2d_14/AvgPool2DAvgPoolmacro_conv2d_14/Sum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
ksize
*
paddingVALID*
strides
\
macro_conv2d_14/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  A
macro_conv2d_14/mul_1Mul"macro_conv2d_14/AvgPool2D:output:0 macro_conv2d_14/mul_1/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
"macro_conv2d_14/add/ReadVariableOpReadVariableOp+macro_conv2d_14_add_readvariableop_resource*
_output_shapes
:*
dtype0
macro_conv2d_14/addAddV2macro_conv2d_14/mul_1:z:0*macro_conv2d_14/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$m
activation_14/ReluRelumacro_conv2d_14/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Q  
flatten_4/ReshapeReshape activation_14/Relu:activations:0flatten_4/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
¢*
dtype0
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_4/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp#^macro_conv2d_12/add/ReadVariableOp#^macro_conv2d_12/mul/ReadVariableOp#^macro_conv2d_13/add/ReadVariableOp#^macro_conv2d_13/mul/ReadVariableOp#^macro_conv2d_14/add/ReadVariableOp#^macro_conv2d_14/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2H
"macro_conv2d_12/add/ReadVariableOp"macro_conv2d_12/add/ReadVariableOp2H
"macro_conv2d_12/mul/ReadVariableOp"macro_conv2d_12/mul/ReadVariableOp2H
"macro_conv2d_13/add/ReadVariableOp"macro_conv2d_13/add/ReadVariableOp2H
"macro_conv2d_13/mul/ReadVariableOp"macro_conv2d_13/mul/ReadVariableOp2H
"macro_conv2d_14/add/ReadVariableOp"macro_conv2d_14/add/ReadVariableOp2H
"macro_conv2d_14/mul/ReadVariableOp"macro_conv2d_14/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

ª
1__inference_macro_conv2d_14_layer_call_fn_1207466

inputs%
unknown:&&
	unknown_0:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
Õ
ý
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1207391

inputs;
mul_readvariableop_resource:   )
add_readvariableop_resource: 
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
:   *
dtype0{
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿ   W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :o
SumSummul:z:0Sum/reduction_indices:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ   
	AvgPool2DAvgPoolSum:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0o
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
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

h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1207457

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

h
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1207411

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
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1207483

inputs9
mul_readvariableop_resource:&&)
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿ&&z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:&&*
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿ&&W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*
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
:ÿÿÿÿÿÿÿÿÿ$$j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$p
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ&&: : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&
 
_user_specified_nameinputs
Ü*
ã
D__inference_model_4_layer_call_and_return_conditional_losses_1207080

inputs7
macro_conv2d_12_1207053:   %
macro_conv2d_12_1207055: 5
macro_conv2d_13_1207060:OO %
macro_conv2d_13_1207062:5
macro_conv2d_14_1207067:&&%
macro_conv2d_14_1207069:#
dense_4_1207074:
¢
dense_4_1207076:
identity¢dense_4/StatefulPartitionedCall¢'macro_conv2d_12/StatefulPartitionedCall¢'macro_conv2d_13/StatefulPartitionedCall¢'macro_conv2d_14/StatefulPartitionedCall
'macro_conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_12_1207053macro_conv2d_12_1207055*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843ú
activation_12/PartitionedCallPartitionedCall0macro_conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854ò
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804¼
'macro_conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0macro_conv2d_13_1207060macro_conv2d_13_1207062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874ø
activation_13/PartitionedCallPartitionedCall0macro_conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885ò
max_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816¼
'macro_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0macro_conv2d_14_1207067macro_conv2d_14_1207069*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905ø
activation_14/PartitionedCallPartitionedCall0macro_conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916à
flatten_4/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_1207074dense_4_1207076*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_4/StatefulPartitionedCall(^macro_conv2d_12/StatefulPartitionedCall(^macro_conv2d_13/StatefulPartitionedCall(^macro_conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2R
'macro_conv2d_12/StatefulPartitionedCall'macro_conv2d_12/StatefulPartitionedCall2R
'macro_conv2d_13/StatefulPartitionedCall'macro_conv2d_13/StatefulPartitionedCall2R
'macro_conv2d_14/StatefulPartitionedCall'macro_conv2d_14/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
î
f
J__inference_activation_13_layer_call_and_return_conditional_losses_1207447

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
ý	
à
)__inference_model_4_layer_call_fn_1207228

inputs'
unknown:   
	unknown_0: '
	unknown_1:OO 
	unknown_2:'
	unknown_3:&&
	unknown_4:
	unknown_5:
¢
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
D__inference_model_4_layer_call_and_return_conditional_losses_1207080o
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
Ü*
ã
D__inference_model_4_layer_call_and_return_conditional_losses_1206944

inputs7
macro_conv2d_12_1206844:   %
macro_conv2d_12_1206846: 5
macro_conv2d_13_1206875:OO %
macro_conv2d_13_1206877:5
macro_conv2d_14_1206906:&&%
macro_conv2d_14_1206908:#
dense_4_1206938:
¢
dense_4_1206940:
identity¢dense_4/StatefulPartitionedCall¢'macro_conv2d_12/StatefulPartitionedCall¢'macro_conv2d_13/StatefulPartitionedCall¢'macro_conv2d_14/StatefulPartitionedCall
'macro_conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsmacro_conv2d_12_1206844macro_conv2d_12_1206846*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843ú
activation_12/PartitionedCallPartitionedCall0macro_conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854ò
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804¼
'macro_conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0macro_conv2d_13_1206875macro_conv2d_13_1206877*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874ø
activation_13/PartitionedCallPartitionedCall0macro_conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885ò
max_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816¼
'macro_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0macro_conv2d_14_1206906macro_conv2d_14_1206908*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905ø
activation_14/PartitionedCallPartitionedCall0macro_conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916à
flatten_4/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_1206938dense_4_1206940*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_4/StatefulPartitionedCall(^macro_conv2d_12/StatefulPartitionedCall(^macro_conv2d_13/StatefulPartitionedCall(^macro_conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2R
'macro_conv2d_12/StatefulPartitionedCall'macro_conv2d_12/StatefulPartitionedCall2R
'macro_conv2d_13/StatefulPartitionedCall'macro_conv2d_13/StatefulPartitionedCall2R
'macro_conv2d_14/StatefulPartitionedCall'macro_conv2d_14/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

¬
1__inference_macro_conv2d_12_layer_call_fn_1207374

inputs'
unknown:   
	unknown_0: 
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
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
¿
û
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1207437

inputs9
mul_readvariableop_resource:OO )
add_readvariableop_resource:
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
:ÿÿÿÿÿÿÿÿÿOO z
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource**
_output_shapes
:OO *
dtype0y
mulMulExpandDims:output:0mul/ReadVariableOp:value:0*
T0*3
_output_shapes!
:ÿÿÿÿÿÿÿÿÿOO W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
SumSummul:z:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO
	AvgPool2DAvgPoolSum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*
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
:ÿÿÿÿÿÿÿÿÿMMj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_1:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMMp
NoOpNoOp^add/ReadVariableOp^mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿOO : : 2(
add/ReadVariableOpadd/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO 
 
_user_specified_nameinputs
î
f
J__inference_activation_14_layer_call_and_return_conditional_losses_1207493

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
Ê
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
ß*
ä
D__inference_model_4_layer_call_and_return_conditional_losses_1207180
input_57
macro_conv2d_12_1207153:   %
macro_conv2d_12_1207155: 5
macro_conv2d_13_1207160:OO %
macro_conv2d_13_1207162:5
macro_conv2d_14_1207167:&&%
macro_conv2d_14_1207169:#
dense_4_1207174:
¢
dense_4_1207176:
identity¢dense_4/StatefulPartitionedCall¢'macro_conv2d_12/StatefulPartitionedCall¢'macro_conv2d_13/StatefulPartitionedCall¢'macro_conv2d_14/StatefulPartitionedCall
'macro_conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinput_5macro_conv2d_12_1207153macro_conv2d_12_1207155*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843ú
activation_12/PartitionedCallPartitionedCall0macro_conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854ò
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804¼
'macro_conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0macro_conv2d_13_1207160macro_conv2d_13_1207162*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874ø
activation_13/PartitionedCallPartitionedCall0macro_conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885ò
max_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816¼
'macro_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0macro_conv2d_14_1207167macro_conv2d_14_1207169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905ø
activation_14/PartitionedCallPartitionedCall0macro_conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916à
flatten_4/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_1207174dense_4_1207176*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_4/StatefulPartitionedCall(^macro_conv2d_12/StatefulPartitionedCall(^macro_conv2d_13/StatefulPartitionedCall(^macro_conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2R
'macro_conv2d_12/StatefulPartitionedCall'macro_conv2d_12/StatefulPartitionedCall2R
'macro_conv2d_13/StatefulPartitionedCall'macro_conv2d_13/StatefulPartitionedCall2R
'macro_conv2d_14/StatefulPartitionedCall'macro_conv2d_14/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_5
ãI
¹
 __inference__traced_save_1207646
file_prefix5
1savev2_macro_conv2d_12_kernel_read_readvariableop3
/savev2_macro_conv2d_12_bias_read_readvariableop5
1savev2_macro_conv2d_13_kernel_read_readvariableop3
/savev2_macro_conv2d_13_bias_read_readvariableop5
1savev2_macro_conv2d_14_kernel_read_readvariableop3
/savev2_macro_conv2d_14_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_macro_conv2d_12_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_12_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_13_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_13_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_14_kernel_m_read_readvariableop:
6savev2_adam_macro_conv2d_14_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop<
8savev2_adam_macro_conv2d_12_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_12_bias_v_read_readvariableop<
8savev2_adam_macro_conv2d_13_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_13_bias_v_read_readvariableop<
8savev2_adam_macro_conv2d_14_kernel_v_read_readvariableop:
6savev2_adam_macro_conv2d_14_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_macro_conv2d_12_kernel_read_readvariableop/savev2_macro_conv2d_12_bias_read_readvariableop1savev2_macro_conv2d_13_kernel_read_readvariableop/savev2_macro_conv2d_13_bias_read_readvariableop1savev2_macro_conv2d_14_kernel_read_readvariableop/savev2_macro_conv2d_14_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_macro_conv2d_12_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_12_bias_m_read_readvariableop8savev2_adam_macro_conv2d_13_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_13_bias_m_read_readvariableop8savev2_adam_macro_conv2d_14_kernel_m_read_readvariableop6savev2_adam_macro_conv2d_14_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop8savev2_adam_macro_conv2d_12_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_12_bias_v_read_readvariableop8savev2_adam_macro_conv2d_13_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_13_bias_v_read_readvariableop8savev2_adam_macro_conv2d_14_kernel_v_read_readvariableop6savev2_adam_macro_conv2d_14_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*ã
_input_shapesÑ
Î: :   : :OO ::&&::
¢:: : : : : : : : : :   : :OO ::&&::
¢::   : :OO ::&&::
¢:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:2.
,
_output_shapes
:   : 

_output_shapes
: :0,
*
_output_shapes
:OO : 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::&"
 
_output_shapes
:
¢: 
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
:   : 

_output_shapes
: :0,
*
_output_shapes
:OO : 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::&"
 
_output_shapes
:
¢: 

_output_shapes
::2.
,
_output_shapes
:   : 

_output_shapes
: :0,
*
_output_shapes
:OO : 

_output_shapes
::0,
*
_output_shapes
:&&: 

_output_shapes
::& "
 
_output_shapes
:
¢: !

_output_shapes
::"

_output_shapes
: 
î
f
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
ß*
ä
D__inference_model_4_layer_call_and_return_conditional_losses_1207150
input_57
macro_conv2d_12_1207123:   %
macro_conv2d_12_1207125: 5
macro_conv2d_13_1207130:OO %
macro_conv2d_13_1207132:5
macro_conv2d_14_1207137:&&%
macro_conv2d_14_1207139:#
dense_4_1207144:
¢
dense_4_1207146:
identity¢dense_4/StatefulPartitionedCall¢'macro_conv2d_12/StatefulPartitionedCall¢'macro_conv2d_13/StatefulPartitionedCall¢'macro_conv2d_14/StatefulPartitionedCall
'macro_conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinput_5macro_conv2d_12_1207123macro_conv2d_12_1207125*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1206843ú
activation_12/PartitionedCallPartitionedCall0macro_conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854ò
max_pooling2d_8/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿOO * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804¼
'macro_conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0macro_conv2d_13_1207130macro_conv2d_13_1207132*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1206874ø
activation_13/PartitionedCallPartitionedCall0macro_conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885ò
max_pooling2d_9/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1206816¼
'macro_conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0macro_conv2d_14_1207137macro_conv2d_14_1207139*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1206905ø
activation_14/PartitionedCallPartitionedCall0macro_conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916à
flatten_4/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_1206924
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_1207144dense_4_1207146*
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp ^dense_4/StatefulPartitionedCall(^macro_conv2d_12/StatefulPartitionedCall(^macro_conv2d_13/StatefulPartitionedCall(^macro_conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ  : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2R
'macro_conv2d_12/StatefulPartitionedCall'macro_conv2d_12/StatefulPartitionedCall2R
'macro_conv2d_13/StatefulPartitionedCall'macro_conv2d_13/StatefulPartitionedCall2R
'macro_conv2d_14/StatefulPartitionedCall'macro_conv2d_14/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
!
_user_specified_name	input_5
½
M
1__inference_max_pooling2d_8_layer_call_fn_1207406

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
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1206804
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
Ô
K
/__inference_activation_12_layer_call_fn_1207396

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
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ë

)__inference_dense_4_layer_call_fn_1207513

inputs
unknown:
¢
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1206937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¢: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
 
_user_specified_nameinputs
Ì
K
/__inference_activation_13_layer_call_fn_1207442

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
:ÿÿÿÿÿÿÿÿÿMM* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_1206885h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿMM:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿMM
 
_user_specified_nameinputs
Ì
K
/__inference_activation_14_layer_call_fn_1207488

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
:ÿÿÿÿÿÿÿÿÿ$$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_1206916h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$
 
_user_specified_nameinputs
ö
f
J__inference_activation_12_layer_call_and_return_conditional_losses_1206854

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
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
input_5:
serving_default_input_5:0ÿÿÿÿÿÿÿÿÿ  ;
dense_40
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:­
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
)__inference_model_4_layer_call_fn_1206963
)__inference_model_4_layer_call_fn_1207207
)__inference_model_4_layer_call_fn_1207228
)__inference_model_4_layer_call_fn_1207120À
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
D__inference_model_4_layer_call_and_return_conditional_losses_1207285
D__inference_model_4_layer_call_and_return_conditional_losses_1207342
D__inference_model_4_layer_call_and_return_conditional_losses_1207150
D__inference_model_4_layer_call_and_return_conditional_losses_1207180À
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
"__inference__wrapped_model_1206795input_5"
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
6:4   2macro_conv2d_12/kernel
":  2macro_conv2d_12/bias
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
1__inference_macro_conv2d_12_layer_call_fn_1207374¢
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
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1207391¢
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
/__inference_activation_12_layer_call_fn_1207396¢
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
J__inference_activation_12_layer_call_and_return_conditional_losses_1207401¢
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
Û2Ø
1__inference_max_pooling2d_8_layer_call_fn_1207406¢
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
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1207411¢
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
4:2OO 2macro_conv2d_13/kernel
": 2macro_conv2d_13/bias
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
1__inference_macro_conv2d_13_layer_call_fn_1207420¢
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
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1207437¢
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
/__inference_activation_13_layer_call_fn_1207442¢
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
J__inference_activation_13_layer_call_and_return_conditional_losses_1207447¢
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
Û2Ø
1__inference_max_pooling2d_9_layer_call_fn_1207452¢
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
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1207457¢
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
4:2&&2macro_conv2d_14/kernel
": 2macro_conv2d_14/bias
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
1__inference_macro_conv2d_14_layer_call_fn_1207466¢
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
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1207483¢
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
/__inference_activation_14_layer_call_fn_1207488¢
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
J__inference_activation_14_layer_call_and_return_conditional_losses_1207493¢
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
+__inference_flatten_4_layer_call_fn_1207498¢
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
F__inference_flatten_4_layer_call_and_return_conditional_losses_1207504¢
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
": 
¢2dense_4/kernel
:2dense_4/bias
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
)__inference_dense_4_layer_call_fn_1207513¢
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
D__inference_dense_4_layer_call_and_return_conditional_losses_1207524¢
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
%__inference_signature_wrapper_1207365input_5"
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
;:9   2Adam/macro_conv2d_12/kernel/m
':% 2Adam/macro_conv2d_12/bias/m
9:7OO 2Adam/macro_conv2d_13/kernel/m
':%2Adam/macro_conv2d_13/bias/m
9:7&&2Adam/macro_conv2d_14/kernel/m
':%2Adam/macro_conv2d_14/bias/m
':%
¢2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
;:9   2Adam/macro_conv2d_12/kernel/v
':% 2Adam/macro_conv2d_12/bias/v
9:7OO 2Adam/macro_conv2d_13/kernel/v
':%2Adam/macro_conv2d_13/bias/v
9:7&&2Adam/macro_conv2d_14/kernel/v
':%2Adam/macro_conv2d_14/bias/v
':%
¢2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
"__inference__wrapped_model_1206795y)*=>QR:¢7
0¢-
+(
input_5ÿÿÿÿÿÿÿÿÿ  
ª "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿº
J__inference_activation_12_layer_call_and_return_conditional_losses_1207401l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ 
 
/__inference_activation_12_layer_call_fn_1207396_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ 
ª ""ÿÿÿÿÿÿÿÿÿ ¶
J__inference_activation_13_layer_call_and_return_conditional_losses_1207447h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
/__inference_activation_13_layer_call_fn_1207442[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿMM
ª " ÿÿÿÿÿÿÿÿÿMM¶
J__inference_activation_14_layer_call_and_return_conditional_losses_1207493h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
/__inference_activation_14_layer_call_fn_1207488[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª " ÿÿÿÿÿÿÿÿÿ$$¦
D__inference_dense_4_layer_call_and_return_conditional_losses_1207524^QR1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ¢
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_dense_4_layer_call_fn_1207513QQR1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ¢
ª "ÿÿÿÿÿÿÿÿÿ¬
F__inference_flatten_4_layer_call_and_return_conditional_losses_1207504b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ¢
 
+__inference_flatten_4_layer_call_fn_1207498U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$
ª "ÿÿÿÿÿÿÿÿÿ¢À
L__inference_macro_conv2d_12_layer_call_and_return_conditional_losses_1207391p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ 
 
1__inference_macro_conv2d_12_layer_call_fn_1207374c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ  
ª ""ÿÿÿÿÿÿÿÿÿ ¼
L__inference_macro_conv2d_13_layer_call_and_return_conditional_losses_1207437l)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿMM
 
1__inference_macro_conv2d_13_layer_call_fn_1207420_)*7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿOO 
ª " ÿÿÿÿÿÿÿÿÿMM¼
L__inference_macro_conv2d_14_layer_call_and_return_conditional_losses_1207483l=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$
 
1__inference_macro_conv2d_14_layer_call_fn_1207466_=>7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&
ª " ÿÿÿÿÿÿÿÿÿ$$ï
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1207411R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_8_layer_call_fn_1207406R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1207457R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_9_layer_call_fn_1207452R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
D__inference_model_4_layer_call_and_return_conditional_losses_1207150u)*=>QRB¢?
8¢5
+(
input_5ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
D__inference_model_4_layer_call_and_return_conditional_losses_1207180u)*=>QRB¢?
8¢5
+(
input_5ÿÿÿÿÿÿÿÿÿ  
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
D__inference_model_4_layer_call_and_return_conditional_losses_1207285t)*=>QRA¢>
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
D__inference_model_4_layer_call_and_return_conditional_losses_1207342t)*=>QRA¢>
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
)__inference_model_4_layer_call_fn_1206963h)*=>QRB¢?
8¢5
+(
input_5ÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_1207120h)*=>QRB¢?
8¢5
+(
input_5ÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_1207207g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_1207228g)*=>QRA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ  
p

 
ª "ÿÿÿÿÿÿÿÿÿ®
%__inference_signature_wrapper_1207365)*=>QRE¢B
¢ 
;ª8
6
input_5+(
input_5ÿÿÿÿÿÿÿÿÿ  "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿ