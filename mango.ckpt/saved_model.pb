╜д
Є┬
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48е▄
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
Ю
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/v/dense/bias/*
dtype0*
shape:*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:*
dtype0
Ю
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/m/dense/bias/*
dtype0*
shape:*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:*
dtype0
й
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense/kernel/*
dtype0*
shape:	└*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	└*
dtype0
й
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense/kernel/*
dtype0*
shape:	└*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	└*
dtype0
╬
!Adam/v/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_4/beta/*
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_4/beta
У
5Adam/v/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_4/beta*
_output_shapes
:*
dtype0
╬
!Adam/m/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_4/beta/*
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_4/beta
У
5Adam/m/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_4/beta*
_output_shapes
:*
dtype0
╤
"Adam/v/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_4/gamma/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_4/gamma
Х
6Adam/v/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_4/gamma*
_output_shapes
:*
dtype0
╤
"Adam/m/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_4/gamma/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_4/gamma
Х
6Adam/m/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_4/gamma*
_output_shapes
:*
dtype0
з
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_4/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
:*
dtype0
з
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_4/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
:*
dtype0
╣
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_4/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv2d_4/kernel
Й
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
: *
dtype0
╣
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_4/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv2d_4/kernel
Й
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
: *
dtype0
╬
!Adam/v/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_3/beta/*
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_3/beta
У
5Adam/v/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_3/beta*
_output_shapes
: *
dtype0
╬
!Adam/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_3/beta/*
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_3/beta
У
5Adam/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_3/beta*
_output_shapes
: *
dtype0
╤
"Adam/v/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_3/gamma/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_3/gamma
Х
6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_3/gamma*
_output_shapes
: *
dtype0
╤
"Adam/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_3/gamma/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_3/gamma
Х
6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_3/gamma*
_output_shapes
: *
dtype0
з
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_3/bias/*
dtype0*
shape: *%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
: *
dtype0
з
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_3/bias/*
dtype0*
shape: *%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
: *
dtype0
╣
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_3/kernel/*
dtype0*
shape:@ *'
shared_nameAdam/v/conv2d_3/kernel
Й
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
:@ *
dtype0
╣
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_3/kernel/*
dtype0*
shape:@ *'
shared_nameAdam/m/conv2d_3/kernel
Й
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
:@ *
dtype0
╬
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_2/beta/*
dtype0*
shape:@*2
shared_name#!Adam/v/batch_normalization_2/beta
У
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes
:@*
dtype0
╬
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_2/beta/*
dtype0*
shape:@*2
shared_name#!Adam/m/batch_normalization_2/beta
У
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes
:@*
dtype0
╤
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_2/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_2/gamma
Х
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0
╤
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_2/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_2/gamma
Х
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0
з
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_2/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0
з
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_2/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0
║
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_2/kernel/*
dtype0*
shape:А@*'
shared_nameAdam/v/conv2d_2/kernel
К
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*'
_output_shapes
:А@*
dtype0
║
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_2/kernel/*
dtype0*
shape:А@*'
shared_nameAdam/m/conv2d_2/kernel
К
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*'
_output_shapes
:А@*
dtype0
╧
!Adam/v/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_1/beta/*
dtype0*
shape:А*2
shared_name#!Adam/v/batch_normalization_1/beta
Ф
5Adam/v/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_1/beta*
_output_shapes	
:А*
dtype0
╧
!Adam/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_1/beta/*
dtype0*
shape:А*2
shared_name#!Adam/m/batch_normalization_1/beta
Ф
5Adam/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_1/beta*
_output_shapes	
:А*
dtype0
╥
"Adam/v/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_1/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_1/gamma
Ц
6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_1/gamma*
_output_shapes	
:А*
dtype0
╥
"Adam/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_1/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_1/gamma
Ц
6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_1/gamma*
_output_shapes	
:А*
dtype0
и
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_1/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_1/bias
z
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_1/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_1/bias
z
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes	
:А*
dtype0
╗
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_1/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_1/kernel
Л
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*(
_output_shapes
:АА*
dtype0
╗
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_1/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_1/kernel
Л
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*(
_output_shapes
:АА*
dtype0
╔
Adam/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *0

debug_name" Adam/v/batch_normalization/beta/*
dtype0*
shape:А*0
shared_name!Adam/v/batch_normalization/beta
Р
3Adam/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/batch_normalization/beta*
_output_shapes	
:А*
dtype0
╔
Adam/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *0

debug_name" Adam/m/batch_normalization/beta/*
dtype0*
shape:А*0
shared_name!Adam/m/batch_normalization/beta
Р
3Adam/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/batch_normalization/beta*
_output_shapes	
:А*
dtype0
╠
 Adam/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/v/batch_normalization/gamma/*
dtype0*
shape:А*1
shared_name" Adam/v/batch_normalization/gamma
Т
4Adam/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/batch_normalization/gamma*
_output_shapes	
:А*
dtype0
╠
 Adam/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/m/batch_normalization/gamma/*
dtype0*
shape:А*1
shared_name" Adam/m/batch_normalization/gamma
Т
4Adam/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/batch_normalization/gamma*
_output_shapes	
:А*
dtype0
в
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/conv2d/bias/*
dtype0*
shape:А*#
shared_nameAdam/v/conv2d/bias
v
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes	
:А*
dtype0
в
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/conv2d/bias/*
dtype0*
shape:А*#
shared_nameAdam/m/conv2d/bias
v
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes	
:А*
dtype0
┤
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d/kernel/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d/kernel
Ж
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*'
_output_shapes
:А*
dtype0
┤
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d/kernel/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d/kernel
Ж
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*'
_output_shapes
:А*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Й

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
Ф
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:	└*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	└*
dtype0
┌
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_4/moving_variance/*
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance
Ы
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0
╬
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_4/moving_mean/*
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean
У
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0
╣
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_4/beta/*
dtype0*
shape:*+
shared_namebatch_normalization_4/beta
Е
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:*
dtype0
╝
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_4/gamma/*
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma
З
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:*
dtype0
Т
conv2d_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_4/bias/*
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
д
conv2d_4/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_4/kernel/*
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
┌
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_3/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_3/moving_variance
Ы
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
: *
dtype0
╬
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_3/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_3/moving_mean
У
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
: *
dtype0
╣
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_3/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_3/beta
Е
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
: *
dtype0
╝
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_3/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_3/gamma
З
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
: *
dtype0
Т
conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0
д
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:@ * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@ *
dtype0
┌
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_2/moving_variance/*
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance
Ы
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
╬
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_2/moving_mean/*
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean
У
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
╣
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_2/beta/*
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta
Е
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0
╝
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_2/gamma/*
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma
З
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0
Т
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
е
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape:А@* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:А@*
dtype0
█
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_1/moving_variance/*
dtype0*
shape:А*6
shared_name'%batch_normalization_1/moving_variance
Ь
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:А*
dtype0
╧
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_1/moving_mean/*
dtype0*
shape:А*2
shared_name#!batch_normalization_1/moving_mean
Ф
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:А*
dtype0
║
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_1/beta/*
dtype0*
shape:А*+
shared_namebatch_normalization_1/beta
Ж
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:А*
dtype0
╜
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_1/gamma/*
dtype0*
shape:А*,
shared_namebatch_normalization_1/gamma
И
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:А*
dtype0
У
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:А*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:А*
dtype0
ж
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape:АА* 
shared_nameconv2d_1/kernel
}
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*(
_output_shapes
:АА*
dtype0
╒
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *4

debug_name&$batch_normalization/moving_variance/*
dtype0*
shape:А*4
shared_name%#batch_normalization/moving_variance
Ш
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:А*
dtype0
╔
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *0

debug_name" batch_normalization/moving_mean/*
dtype0*
shape:А*0
shared_name!batch_normalization/moving_mean
Р
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:А*
dtype0
┤
batch_normalization/betaVarHandleOp*
_output_shapes
: *)

debug_namebatch_normalization/beta/*
dtype0*
shape:А*)
shared_namebatch_normalization/beta
В
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:А*
dtype0
╖
batch_normalization/gammaVarHandleOp*
_output_shapes
: **

debug_namebatch_normalization/gamma/*
dtype0*
shape:А**
shared_namebatch_normalization/gamma
Д
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:А*
dtype0
Н
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:А*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:А*
dtype0
Я
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:А*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:А*
dtype0
У
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
▓	
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense/kernel
dense/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_5097

NoOpNoOp
жй
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ри
value╒иB╤и B╔и
╧
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op*
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
╒
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance*
╚
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias
 =_jit_compiled_convolution_op*
О
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
╒
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
╚
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
О
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
╒
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance*
╚
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias
 q_jit_compiled_convolution_op*
О
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses* 
╪
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	gamma
	Аbeta
Бmoving_mean
Вmoving_variance*
╤
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias
!Л_jit_compiled_convolution_op*
Ф
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses* 
р
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
	Шaxis

Щgamma
	Ъbeta
Ыmoving_mean
Ьmoving_variance*
Ф
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses* 
о
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
йkernel
	кbias*
Е
!0
"1
12
23
34
45
;6
<7
K8
L9
M10
N11
U12
V13
e14
f15
g16
h17
o18
p19
20
А21
Б22
В23
Й24
К25
Щ26
Ъ27
Ы28
Ь29
й30
к31*
▒
!0
"1
12
23
;4
<5
K6
L7
U8
V9
e10
f11
o12
p13
14
А15
Й16
К17
Щ18
Ъ19
й20
к21*
* 
╡
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

░trace_0
▒trace_1* 

▓trace_0
│trace_1* 
* 
И
┤
_variables
╡_iterations
╢_learning_rate
╖_index_dict
╕
_momentums
╣_velocities
║_update_step_xla*

╗serving_default* 

!0
"1*

!0
"1*
* 
Ш
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

┴trace_0* 

┬trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

╚trace_0* 

╔trace_0* 
 
10
21
32
43*

10
21*
* 
Ш
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

╧trace_0
╨trace_1* 

╤trace_0
╥trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 
Ш
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

╪trace_0* 

┘trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

▀trace_0* 

рtrace_0* 
 
K0
L1
M2
N3*

K0
L1*
* 
Ш
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

яtrace_0* 

Ёtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

Ўtrace_0* 

ўtrace_0* 
 
e0
f1
g2
h3*

e0
f1*
* 
Ш
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

¤trace_0
■trace_1* 

 trace_0
Аtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
Ш
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

Жtrace_0* 

Зtrace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 
#
0
А1
Б2
В3*

0
А1*
* 
Ш
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

Фtrace_0
Хtrace_1* 

Цtrace_0
Чtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

Й0
К1*

Й0
К1*
* 
Ю
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses* 

дtrace_0* 

еtrace_0* 
$
Щ0
Ъ1
Ы2
Ь3*

Щ0
Ъ1*
* 
Ю
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

лtrace_0
мtrace_1* 

нtrace_0
оtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses* 

┤trace_0* 

╡trace_0* 

й0
к1*

й0
к1*
* 
Ю
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses*

╗trace_0* 

╝trace_0* 
]W
VARIABLE_VALUEdense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE
dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
N
30
41
M2
N3
g4
h5
Б6
В7
Ы8
Ь9*
В
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
10
11
12
13
14
15
16*

╜0
╛1*
* 
* 
* 
* 
* 
* 
П
╡0
┐1
└2
┴3
┬4
├5
─6
┼7
╞8
╟9
╚10
╔11
╩12
╦13
╠14
═15
╬16
╧17
╨18
╤19
╥20
╙21
╘22
╒23
╓24
╫25
╪26
┘27
┌28
█29
▄30
▌31
▐32
▀33
р34
с35
т36
у37
ф38
х39
ц40
ч41
ш42
щ43
ъ44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
└
┐0
┴1
├2
┼3
╟4
╔5
╦6
═7
╧8
╤9
╙10
╒11
╫12
┘13
█14
▌15
▀16
с17
у18
х19
ч20
щ21*
└
└0
┬1
─2
╞3
╚4
╩5
╠6
╬7
╨8
╥9
╘10
╓11
╪12
┌13
▄14
▐15
р16
т17
ф18
ц19
ш20
ъ21*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

30
41*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

g0
h1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Б0
В1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ы0
Ь1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
ы	variables
ь	keras_api

эtotal

юcount*
M
я	variables
Ё	keras_api

ёtotal

Єcount
є
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/batch_normalization/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/batch_normalization/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/batch_normalization/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/batch_normalization/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_1/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_1/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_1/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_1/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_3/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_3/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_3/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_3/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_4/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_4/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_4/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_4/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*

э0
ю1*

ы	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ё0
Є1*

я	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biastotal_1count_1totalcountConst*_
TinX
V2T*
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
GPU 2J 8В *&
f!R
__inference__traced_save_6102
п
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense/kernel
dense/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biastotal_1count_1totalcount*^
TinW
U2S*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_6357К╡
 	
╧
4__inference_batch_normalization_4_layer_call_fn_5508

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4542Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:$ 

_user_specified_name5498:$ 

_user_specified_name5500:$ 

_user_specified_name5502:$ 

_user_specified_name5504
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4231

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_3_layer_call_and_return_conditional_losses_4677

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
Ъ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5465

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧

ё
?__inference_dense_layer_call_and_return_conditional_losses_4736

inputs1
matmul_readvariableop_resource:	└-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	└*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
B
&__inference_flatten_layer_call_fn_5562

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4724a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
р]
Е
D__inference_sequential_layer_call_and_return_conditional_losses_4743
conv2d_input&
conv2d_4600:А
conv2d_4602:	А'
batch_normalization_4606:	А'
batch_normalization_4608:	А'
batch_normalization_4610:	А'
batch_normalization_4612:	А)
conv2d_1_4626:АА
conv2d_1_4628:	А)
batch_normalization_1_4632:	А)
batch_normalization_1_4634:	А)
batch_normalization_1_4636:	А)
batch_normalization_1_4638:	А(
conv2d_2_4652:А@
conv2d_2_4654:@(
batch_normalization_2_4658:@(
batch_normalization_2_4660:@(
batch_normalization_2_4662:@(
batch_normalization_2_4664:@'
conv2d_3_4678:@ 
conv2d_3_4680: (
batch_normalization_3_4684: (
batch_normalization_3_4686: (
batch_normalization_3_4688: (
batch_normalization_3_4690: '
conv2d_4_4704: 
conv2d_4_4706:(
batch_normalization_4_4710:(
batch_normalization_4_4712:(
batch_normalization_4_4714:(
batch_normalization_4_4716:

dense_4737:	└

dense_4739:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense/StatefulPartitionedCallє
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_4600conv2d_4602*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         №№А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4599ъ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4231ї
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_4606batch_normalization_4608batch_normalization_4610batch_normalization_4612*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4254б
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_1_4626conv2d_1_4628*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ||А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4625Ё
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         >>А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4303Г
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_1_4632batch_normalization_1_4634batch_normalization_1_4636batch_normalization_1_4638*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         >>А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4326в
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_2_4652conv2d_2_4654*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4651я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_4375В
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_2_4658batch_normalization_2_4660batch_normalization_2_4662batch_normalization_2_4664*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4398в
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_3_4678conv2d_3_4680*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_4677я
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_4447В
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_3_4684batch_normalization_3_4686batch_normalization_3_4688batch_normalization_3_4690*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4470в
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_4_4704conv2d_4_4706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_4703я
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_4519В
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_4_4710batch_normalization_4_4712batch_normalization_4_4714batch_normalization_4_4716*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4542х
flatten/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4724°
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4737
dense_4739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4736u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▌
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:$ 

_user_specified_name4600:$ 

_user_specified_name4602:$ 

_user_specified_name4606:$ 

_user_specified_name4608:$ 

_user_specified_name4610:$ 

_user_specified_name4612:$ 

_user_specified_name4626:$ 

_user_specified_name4628:$	 

_user_specified_name4632:$
 

_user_specified_name4634:$ 

_user_specified_name4636:$ 

_user_specified_name4638:$ 

_user_specified_name4652:$ 

_user_specified_name4654:$ 

_user_specified_name4658:$ 

_user_specified_name4660:$ 

_user_specified_name4662:$ 

_user_specified_name4664:$ 

_user_specified_name4678:$ 

_user_specified_name4680:$ 

_user_specified_name4684:$ 

_user_specified_name4686:$ 

_user_specified_name4688:$ 

_user_specified_name4690:$ 

_user_specified_name4704:$ 

_user_specified_name4706:$ 

_user_specified_name4710:$ 

_user_specified_name4712:$ 

_user_specified_name4714:$ 

_user_specified_name4716:$ 

_user_specified_name4737:$  

_user_specified_name4739
╢
№
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4651

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         >>А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         >>А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
├
]
A__inference_flatten_layer_call_and_return_conditional_losses_5568

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         └Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
И
╛
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4398

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
ъ
)__inference_sequential_layer_call_fn_4966
conv2d_input"
unknown:А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	└

unknown_30:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4828o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:$ 

_user_specified_name4900:$ 

_user_specified_name4902:$ 

_user_specified_name4904:$ 

_user_specified_name4906:$ 

_user_specified_name4908:$ 

_user_specified_name4910:$ 

_user_specified_name4912:$ 

_user_specified_name4914:$	 

_user_specified_name4916:$
 

_user_specified_name4918:$ 

_user_specified_name4920:$ 

_user_specified_name4922:$ 

_user_specified_name4924:$ 

_user_specified_name4926:$ 

_user_specified_name4928:$ 

_user_specified_name4930:$ 

_user_specified_name4932:$ 

_user_specified_name4934:$ 

_user_specified_name4936:$ 

_user_specified_name4938:$ 

_user_specified_name4940:$ 

_user_specified_name4942:$ 

_user_specified_name4944:$ 

_user_specified_name4946:$ 

_user_specified_name4948:$ 

_user_specified_name4950:$ 

_user_specified_name4952:$ 

_user_specified_name4954:$ 

_user_specified_name4956:$ 

_user_specified_name4958:$ 

_user_specified_name4960:$  

_user_specified_name4962
 	
╧
4__inference_batch_normalization_2_layer_call_fn_5324

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4398Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:$ 

_user_specified_name5314:$ 

_user_specified_name5316:$ 

_user_specified_name5318:$ 

_user_specified_name5320
ъ]
Е
D__inference_sequential_layer_call_and_return_conditional_losses_4828
conv2d_input&
conv2d_4746:А
conv2d_4748:	А'
batch_normalization_4752:	А'
batch_normalization_4754:	А'
batch_normalization_4756:	А'
batch_normalization_4758:	А)
conv2d_1_4761:АА
conv2d_1_4763:	А)
batch_normalization_1_4767:	А)
batch_normalization_1_4769:	А)
batch_normalization_1_4771:	А)
batch_normalization_1_4773:	А(
conv2d_2_4776:А@
conv2d_2_4778:@(
batch_normalization_2_4782:@(
batch_normalization_2_4784:@(
batch_normalization_2_4786:@(
batch_normalization_2_4788:@'
conv2d_3_4791:@ 
conv2d_3_4793: (
batch_normalization_3_4797: (
batch_normalization_3_4799: (
batch_normalization_3_4801: (
batch_normalization_3_4803: '
conv2d_4_4806: 
conv2d_4_4808:(
batch_normalization_4_4812:(
batch_normalization_4_4814:(
batch_normalization_4_4816:(
batch_normalization_4_4818:

dense_4822:	└

dense_4824:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense/StatefulPartitionedCallє
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_4746conv2d_4748*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         №№А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4599ъ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4231ў
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_4752batch_normalization_4754batch_normalization_4756batch_normalization_4758*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ~~А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4272б
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_1_4761conv2d_1_4763*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ||А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4625Ё
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         >>А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4303Е
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_1_4767batch_normalization_1_4769batch_normalization_1_4771batch_normalization_1_4773*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         >>А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4344в
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_2_4776conv2d_2_4778*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4651я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_4375Д
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_2_4782batch_normalization_2_4784batch_normalization_2_4786batch_normalization_2_4788*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4416в
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_3_4791conv2d_3_4793*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_4677я
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_4447Д
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_3_4797batch_normalization_3_4799batch_normalization_3_4801batch_normalization_3_4803*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4488в
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_4_4806conv2d_4_4808*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_4703я
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_4519Д
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_4_4812batch_normalization_4_4814batch_normalization_4_4816batch_normalization_4_4818*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4560х
flatten/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4724°
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4822
dense_4824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4736u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▌
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:$ 

_user_specified_name4746:$ 

_user_specified_name4748:$ 

_user_specified_name4752:$ 

_user_specified_name4754:$ 

_user_specified_name4756:$ 

_user_specified_name4758:$ 

_user_specified_name4761:$ 

_user_specified_name4763:$	 

_user_specified_name4767:$
 

_user_specified_name4769:$ 

_user_specified_name4771:$ 

_user_specified_name4773:$ 

_user_specified_name4776:$ 

_user_specified_name4778:$ 

_user_specified_name4782:$ 

_user_specified_name4784:$ 

_user_specified_name4786:$ 

_user_specified_name4788:$ 

_user_specified_name4791:$ 

_user_specified_name4793:$ 

_user_specified_name4797:$ 

_user_specified_name4799:$ 

_user_specified_name4801:$ 

_user_specified_name4803:$ 

_user_specified_name4806:$ 

_user_specified_name4808:$ 

_user_specified_name4812:$ 

_user_specified_name4814:$ 

_user_specified_name4816:$ 

_user_specified_name4818:$ 

_user_specified_name4822:$  

_user_specified_name4824
И
╛
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5539

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▓
√
B__inference_conv2d_4_layer_call_and_return_conditional_losses_4703

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╛
■
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4625

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ||Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ||АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ~~А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ~~А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▐
Ю
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4344

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й

╙
4__inference_batch_normalization_1_layer_call_fn_5245

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4344К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:$ 

_user_specified_name5235:$ 

_user_specified_name5237:$ 

_user_specified_name5239:$ 

_user_specified_name5241
▓
√
B__inference_conv2d_3_layer_call_and_return_conditional_losses_5393

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
Ъ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4488

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
И
╛
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5355

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Б

╧
4__inference_batch_normalization_2_layer_call_fn_5337

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4416Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:$ 

_user_specified_name5327:$ 

_user_specified_name5329:$ 

_user_specified_name5331:$ 

_user_specified_name5333
И
╛
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5447

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_4375

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц
└
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4254

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┼
√
@__inference_conv2d_layer_call_and_return_conditional_losses_4599

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0Э
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         №№Аl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         №№АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ц
Ь
%__inference_conv2d_layer_call_fn_5106

inputs"
unknown:А
	unknown_0:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         №№А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4599z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:         №№А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:$ 

_user_specified_name5100:$ 

_user_specified_name5102
┤
J
.__inference_max_pooling2d_2_layer_call_fn_5306

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_4375Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_5495

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
О
Ь
'__inference_conv2d_4_layer_call_fn_5474

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_4703w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:$ 

_user_specified_name5468:$ 

_user_specified_name5470
▄
Ь
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4272

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
J
.__inference_max_pooling2d_1_layer_call_fn_5214

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4303Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 	
╧
4__inference_batch_normalization_3_layer_call_fn_5416

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4470Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:$ 

_user_specified_name5406:$ 

_user_specified_name5408:$ 

_user_specified_name5410:$ 

_user_specified_name5412
З

╙
4__inference_batch_normalization_1_layer_call_fn_5232

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4326К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:$ 

_user_specified_name5222:$ 

_user_specified_name5224:$ 

_user_specified_name5226:$ 

_user_specified_name5228
С
Э
'__inference_conv2d_2_layer_call_fn_5290

inputs"
unknown:А@
	unknown_0:@
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4651w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         >>А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         >>А
 
_user_specified_nameinputs:$ 

_user_specified_name5284:$ 

_user_specified_name5286
¤
у
"__inference_signature_wrapper_5097
conv2d_input"
unknown:А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	└

unknown_30:
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_4226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:$ 

_user_specified_name5031:$ 

_user_specified_name5033:$ 

_user_specified_name5035:$ 

_user_specified_name5037:$ 

_user_specified_name5039:$ 

_user_specified_name5041:$ 

_user_specified_name5043:$ 

_user_specified_name5045:$	 

_user_specified_name5047:$
 

_user_specified_name5049:$ 

_user_specified_name5051:$ 

_user_specified_name5053:$ 

_user_specified_name5055:$ 

_user_specified_name5057:$ 

_user_specified_name5059:$ 

_user_specified_name5061:$ 

_user_specified_name5063:$ 

_user_specified_name5065:$ 

_user_specified_name5067:$ 

_user_specified_name5069:$ 

_user_specified_name5071:$ 

_user_specified_name5073:$ 

_user_specified_name5075:$ 

_user_specified_name5077:$ 

_user_specified_name5079:$ 

_user_specified_name5081:$ 

_user_specified_name5083:$ 

_user_specified_name5085:$ 

_user_specified_name5087:$ 

_user_specified_name5089:$ 

_user_specified_name5091:$  

_user_specified_name5093
╧

ё
?__inference_dense_layer_call_and_return_conditional_losses_5588

inputs1
matmul_readvariableop_resource:	└-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	└*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
Ъ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4416

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Х
Я
'__inference_conv2d_1_layer_call_fn_5198

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ||А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4625x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ||А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ~~А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ~~А
 
_user_specified_nameinputs:$ 

_user_specified_name5192:$ 

_user_specified_name5194
╬
Ъ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4560

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ш
┬
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4326

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧║
з!
__inference__wrapped_model_4226
conv2d_inputK
0sequential_conv2d_conv2d_readvariableop_resource:А@
1sequential_conv2d_biasadd_readvariableop_resource:	АE
6sequential_batch_normalization_readvariableop_resource:	АG
8sequential_batch_normalization_readvariableop_1_resource:	АV
Gsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource:	АX
Isequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:	АN
2sequential_conv2d_1_conv2d_readvariableop_resource:ААB
3sequential_conv2d_1_biasadd_readvariableop_resource:	АG
8sequential_batch_normalization_1_readvariableop_resource:	АI
:sequential_batch_normalization_1_readvariableop_1_resource:	АX
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	АZ
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	АM
2sequential_conv2d_2_conv2d_readvariableop_resource:А@A
3sequential_conv2d_2_biasadd_readvariableop_resource:@F
8sequential_batch_normalization_2_readvariableop_resource:@H
:sequential_batch_normalization_2_readvariableop_1_resource:@W
Isequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@Y
Ksequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@L
2sequential_conv2d_3_conv2d_readvariableop_resource:@ A
3sequential_conv2d_3_biasadd_readvariableop_resource: F
8sequential_batch_normalization_3_readvariableop_resource: H
:sequential_batch_normalization_3_readvariableop_1_resource: W
Isequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource: Y
Ksequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource: L
2sequential_conv2d_4_conv2d_readvariableop_resource: A
3sequential_conv2d_4_biasadd_readvariableop_resource:F
8sequential_batch_normalization_4_readvariableop_resource:H
:sequential_batch_normalization_4_readvariableop_1_resource:W
Isequential_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:Y
Ksequential_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:B
/sequential_dense_matmul_readvariableop_resource:	└>
0sequential_dense_biasadd_readvariableop_resource:
identityИв>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpв@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в-sequential/batch_normalization/ReadVariableOpв/sequential/batch_normalization/ReadVariableOp_1в@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_1/ReadVariableOpв1sequential/batch_normalization_1/ReadVariableOp_1в@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_2/ReadVariableOpв1sequential/batch_normalization_2/ReadVariableOp_1в@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_3/ReadVariableOpв1sequential/batch_normalization_3/ReadVariableOp_1в@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвBsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в/sequential/batch_normalization_4/ReadVariableOpв1sequential/batch_normalization_4/ReadVariableOp_1в(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв*sequential/conv2d_4/BiasAdd/ReadVariableOpв)sequential/conv2d_4/Conv2D/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpб
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0╟
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А*
paddingVALID*
strides
Ч
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*2
_output_shapes 
:         №№А┐
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:         ~~А*
ksize
*
paddingVALID*
strides
б
-sequential/batch_normalization/ReadVariableOpReadVariableOp6sequential_batch_normalization_readvariableop_resource*
_output_shapes	
:А*
dtype0е
/sequential/batch_normalization/ReadVariableOp_1ReadVariableOp8sequential_batch_normalization_readvariableop_1_resource*
_output_shapes	
:А*
dtype0├
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGsequential_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIsequential_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0∙
/sequential/batch_normalization/FusedBatchNormV3FusedBatchNormV3)sequential/max_pooling2d/MaxPool:output:05sequential/batch_normalization/ReadVariableOp:value:07sequential/batch_normalization/ReadVariableOp_1:value:0Fsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hsequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ~~А:А:А:А:А:*
epsilon%oГ:*
is_training( ж
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ё
sequential/conv2d_1/Conv2DConv2D3sequential/batch_normalization/FusedBatchNormV3:y:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||А*
paddingVALID*
strides
Ы
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||АБ
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:         ||А├
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:         >>А*
ksize
*
paddingVALID*
strides
е
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes	
:А*
dtype0й
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╟
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3+sequential/max_pooling2d_1/MaxPool:output:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         >>А:А:А:А:А:*
epsilon%oГ:*
is_training( е
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0ё
sequential/conv2d_2/Conv2DConv2D5sequential/batch_normalization_1/FusedBatchNormV3:y:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
Ъ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@А
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@┬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
д
/sequential/batch_normalization_2/ReadVariableOpReadVariableOp8sequential_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype0и
1sequential/batch_normalization_2/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0╞
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╩
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0А
1sequential/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3+sequential/max_pooling2d_2/MaxPool:output:07sequential/batch_normalization_2/ReadVariableOp:value:09sequential/batch_normalization_2/ReadVariableOp_1:value:0Hsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( д
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ё
sequential/conv2d_3/Conv2DConv2D5sequential/batch_normalization_2/FusedBatchNormV3:y:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
Ъ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          А
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:          ┬
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
д
/sequential/batch_normalization_3/ReadVariableOpReadVariableOp8sequential_batch_normalization_3_readvariableop_resource*
_output_shapes
: *
dtype0и
1sequential/batch_normalization_3/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_3_readvariableop_1_resource*
_output_shapes
: *
dtype0╞
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╩
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0А
1sequential/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3+sequential/max_pooling2d_3/MaxPool:output:07sequential/batch_normalization_3/ReadVariableOp:value:09sequential/batch_normalization_3/ReadVariableOp_1:value:0Hsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( д
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ё
sequential/conv2d_4/Conv2DConv2D5sequential/batch_normalization_3/FusedBatchNormV3:y:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Ъ
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╣
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         А
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         ┬
"sequential/max_pooling2d_4/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
д
/sequential/batch_normalization_4/ReadVariableOpReadVariableOp8sequential_batch_normalization_4_readvariableop_resource*
_output_shapes
:*
dtype0и
1sequential/batch_normalization_4/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:*
dtype0╞
@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╩
Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0А
1sequential/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3+sequential/max_pooling2d_4/MaxPool:output:07sequential/batch_normalization_4/ReadVariableOp:value:09sequential/batch_normalization_4/ReadVariableOp_1:value:0Hsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @  ▓
sequential/flatten/ReshapeReshape5sequential/batch_normalization_4/FusedBatchNormV3:y:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         └Ч
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	└*
dtype0и
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0й
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp?^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOpA^sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^sequential/batch_normalization/ReadVariableOp0^sequential/batch_normalization/ReadVariableOp_1A^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1A^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_2/ReadVariableOp2^sequential/batch_normalization_2/ReadVariableOp_1A^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_3/ReadVariableOp2^sequential/batch_normalization_3/ReadVariableOp_1A^sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_4/ReadVariableOp2^sequential/batch_normalization_4/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2А
>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp>sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp2Д
@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@sequential/batch_normalization/FusedBatchNormV3/ReadVariableOp_12^
-sequential/batch_normalization/ReadVariableOp-sequential/batch_normalization/ReadVariableOp2b
/sequential/batch_normalization/ReadVariableOp_1/sequential/batch_normalization/ReadVariableOp_12Д
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12Д
@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_2/ReadVariableOp/sequential/batch_normalization_2/ReadVariableOp2f
1sequential/batch_normalization_2/ReadVariableOp_11sequential/batch_normalization_2/ReadVariableOp_12Д
@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_3/ReadVariableOp/sequential/batch_normalization_3/ReadVariableOp2f
1sequential/batch_normalization_3/ReadVariableOp_11sequential/batch_normalization_3/ReadVariableOp_12Д
@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2И
Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_4/ReadVariableOp/sequential/batch_normalization_4/ReadVariableOp2f
1sequential/batch_normalization_4/ReadVariableOp_11sequential/batch_normalization_4/ReadVariableOp_12T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
И
╛
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4542

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ш
┬
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5263

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5311

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Я
ъ
)__inference_sequential_layer_call_fn_4897
conv2d_input"
unknown:А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А%

unknown_11:А@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: 

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	└

unknown_30:
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4743o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         АА
&
_user_specified_nameconv2d_input:$ 

_user_specified_name4831:$ 

_user_specified_name4833:$ 

_user_specified_name4835:$ 

_user_specified_name4837:$ 

_user_specified_name4839:$ 

_user_specified_name4841:$ 

_user_specified_name4843:$ 

_user_specified_name4845:$	 

_user_specified_name4847:$
 

_user_specified_name4849:$ 

_user_specified_name4851:$ 

_user_specified_name4853:$ 

_user_specified_name4855:$ 

_user_specified_name4857:$ 

_user_specified_name4859:$ 

_user_specified_name4861:$ 

_user_specified_name4863:$ 

_user_specified_name4865:$ 

_user_specified_name4867:$ 

_user_specified_name4869:$ 

_user_specified_name4871:$ 

_user_specified_name4873:$ 

_user_specified_name4875:$ 

_user_specified_name4877:$ 

_user_specified_name4879:$ 

_user_specified_name4881:$ 

_user_specified_name4883:$ 

_user_specified_name4885:$ 

_user_specified_name4887:$ 

_user_specified_name4889:$ 

_user_specified_name4891:$  

_user_specified_name4893
┤
J
.__inference_max_pooling2d_3_layer_call_fn_5398

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_4447Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
√
@__inference_conv2d_layer_call_and_return_conditional_losses_5117

inputs9
conv2d_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А*
dtype0Э
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         №№А[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         №№Аl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         №№АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
e
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_4519

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Е

╤
2__inference_batch_normalization_layer_call_fn_5153

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4272К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:$ 

_user_specified_name5143:$ 

_user_specified_name5145:$ 

_user_specified_name5147:$ 

_user_specified_name5149
С
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_5403

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Мє
иN
__inference__traced_save_6102
file_prefix?
$read_disablecopyonread_conv2d_kernel:А3
$read_1_disablecopyonread_conv2d_bias:	АA
2read_2_disablecopyonread_batch_normalization_gamma:	А@
1read_3_disablecopyonread_batch_normalization_beta:	АG
8read_4_disablecopyonread_batch_normalization_moving_mean:	АK
<read_5_disablecopyonread_batch_normalization_moving_variance:	АD
(read_6_disablecopyonread_conv2d_1_kernel:АА5
&read_7_disablecopyonread_conv2d_1_bias:	АC
4read_8_disablecopyonread_batch_normalization_1_gamma:	АB
3read_9_disablecopyonread_batch_normalization_1_beta:	АJ
;read_10_disablecopyonread_batch_normalization_1_moving_mean:	АN
?read_11_disablecopyonread_batch_normalization_1_moving_variance:	АD
)read_12_disablecopyonread_conv2d_2_kernel:А@5
'read_13_disablecopyonread_conv2d_2_bias:@C
5read_14_disablecopyonread_batch_normalization_2_gamma:@B
4read_15_disablecopyonread_batch_normalization_2_beta:@I
;read_16_disablecopyonread_batch_normalization_2_moving_mean:@M
?read_17_disablecopyonread_batch_normalization_2_moving_variance:@C
)read_18_disablecopyonread_conv2d_3_kernel:@ 5
'read_19_disablecopyonread_conv2d_3_bias: C
5read_20_disablecopyonread_batch_normalization_3_gamma: B
4read_21_disablecopyonread_batch_normalization_3_beta: I
;read_22_disablecopyonread_batch_normalization_3_moving_mean: M
?read_23_disablecopyonread_batch_normalization_3_moving_variance: C
)read_24_disablecopyonread_conv2d_4_kernel: 5
'read_25_disablecopyonread_conv2d_4_bias:C
5read_26_disablecopyonread_batch_normalization_4_gamma:B
4read_27_disablecopyonread_batch_normalization_4_beta:I
;read_28_disablecopyonread_batch_normalization_4_moving_mean:M
?read_29_disablecopyonread_batch_normalization_4_moving_variance:9
&read_30_disablecopyonread_dense_kernel:	└2
$read_31_disablecopyonread_dense_bias:-
#read_32_disablecopyonread_iteration:	 1
'read_33_disablecopyonread_learning_rate: I
.read_34_disablecopyonread_adam_m_conv2d_kernel:АI
.read_35_disablecopyonread_adam_v_conv2d_kernel:А;
,read_36_disablecopyonread_adam_m_conv2d_bias:	А;
,read_37_disablecopyonread_adam_v_conv2d_bias:	АI
:read_38_disablecopyonread_adam_m_batch_normalization_gamma:	АI
:read_39_disablecopyonread_adam_v_batch_normalization_gamma:	АH
9read_40_disablecopyonread_adam_m_batch_normalization_beta:	АH
9read_41_disablecopyonread_adam_v_batch_normalization_beta:	АL
0read_42_disablecopyonread_adam_m_conv2d_1_kernel:ААL
0read_43_disablecopyonread_adam_v_conv2d_1_kernel:АА=
.read_44_disablecopyonread_adam_m_conv2d_1_bias:	А=
.read_45_disablecopyonread_adam_v_conv2d_1_bias:	АK
<read_46_disablecopyonread_adam_m_batch_normalization_1_gamma:	АK
<read_47_disablecopyonread_adam_v_batch_normalization_1_gamma:	АJ
;read_48_disablecopyonread_adam_m_batch_normalization_1_beta:	АJ
;read_49_disablecopyonread_adam_v_batch_normalization_1_beta:	АK
0read_50_disablecopyonread_adam_m_conv2d_2_kernel:А@K
0read_51_disablecopyonread_adam_v_conv2d_2_kernel:А@<
.read_52_disablecopyonread_adam_m_conv2d_2_bias:@<
.read_53_disablecopyonread_adam_v_conv2d_2_bias:@J
<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma:@J
<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma:@I
;read_56_disablecopyonread_adam_m_batch_normalization_2_beta:@I
;read_57_disablecopyonread_adam_v_batch_normalization_2_beta:@J
0read_58_disablecopyonread_adam_m_conv2d_3_kernel:@ J
0read_59_disablecopyonread_adam_v_conv2d_3_kernel:@ <
.read_60_disablecopyonread_adam_m_conv2d_3_bias: <
.read_61_disablecopyonread_adam_v_conv2d_3_bias: J
<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma: J
<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma: I
;read_64_disablecopyonread_adam_m_batch_normalization_3_beta: I
;read_65_disablecopyonread_adam_v_batch_normalization_3_beta: J
0read_66_disablecopyonread_adam_m_conv2d_4_kernel: J
0read_67_disablecopyonread_adam_v_conv2d_4_kernel: <
.read_68_disablecopyonread_adam_m_conv2d_4_bias:<
.read_69_disablecopyonread_adam_v_conv2d_4_bias:J
<read_70_disablecopyonread_adam_m_batch_normalization_4_gamma:J
<read_71_disablecopyonread_adam_v_batch_normalization_4_gamma:I
;read_72_disablecopyonread_adam_m_batch_normalization_4_beta:I
;read_73_disablecopyonread_adam_v_batch_normalization_4_beta:@
-read_74_disablecopyonread_adam_m_dense_kernel:	└@
-read_75_disablecopyonread_adam_v_dense_kernel:	└9
+read_76_disablecopyonread_adam_m_dense_bias:9
+read_77_disablecopyonread_adam_v_dense_bias:+
!read_78_disablecopyonread_total_1: +
!read_79_disablecopyonread_count_1: )
read_80_disablecopyonread_total: )
read_81_disablecopyonread_count: 
savev2_const
identity_165ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_45/DisableCopyOnReadвRead_45/ReadVariableOpвRead_46/DisableCopyOnReadвRead_46/ReadVariableOpвRead_47/DisableCopyOnReadвRead_47/ReadVariableOpвRead_48/DisableCopyOnReadвRead_48/ReadVariableOpвRead_49/DisableCopyOnReadвRead_49/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_50/DisableCopyOnReadвRead_50/ReadVariableOpвRead_51/DisableCopyOnReadвRead_51/ReadVariableOpвRead_52/DisableCopyOnReadвRead_52/ReadVariableOpвRead_53/DisableCopyOnReadвRead_53/ReadVariableOpвRead_54/DisableCopyOnReadвRead_54/ReadVariableOpвRead_55/DisableCopyOnReadвRead_55/ReadVariableOpвRead_56/DisableCopyOnReadвRead_56/ReadVariableOpвRead_57/DisableCopyOnReadвRead_57/ReadVariableOpвRead_58/DisableCopyOnReadвRead_58/ReadVariableOpвRead_59/DisableCopyOnReadвRead_59/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_60/DisableCopyOnReadвRead_60/ReadVariableOpвRead_61/DisableCopyOnReadвRead_61/ReadVariableOpвRead_62/DisableCopyOnReadвRead_62/ReadVariableOpвRead_63/DisableCopyOnReadвRead_63/ReadVariableOpвRead_64/DisableCopyOnReadвRead_64/ReadVariableOpвRead_65/DisableCopyOnReadвRead_65/ReadVariableOpвRead_66/DisableCopyOnReadвRead_66/ReadVariableOpвRead_67/DisableCopyOnReadвRead_67/ReadVariableOpвRead_68/DisableCopyOnReadвRead_68/ReadVariableOpвRead_69/DisableCopyOnReadвRead_69/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_70/DisableCopyOnReadвRead_70/ReadVariableOpвRead_71/DisableCopyOnReadвRead_71/ReadVariableOpвRead_72/DisableCopyOnReadвRead_72/ReadVariableOpвRead_73/DisableCopyOnReadвRead_73/ReadVariableOpвRead_74/DisableCopyOnReadвRead_74/ReadVariableOpвRead_75/DisableCopyOnReadвRead_75/ReadVariableOpвRead_76/DisableCopyOnReadвRead_76/ReadVariableOpвRead_77/DisableCopyOnReadвRead_77/ReadVariableOpвRead_78/DisableCopyOnReadвRead_78/ReadVariableOpвRead_79/DisableCopyOnReadвRead_79/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_80/DisableCopyOnReadвRead_80/ReadVariableOpвRead_81/DisableCopyOnReadвRead_81/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 й
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0r
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аj

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*'
_output_shapes
:Аx
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 б
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЖ
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 п
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 о
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:АМ
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 ╡
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 ╣
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:А|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0x
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААz
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 г
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:АИ
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ▒
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЗ
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ░
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@n
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 е
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@К
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 │
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ▓
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ф
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 │
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_conv2d_3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ |
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 е
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_conv2d_3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: К
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 │
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_batch_normalization_3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: Й
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ▓
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_batch_normalization_3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: Р
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_batch_normalization_3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: Ф
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_23/ReadVariableOpReadVariableOp?read_23_disablecopyonread_batch_normalization_3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 │
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_conv2d_4_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
: |
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 е
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_conv2d_4_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_26/DisableCopyOnReadDisableCopyOnRead5read_26_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 │
Read_26/ReadVariableOpReadVariableOp5read_26_disablecopyonread_batch_normalization_4_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:Й
Read_27/DisableCopyOnReadDisableCopyOnRead4read_27_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ▓
Read_27/ReadVariableOpReadVariableOp4read_27_disablecopyonread_batch_normalization_4_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_28/DisableCopyOnReadDisableCopyOnRead;read_28_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_28/ReadVariableOpReadVariableOp;read_28_disablecopyonread_batch_normalization_4_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:Ф
Read_29/DisableCopyOnReadDisableCopyOnRead?read_29_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_29/ReadVariableOpReadVariableOp?read_29_disablecopyonread_batch_normalization_4_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_30/DisableCopyOnReadDisableCopyOnRead&read_30_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 й
Read_30/ReadVariableOpReadVariableOp&read_30_disablecopyonread_dense_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	└*
dtype0p
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	└f
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	└y
Read_31/DisableCopyOnReadDisableCopyOnRead$read_31_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 в
Read_31/ReadVariableOpReadVariableOp$read_31_disablecopyonread_dense_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_32/DisableCopyOnReadDisableCopyOnRead#read_32_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_32/ReadVariableOpReadVariableOp#read_32_disablecopyonread_iteration^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_learning_rate^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_34/DisableCopyOnReadDisableCopyOnRead.read_34_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╣
Read_34/ReadVariableOpReadVariableOp.read_34_disablecopyonread_adam_m_conv2d_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0x
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аn
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*'
_output_shapes
:АГ
Read_35/DisableCopyOnReadDisableCopyOnRead.read_35_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╣
Read_35/ReadVariableOpReadVariableOp.read_35_disablecopyonread_adam_v_conv2d_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А*
dtype0x
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:Аn
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*'
_output_shapes
:АБ
Read_36/DisableCopyOnReadDisableCopyOnRead,read_36_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 л
Read_36/ReadVariableOpReadVariableOp,read_36_disablecopyonread_adam_m_conv2d_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:АБ
Read_37/DisableCopyOnReadDisableCopyOnRead,read_37_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 л
Read_37/ReadVariableOpReadVariableOp,read_37_disablecopyonread_adam_v_conv2d_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_38/DisableCopyOnReadDisableCopyOnRead:read_38_disablecopyonread_adam_m_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ╣
Read_38/ReadVariableOpReadVariableOp:read_38_disablecopyonread_adam_m_batch_normalization_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_39/DisableCopyOnReadDisableCopyOnRead:read_39_disablecopyonread_adam_v_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ╣
Read_39/ReadVariableOpReadVariableOp:read_39_disablecopyonread_adam_v_batch_normalization_gamma^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_40/DisableCopyOnReadDisableCopyOnRead9read_40_disablecopyonread_adam_m_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ╕
Read_40/ReadVariableOpReadVariableOp9read_40_disablecopyonread_adam_m_batch_normalization_beta^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_41/DisableCopyOnReadDisableCopyOnRead9read_41_disablecopyonread_adam_v_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ╕
Read_41/ReadVariableOpReadVariableOp9read_41_disablecopyonread_adam_v_batch_normalization_beta^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adam_m_conv2d_1_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adam_v_conv2d_1_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 н
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adam_m_conv2d_1_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_45/DisableCopyOnReadDisableCopyOnRead.read_45_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 н
Read_45/ReadVariableOpReadVariableOp.read_45_disablecopyonread_adam_v_conv2d_1_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_1_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_1_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_48/DisableCopyOnReadDisableCopyOnRead;read_48_disablecopyonread_adam_m_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ║
Read_48/ReadVariableOpReadVariableOp;read_48_disablecopyonread_adam_m_batch_normalization_1_beta^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_adam_v_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ║
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_adam_v_batch_normalization_1_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_m_conv2d_2_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0y
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@p
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@Е
Read_51/DisableCopyOnReadDisableCopyOnRead0read_51_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_51/ReadVariableOpReadVariableOp0read_51_disablecopyonread_adam_v_conv2d_2_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0y
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@p
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@Г
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 м
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_m_conv2d_2_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:@Г
Read_53/DisableCopyOnReadDisableCopyOnRead.read_53_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 м
Read_53/ReadVariableOpReadVariableOp.read_53_disablecopyonread_adam_v_conv2d_2_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_54/DisableCopyOnReadDisableCopyOnRead<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ║
Read_54/ReadVariableOpReadVariableOp<read_54_disablecopyonread_adam_m_batch_normalization_2_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ║
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_adam_v_batch_normalization_2_gamma^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_56/DisableCopyOnReadDisableCopyOnRead;read_56_disablecopyonread_adam_m_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ╣
Read_56/ReadVariableOpReadVariableOp;read_56_disablecopyonread_adam_m_batch_normalization_2_beta^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_57/DisableCopyOnReadDisableCopyOnRead;read_57_disablecopyonread_adam_v_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ╣
Read_57/ReadVariableOpReadVariableOp;read_57_disablecopyonread_adam_v_batch_normalization_2_beta^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ║
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_conv2d_3_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ Е
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ║
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_conv2d_3_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ Г
Read_60/DisableCopyOnReadDisableCopyOnRead.read_60_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 м
Read_60/ReadVariableOpReadVariableOp.read_60_disablecopyonread_adam_m_conv2d_3_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_61/DisableCopyOnReadDisableCopyOnRead.read_61_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 м
Read_61/ReadVariableOpReadVariableOp.read_61_disablecopyonread_adam_v_conv2d_3_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
: С
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ║
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_3_gamma^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
: С
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ║
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_3_gamma^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
: Р
Read_64/DisableCopyOnReadDisableCopyOnRead;read_64_disablecopyonread_adam_m_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ╣
Read_64/ReadVariableOpReadVariableOp;read_64_disablecopyonread_adam_m_batch_normalization_3_beta^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: Р
Read_65/DisableCopyOnReadDisableCopyOnRead;read_65_disablecopyonread_adam_v_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ╣
Read_65/ReadVariableOpReadVariableOp;read_65_disablecopyonread_adam_v_batch_normalization_3_beta^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_66/DisableCopyOnReadDisableCopyOnRead0read_66_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ║
Read_66/ReadVariableOpReadVariableOp0read_66_disablecopyonread_adam_m_conv2d_4_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
: Е
Read_67/DisableCopyOnReadDisableCopyOnRead0read_67_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ║
Read_67/ReadVariableOpReadVariableOp0read_67_disablecopyonread_adam_v_conv2d_4_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_68/DisableCopyOnReadDisableCopyOnRead.read_68_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 м
Read_68/ReadVariableOpReadVariableOp.read_68_disablecopyonread_adam_m_conv2d_4_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_69/DisableCopyOnReadDisableCopyOnRead.read_69_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 м
Read_69/ReadVariableOpReadVariableOp.read_69_disablecopyonread_adam_v_conv2d_4_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_70/DisableCopyOnReadDisableCopyOnRead<read_70_disablecopyonread_adam_m_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ║
Read_70/ReadVariableOpReadVariableOp<read_70_disablecopyonread_adam_m_batch_normalization_4_gamma^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_71/DisableCopyOnReadDisableCopyOnRead<read_71_disablecopyonread_adam_v_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ║
Read_71/ReadVariableOpReadVariableOp<read_71_disablecopyonread_adam_v_batch_normalization_4_gamma^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_72/DisableCopyOnReadDisableCopyOnRead;read_72_disablecopyonread_adam_m_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ╣
Read_72/ReadVariableOpReadVariableOp;read_72_disablecopyonread_adam_m_batch_normalization_4_beta^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_73/DisableCopyOnReadDisableCopyOnRead;read_73_disablecopyonread_adam_v_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ╣
Read_73/ReadVariableOpReadVariableOp;read_73_disablecopyonread_adam_v_batch_normalization_4_beta^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_74/DisableCopyOnReadDisableCopyOnRead-read_74_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 ░
Read_74/ReadVariableOpReadVariableOp-read_74_disablecopyonread_adam_m_dense_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	└*
dtype0q
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	└h
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
:	└В
Read_75/DisableCopyOnReadDisableCopyOnRead-read_75_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 ░
Read_75/ReadVariableOpReadVariableOp-read_75_disablecopyonread_adam_v_dense_kernel^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	└*
dtype0q
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	└h
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
:	└А
Read_76/DisableCopyOnReadDisableCopyOnRead+read_76_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 й
Read_76/ReadVariableOpReadVariableOp+read_76_disablecopyonread_adam_m_dense_bias^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:А
Read_77/DisableCopyOnReadDisableCopyOnRead+read_77_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 й
Read_77/ReadVariableOpReadVariableOp+read_77_disablecopyonread_adam_v_dense_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_78/DisableCopyOnReadDisableCopyOnRead!read_78_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_78/ReadVariableOpReadVariableOp!read_78_disablecopyonread_total_1^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_79/DisableCopyOnReadDisableCopyOnRead!read_79_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_79/ReadVariableOpReadVariableOp!read_79_disablecopyonread_count_1^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_80/DisableCopyOnReadDisableCopyOnReadread_80_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_80/ReadVariableOpReadVariableOpread_80_disablecopyonread_total^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_81/DisableCopyOnReadDisableCopyOnReadread_81_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_81/ReadVariableOpReadVariableOpread_81_disablecopyonread_count^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
: ▌#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*Ж#
value№"B∙"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*╗
value▒BоSB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╤
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *a
dtypesW
U2S	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_164Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_165IdentityIdentity_164:output:0^NoOp*
T0*
_output_shapes
: Щ"
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_165Identity_165:output:0*(
_construction_contextkEagerRuntime*╜
_input_shapesл
и: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:;	7
5
_user_specified_namebatch_normalization_1/gamma::
6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:/+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_4/bias:;7
5
_user_specified_namebatch_normalization_4/gamma::6
4
_user_specified_namebatch_normalization_4/beta:A=
;
_user_specified_name#!batch_normalization_4/moving_mean:EA
?
_user_specified_name'%batch_normalization_4/moving_variance:,(
&
_user_specified_namedense/kernel:* &
$
_user_specified_name
dense/bias:)!%
#
_user_specified_name	iteration:-")
'
_user_specified_namelearning_rate:4#0
.
_user_specified_nameAdam/m/conv2d/kernel:4$0
.
_user_specified_nameAdam/v/conv2d/kernel:2%.
,
_user_specified_nameAdam/m/conv2d/bias:2&.
,
_user_specified_nameAdam/v/conv2d/bias:@'<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@(<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?);
9
_user_specified_name!Adam/m/batch_normalization/beta:?*;
9
_user_specified_name!Adam/v/batch_normalization/beta:6+2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6,2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4-0
.
_user_specified_nameAdam/m/conv2d_1/bias:4.0
.
_user_specified_nameAdam/v/conv2d_1/bias:B/>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:B0>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:A1=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:A2=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:632
0
_user_specified_nameAdam/m/conv2d_2/kernel:642
0
_user_specified_nameAdam/v/conv2d_2/kernel:450
.
_user_specified_nameAdam/m/conv2d_2/bias:460
.
_user_specified_nameAdam/v/conv2d_2/bias:B7>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:B8>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:A9=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:A:=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6;2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6<2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4=0
.
_user_specified_nameAdam/m/conv2d_3/bias:4>0
.
_user_specified_nameAdam/v/conv2d_3/bias:B?>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:B@>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:AA=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:AB=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:6C2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6D2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4E0
.
_user_specified_nameAdam/m/conv2d_4/bias:4F0
.
_user_specified_nameAdam/v/conv2d_4/bias:BG>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:BH>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:AI=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:AJ=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:3K/
-
_user_specified_nameAdam/m/dense/kernel:3L/
-
_user_specified_nameAdam/v/dense/kernel:1M-
+
_user_specified_nameAdam/m/dense/bias:1N-
+
_user_specified_nameAdam/v/dense/bias:'O#
!
_user_specified_name	total_1:'P#
!
_user_specified_name	count_1:%Q!

_user_specified_nametotal:%R!

_user_specified_namecount:=S9

_output_shapes
: 

_user_specified_nameConst
Ц
└
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5171

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Г

╤
2__inference_batch_normalization_layer_call_fn_5140

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_4254К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:$ 

_user_specified_name5130:$ 

_user_specified_name5132:$ 

_user_specified_name5134:$ 

_user_specified_name5136
ыА
╡6
 __inference__traced_restore_6357
file_prefix9
assignvariableop_conv2d_kernel:А-
assignvariableop_1_conv2d_bias:	А;
,assignvariableop_2_batch_normalization_gamma:	А:
+assignvariableop_3_batch_normalization_beta:	АA
2assignvariableop_4_batch_normalization_moving_mean:	АE
6assignvariableop_5_batch_normalization_moving_variance:	А>
"assignvariableop_6_conv2d_1_kernel:АА/
 assignvariableop_7_conv2d_1_bias:	А=
.assignvariableop_8_batch_normalization_1_gamma:	А<
-assignvariableop_9_batch_normalization_1_beta:	АD
5assignvariableop_10_batch_normalization_1_moving_mean:	АH
9assignvariableop_11_batch_normalization_1_moving_variance:	А>
#assignvariableop_12_conv2d_2_kernel:А@/
!assignvariableop_13_conv2d_2_bias:@=
/assignvariableop_14_batch_normalization_2_gamma:@<
.assignvariableop_15_batch_normalization_2_beta:@C
5assignvariableop_16_batch_normalization_2_moving_mean:@G
9assignvariableop_17_batch_normalization_2_moving_variance:@=
#assignvariableop_18_conv2d_3_kernel:@ /
!assignvariableop_19_conv2d_3_bias: =
/assignvariableop_20_batch_normalization_3_gamma: <
.assignvariableop_21_batch_normalization_3_beta: C
5assignvariableop_22_batch_normalization_3_moving_mean: G
9assignvariableop_23_batch_normalization_3_moving_variance: =
#assignvariableop_24_conv2d_4_kernel: /
!assignvariableop_25_conv2d_4_bias:=
/assignvariableop_26_batch_normalization_4_gamma:<
.assignvariableop_27_batch_normalization_4_beta:C
5assignvariableop_28_batch_normalization_4_moving_mean:G
9assignvariableop_29_batch_normalization_4_moving_variance:3
 assignvariableop_30_dense_kernel:	└,
assignvariableop_31_dense_bias:'
assignvariableop_32_iteration:	 +
!assignvariableop_33_learning_rate: C
(assignvariableop_34_adam_m_conv2d_kernel:АC
(assignvariableop_35_adam_v_conv2d_kernel:А5
&assignvariableop_36_adam_m_conv2d_bias:	А5
&assignvariableop_37_adam_v_conv2d_bias:	АC
4assignvariableop_38_adam_m_batch_normalization_gamma:	АC
4assignvariableop_39_adam_v_batch_normalization_gamma:	АB
3assignvariableop_40_adam_m_batch_normalization_beta:	АB
3assignvariableop_41_adam_v_batch_normalization_beta:	АF
*assignvariableop_42_adam_m_conv2d_1_kernel:ААF
*assignvariableop_43_adam_v_conv2d_1_kernel:АА7
(assignvariableop_44_adam_m_conv2d_1_bias:	А7
(assignvariableop_45_adam_v_conv2d_1_bias:	АE
6assignvariableop_46_adam_m_batch_normalization_1_gamma:	АE
6assignvariableop_47_adam_v_batch_normalization_1_gamma:	АD
5assignvariableop_48_adam_m_batch_normalization_1_beta:	АD
5assignvariableop_49_adam_v_batch_normalization_1_beta:	АE
*assignvariableop_50_adam_m_conv2d_2_kernel:А@E
*assignvariableop_51_adam_v_conv2d_2_kernel:А@6
(assignvariableop_52_adam_m_conv2d_2_bias:@6
(assignvariableop_53_adam_v_conv2d_2_bias:@D
6assignvariableop_54_adam_m_batch_normalization_2_gamma:@D
6assignvariableop_55_adam_v_batch_normalization_2_gamma:@C
5assignvariableop_56_adam_m_batch_normalization_2_beta:@C
5assignvariableop_57_adam_v_batch_normalization_2_beta:@D
*assignvariableop_58_adam_m_conv2d_3_kernel:@ D
*assignvariableop_59_adam_v_conv2d_3_kernel:@ 6
(assignvariableop_60_adam_m_conv2d_3_bias: 6
(assignvariableop_61_adam_v_conv2d_3_bias: D
6assignvariableop_62_adam_m_batch_normalization_3_gamma: D
6assignvariableop_63_adam_v_batch_normalization_3_gamma: C
5assignvariableop_64_adam_m_batch_normalization_3_beta: C
5assignvariableop_65_adam_v_batch_normalization_3_beta: D
*assignvariableop_66_adam_m_conv2d_4_kernel: D
*assignvariableop_67_adam_v_conv2d_4_kernel: 6
(assignvariableop_68_adam_m_conv2d_4_bias:6
(assignvariableop_69_adam_v_conv2d_4_bias:D
6assignvariableop_70_adam_m_batch_normalization_4_gamma:D
6assignvariableop_71_adam_v_batch_normalization_4_gamma:C
5assignvariableop_72_adam_m_batch_normalization_4_beta:C
5assignvariableop_73_adam_v_batch_normalization_4_beta::
'assignvariableop_74_adam_m_dense_kernel:	└:
'assignvariableop_75_adam_v_dense_kernel:	└3
%assignvariableop_76_adam_m_dense_bias:3
%assignvariableop_77_adam_v_dense_bias:%
assignvariableop_78_total_1: %
assignvariableop_79_count_1: #
assignvariableop_80_total: #
assignvariableop_81_count: 
identity_83ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_9р#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*Ж#
value№"B∙"SB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЩ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*╗
value▒BоSB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B └
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*т
_output_shapes╧
╠:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_4_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_25AssignVariableOp!assignvariableop_25_conv2d_4_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_4_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_27AssignVariableOp.assignvariableop_27_batch_normalization_4_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_28AssignVariableOp5assignvariableop_28_batch_normalization_4_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_29AssignVariableOp9assignvariableop_29_batch_normalization_4_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_31AssignVariableOpassignvariableop_31_dense_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_32AssignVariableOpassignvariableop_32_iterationIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_33AssignVariableOp!assignvariableop_33_learning_rateIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_conv2d_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_conv2d_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_m_conv2d_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_37AssignVariableOp&assignvariableop_37_adam_v_conv2d_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_38AssignVariableOp4assignvariableop_38_adam_m_batch_normalization_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_v_batch_normalization_gammaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_40AssignVariableOp3assignvariableop_40_adam_m_batch_normalization_betaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_41AssignVariableOp3assignvariableop_41_adam_v_batch_normalization_betaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_m_conv2d_1_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_v_conv2d_1_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_m_conv2d_1_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_v_conv2d_1_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_1_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_1_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_m_batch_normalization_1_betaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_v_batch_normalization_1_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_m_conv2d_2_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_v_conv2d_2_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_conv2d_2_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_conv2d_2_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_m_batch_normalization_2_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_v_batch_normalization_2_gammaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_batch_normalization_2_betaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_batch_normalization_2_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_conv2d_3_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_conv2d_3_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_m_conv2d_3_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_v_conv2d_3_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_3_gammaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_3_gammaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_m_batch_normalization_3_betaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_v_batch_normalization_3_betaIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_m_conv2d_4_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_v_conv2d_4_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_m_conv2d_4_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_v_conv2d_4_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_m_batch_normalization_4_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_v_batch_normalization_4_gammaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_72AssignVariableOp5assignvariableop_72_adam_m_batch_normalization_4_betaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_73AssignVariableOp5assignvariableop_73_adam_v_batch_normalization_4_betaIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_m_dense_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_75AssignVariableOp'assignvariableop_75_adam_v_dense_kernelIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_76AssignVariableOp%assignvariableop_76_adam_m_dense_biasIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_77AssignVariableOp%assignvariableop_77_adam_v_dense_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_78AssignVariableOpassignvariableop_78_total_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_79AssignVariableOpassignvariableop_79_count_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_80AssignVariableOpassignvariableop_80_totalIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_81AssignVariableOpassignvariableop_81_countIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 █
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_83IdentityIdentity_82:output:0^NoOp_1*
T0*
_output_shapes
: д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*
_output_shapes
 "#
identity_83Identity_83:output:0*(
_construction_contextkEagerRuntime*╗
_input_shapesй
ж: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:;	7
5
_user_specified_namebatch_normalization_1/gamma::
6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:/+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_4/bias:;7
5
_user_specified_namebatch_normalization_4/gamma::6
4
_user_specified_namebatch_normalization_4/beta:A=
;
_user_specified_name#!batch_normalization_4/moving_mean:EA
?
_user_specified_name'%batch_normalization_4/moving_variance:,(
&
_user_specified_namedense/kernel:* &
$
_user_specified_name
dense/bias:)!%
#
_user_specified_name	iteration:-")
'
_user_specified_namelearning_rate:4#0
.
_user_specified_nameAdam/m/conv2d/kernel:4$0
.
_user_specified_nameAdam/v/conv2d/kernel:2%.
,
_user_specified_nameAdam/m/conv2d/bias:2&.
,
_user_specified_nameAdam/v/conv2d/bias:@'<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@(<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?);
9
_user_specified_name!Adam/m/batch_normalization/beta:?*;
9
_user_specified_name!Adam/v/batch_normalization/beta:6+2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6,2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4-0
.
_user_specified_nameAdam/m/conv2d_1/bias:4.0
.
_user_specified_nameAdam/v/conv2d_1/bias:B/>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:B0>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:A1=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:A2=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:632
0
_user_specified_nameAdam/m/conv2d_2/kernel:642
0
_user_specified_nameAdam/v/conv2d_2/kernel:450
.
_user_specified_nameAdam/m/conv2d_2/bias:460
.
_user_specified_nameAdam/v/conv2d_2/bias:B7>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:B8>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:A9=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:A:=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6;2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6<2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4=0
.
_user_specified_nameAdam/m/conv2d_3/bias:4>0
.
_user_specified_nameAdam/v/conv2d_3/bias:B?>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:B@>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:AA=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:AB=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:6C2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6D2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4E0
.
_user_specified_nameAdam/m/conv2d_4/bias:4F0
.
_user_specified_nameAdam/v/conv2d_4/bias:BG>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:BH>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:AI=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:AJ=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:3K/
-
_user_specified_nameAdam/m/dense/kernel:3L/
-
_user_specified_nameAdam/v/dense/kernel:1M-
+
_user_specified_nameAdam/m/dense/bias:1N-
+
_user_specified_nameAdam/v/dense/bias:'O#
!
_user_specified_name	total_1:'P#
!
_user_specified_name	count_1:%Q!

_user_specified_nametotal:%R!

_user_specified_namecount
Б

╧
4__inference_batch_normalization_3_layer_call_fn_5429

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4488Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:$ 

_user_specified_name5419:$ 

_user_specified_name5421:$ 

_user_specified_name5423:$ 

_user_specified_name5425
О
Ь
'__inference_conv2d_3_layer_call_fn_5382

inputs!
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_4677w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:$ 

_user_specified_name5376:$ 

_user_specified_name5378
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4303

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
╛
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4470

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
├
]
A__inference_flatten_layer_call_and_return_conditional_losses_4724

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    @  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         └Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         └"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5219

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
√
B__inference_conv2d_4_layer_call_and_return_conditional_losses_5485

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╛
■
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5209

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ||АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ||Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ||АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ~~А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ~~А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
░
H
,__inference_max_pooling2d_layer_call_fn_5122

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4231Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_4447

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐
Ю
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5281

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╢
№
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5301

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         >>А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         >>А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
Ъ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5373

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬
Ъ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5557

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5127

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┤
J
.__inference_max_pooling2d_4_layer_call_fn_5490

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_4519Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄
Ь
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5189

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
у
Т
$__inference_dense_layer_call_fn_5577

inputs
unknown:	└
	unknown_0:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4736o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs:$ 

_user_specified_name5571:$ 

_user_specified_name5573
Б

╧
4__inference_batch_normalization_4_layer_call_fn_5521

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_4560Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:$ 

_user_specified_name5511:$ 

_user_specified_name5513:$ 

_user_specified_name5515:$ 

_user_specified_name5517"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
O
conv2d_input?
serving_default_conv2d_input:0         АА9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:но
щ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op"
_tf_keras_layer
е
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance"
_tf_keras_layer
▌
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses

;kernel
<bias
 =_jit_compiled_convolution_op"
_tf_keras_layer
е
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
▌
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
е
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance"
_tf_keras_layer
▌
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias
 q_jit_compiled_convolution_op"
_tf_keras_layer
е
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
э
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	gamma
	Аbeta
Бmoving_mean
Вmoving_variance"
_tf_keras_layer
ц
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias
!Л_jit_compiled_convolution_op"
_tf_keras_layer
л
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
	Шaxis

Щgamma
	Ъbeta
Ыmoving_mean
Ьmoving_variance"
_tf_keras_layer
л
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
├
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
йkernel
	кbias"
_tf_keras_layer
б
!0
"1
12
23
34
45
;6
<7
K8
L9
M10
N11
U12
V13
e14
f15
g16
h17
o18
p19
20
А21
Б22
В23
Й24
К25
Щ26
Ъ27
Ы28
Ь29
й30
к31"
trackable_list_wrapper
═
!0
"1
12
23
;4
<5
K6
L7
U8
V9
e10
f11
o12
p13
14
А15
Й16
К17
Щ18
Ъ19
й20
к21"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╔
░trace_0
▒trace_12О
)__inference_sequential_layer_call_fn_4897
)__inference_sequential_layer_call_fn_4966╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0z▒trace_1
 
▓trace_0
│trace_12─
D__inference_sequential_layer_call_and_return_conditional_losses_4743
D__inference_sequential_layer_call_and_return_conditional_losses_4828╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0z│trace_1
╧B╠
__inference__wrapped_model_4226conv2d_input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
┤
_variables
╡_iterations
╢_learning_rate
╖_index_dict
╕
_momentums
╣_velocities
║_update_step_xla"
experimentalOptimizer
-
╗serving_default"
signature_map
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
с
┴trace_02┬
%__inference_conv2d_layer_call_fn_5106Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
№
┬trace_02▌
@__inference_conv2d_layer_call_and_return_conditional_losses_5117Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
(:&А2conv2d/kernel
:А2conv2d/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ш
╚trace_02╔
,__inference_max_pooling2d_layer_call_fn_5122Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
Г
╔trace_02ф
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5127Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
█
╧trace_0
╨trace_12а
2__inference_batch_normalization_layer_call_fn_5140
2__inference_batch_normalization_layer_call_fn_5153╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0z╨trace_1
С
╤trace_0
╥trace_12╓
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5171
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5189╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0z╥trace_1
 "
trackable_list_wrapper
(:&А2batch_normalization/gamma
':%А2batch_normalization/beta
0:.А (2batch_normalization/moving_mean
4:2А (2#batch_normalization/moving_variance
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
у
╪trace_02─
'__inference_conv2d_1_layer_call_fn_5198Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0
■
┘trace_02▀
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5209Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0
+:)АА2conv2d_1/kernel
:А2conv2d_1/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ъ
▀trace_02╦
.__inference_max_pooling2d_1_layer_call_fn_5214Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
Е
рtrace_02ц
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5219Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
▀
цtrace_0
чtrace_12д
4__inference_batch_normalization_1_layer_call_fn_5232
4__inference_batch_normalization_1_layer_call_fn_5245╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
Х
шtrace_0
щtrace_12┌
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5263
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5281╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0zщtrace_1
 "
trackable_list_wrapper
*:(А2batch_normalization_1/gamma
):'А2batch_normalization_1/beta
2:0А (2!batch_normalization_1/moving_mean
6:4А (2%batch_normalization_1/moving_variance
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
у
яtrace_02─
'__inference_conv2d_2_layer_call_fn_5290Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zяtrace_0
■
Ёtrace_02▀
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5301Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
*:(А@2conv2d_2/kernel
:@2conv2d_2/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
ъ
Ўtrace_02╦
.__inference_max_pooling2d_2_layer_call_fn_5306Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
Е
ўtrace_02ц
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5311Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
▀
¤trace_0
■trace_12д
4__inference_batch_normalization_2_layer_call_fn_5324
4__inference_batch_normalization_2_layer_call_fn_5337╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0z■trace_1
Х
 trace_0
Аtrace_12┌
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5355
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5373╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0zАtrace_1
 "
trackable_list_wrapper
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
у
Жtrace_02─
'__inference_conv2d_3_layer_call_fn_5382Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
■
Зtrace_02▀
B__inference_conv2d_3_layer_call_and_return_conditional_losses_5393Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
):'@ 2conv2d_3/kernel
: 2conv2d_3/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
ъ
Нtrace_02╦
.__inference_max_pooling2d_3_layer_call_fn_5398Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
Е
Оtrace_02ц
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_5403Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
?
0
А1
Б2
В3"
trackable_list_wrapper
/
0
А1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
▀
Фtrace_0
Хtrace_12д
4__inference_batch_normalization_3_layer_call_fn_5416
4__inference_batch_normalization_3_layer_call_fn_5429╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0zХtrace_1
Х
Цtrace_0
Чtrace_12┌
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5447
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5465╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0zЧtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_3/gamma
(:& 2batch_normalization_3/beta
1:/  (2!batch_normalization_3/moving_mean
5:3  (2%batch_normalization_3/moving_variance
0
Й0
К1"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
у
Эtrace_02─
'__inference_conv2d_4_layer_call_fn_5474Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
■
Юtrace_02▀
B__inference_conv2d_4_layer_call_and_return_conditional_losses_5485Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЮtrace_0
):' 2conv2d_4/kernel
:2conv2d_4/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
ъ
дtrace_02╦
.__inference_max_pooling2d_4_layer_call_fn_5490Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
Е
еtrace_02ц
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_5495Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zеtrace_0
@
Щ0
Ъ1
Ы2
Ь3"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
▀
лtrace_0
мtrace_12д
4__inference_batch_normalization_4_layer_call_fn_5508
4__inference_batch_normalization_4_layer_call_fn_5521╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0zмtrace_1
Х
нtrace_0
оtrace_12┌
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5539
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5557╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_4/gamma
(:&2batch_normalization_4/beta
1:/ (2!batch_normalization_4/moving_mean
5:3 (2%batch_normalization_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
т
┤trace_02├
&__inference_flatten_layer_call_fn_5562Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0
¤
╡trace_02▐
A__inference_flatten_layer_call_and_return_conditional_losses_5568Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╡trace_0
0
й0
к1"
trackable_list_wrapper
0
й0
к1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
р
╗trace_02┴
$__inference_dense_layer_call_fn_5577Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
√
╝trace_02▄
?__inference_dense_layer_call_and_return_conditional_losses_5588Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
:	└2dense/kernel
:2
dense/bias
j
30
41
M2
N3
g4
h5
Б6
В7
Ы8
Ь9"
trackable_list_wrapper
Ю
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
10
11
12
13
14
15
16"
trackable_list_wrapper
0
╜0
╛1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
)__inference_sequential_layer_call_fn_4897conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
)__inference_sequential_layer_call_fn_4966conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
D__inference_sequential_layer_call_and_return_conditional_losses_4743conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
D__inference_sequential_layer_call_and_return_conditional_losses_4828conv2d_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
л
╡0
┐1
└2
┴3
┬4
├5
─6
┼7
╞8
╟9
╚10
╔11
╩12
╦13
╠14
═15
╬16
╧17
╨18
╤19
╥20
╙21
╘22
╒23
╓24
╫25
╪26
┘27
┌28
█29
▄30
▌31
▐32
▀33
р34
с35
т36
у37
ф38
х39
ц40
ч41
ш42
щ43
ъ44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
▄
┐0
┴1
├2
┼3
╟4
╔5
╦6
═7
╧8
╤9
╙10
╒11
╫12
┘13
█14
▌15
▀16
с17
у18
х19
ч20
щ21"
trackable_list_wrapper
▄
└0
┬1
─2
╞3
╚4
╩5
╠6
╬7
╨8
╥9
╘10
╓11
╪12
┌13
▄14
▐15
р16
т17
ф18
ц19
ш20
ъ21"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╪B╒
"__inference_signature_wrapper_5097conv2d_input"Ю
Ч▓У
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 !

kwonlyargsЪ
jconv2d_input
kwonlydefaults
 
annotationsк *
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
╧B╠
%__inference_conv2d_layer_call_fn_5106inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_conv2d_layer_call_and_return_conditional_losses_5117inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╓B╙
,__inference_max_pooling2d_layer_call_fn_5122inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5127inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBэ
2__inference_batch_normalization_layer_call_fn_5140inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
2__inference_batch_normalization_layer_call_fn_5153inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5171inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5189inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_conv2d_1_layer_call_fn_5198inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5209inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
.__inference_max_pooling2d_1_layer_call_fn_5214inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5219inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
4__inference_batch_normalization_1_layer_call_fn_5232inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
4__inference_batch_normalization_1_layer_call_fn_5245inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5263inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5281inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_conv2d_2_layer_call_fn_5290inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5301inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
.__inference_max_pooling2d_2_layer_call_fn_5306inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5311inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
4__inference_batch_normalization_2_layer_call_fn_5324inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
4__inference_batch_normalization_2_layer_call_fn_5337inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5355inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5373inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_conv2d_3_layer_call_fn_5382inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_5393inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
.__inference_max_pooling2d_3_layer_call_fn_5398inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_5403inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
4__inference_batch_normalization_3_layer_call_fn_5416inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
4__inference_batch_normalization_3_layer_call_fn_5429inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5447inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5465inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_conv2d_4_layer_call_fn_5474inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_4_layer_call_and_return_conditional_losses_5485inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
.__inference_max_pooling2d_4_layer_call_fn_5490inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_5495inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
4__inference_batch_normalization_4_layer_call_fn_5508inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
4__inference_batch_normalization_4_layer_call_fn_5521inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5539inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5557inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╨B═
&__inference_flatten_layer_call_fn_5562inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_flatten_layer_call_and_return_conditional_losses_5568inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╬B╦
$__inference_dense_layer_call_fn_5577inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щBц
?__inference_dense_layer_call_and_return_conditional_losses_5588inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
ы	variables
ь	keras_api

эtotal

юcount"
_tf_keras_metric
c
я	variables
Ё	keras_api

ёtotal

Єcount
є
_fn_kwargs"
_tf_keras_metric
-:+А2Adam/m/conv2d/kernel
-:+А2Adam/v/conv2d/kernel
:А2Adam/m/conv2d/bias
:А2Adam/v/conv2d/bias
-:+А2 Adam/m/batch_normalization/gamma
-:+А2 Adam/v/batch_normalization/gamma
,:*А2Adam/m/batch_normalization/beta
,:*А2Adam/v/batch_normalization/beta
0:.АА2Adam/m/conv2d_1/kernel
0:.АА2Adam/v/conv2d_1/kernel
!:А2Adam/m/conv2d_1/bias
!:А2Adam/v/conv2d_1/bias
/:-А2"Adam/m/batch_normalization_1/gamma
/:-А2"Adam/v/batch_normalization_1/gamma
.:,А2!Adam/m/batch_normalization_1/beta
.:,А2!Adam/v/batch_normalization_1/beta
/:-А@2Adam/m/conv2d_2/kernel
/:-А@2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
.:,@2"Adam/m/batch_normalization_2/gamma
.:,@2"Adam/v/batch_normalization_2/gamma
-:+@2!Adam/m/batch_normalization_2/beta
-:+@2!Adam/v/batch_normalization_2/beta
.:,@ 2Adam/m/conv2d_3/kernel
.:,@ 2Adam/v/conv2d_3/kernel
 : 2Adam/m/conv2d_3/bias
 : 2Adam/v/conv2d_3/bias
.:, 2"Adam/m/batch_normalization_3/gamma
.:, 2"Adam/v/batch_normalization_3/gamma
-:+ 2!Adam/m/batch_normalization_3/beta
-:+ 2!Adam/v/batch_normalization_3/beta
.:, 2Adam/m/conv2d_4/kernel
.:, 2Adam/v/conv2d_4/kernel
 :2Adam/m/conv2d_4/bias
 :2Adam/v/conv2d_4/bias
.:,2"Adam/m/batch_normalization_4/gamma
.:,2"Adam/v/batch_normalization_4/gamma
-:+2!Adam/m/batch_normalization_4/beta
-:+2!Adam/v/batch_normalization_4/beta
$:"	└2Adam/m/dense/kernel
$:"	└2Adam/v/dense/kernel
:2Adam/m/dense/bias
:2Adam/v/dense/bias
0
э0
ю1"
trackable_list_wrapper
.
ы	variables"
_generic_user_object
:  (2total
:  (2count
0
ё0
Є1"
trackable_list_wrapper
.
я	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper┴
__inference__wrapped_model_4226Э+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйк?в<
5в2
0К-
conv2d_input         АА
к "-к*
(
denseК
dense         ў
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5263гKLMNRвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ў
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_5281гKLMNRвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╤
4__inference_batch_normalization_1_layer_call_fn_5232ШKLMNRвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╤
4__inference_batch_normalization_1_layer_call_fn_5245ШKLMNRвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           Аї
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5355бefghQвN
GвD
:К7
inputs+                           @
p

 
к "FвC
<К9
tensor_0+                           @
Ъ ї
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_5373бefghQвN
GвD
:К7
inputs+                           @
p 

 
к "FвC
<К9
tensor_0+                           @
Ъ ╧
4__inference_batch_normalization_2_layer_call_fn_5324ЦefghQвN
GвD
:К7
inputs+                           @
p

 
к ";К8
unknown+                           @╧
4__inference_batch_normalization_2_layer_call_fn_5337ЦefghQвN
GвD
:К7
inputs+                           @
p 

 
к ";К8
unknown+                           @°
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5447дАБВQвN
GвD
:К7
inputs+                            
p

 
к "FвC
<К9
tensor_0+                            
Ъ °
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_5465дАБВQвN
GвD
:К7
inputs+                            
p 

 
к "FвC
<К9
tensor_0+                            
Ъ ╥
4__inference_batch_normalization_3_layer_call_fn_5416ЩАБВQвN
GвD
:К7
inputs+                            
p

 
к ";К8
unknown+                            ╥
4__inference_batch_normalization_3_layer_call_fn_5429ЩАБВQвN
GвD
:К7
inputs+                            
p 

 
к ";К8
unknown+                            ∙
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5539еЩЪЫЬQвN
GвD
:К7
inputs+                           
p

 
к "FвC
<К9
tensor_0+                           
Ъ ∙
O__inference_batch_normalization_4_layer_call_and_return_conditional_losses_5557еЩЪЫЬQвN
GвD
:К7
inputs+                           
p 

 
к "FвC
<К9
tensor_0+                           
Ъ ╙
4__inference_batch_normalization_4_layer_call_fn_5508ЪЩЪЫЬQвN
GвD
:К7
inputs+                           
p

 
к ";К8
unknown+                           ╙
4__inference_batch_normalization_4_layer_call_fn_5521ЪЩЪЫЬQвN
GвD
:К7
inputs+                           
p 

 
к ";К8
unknown+                           ї
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5171г1234RвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ї
M__inference_batch_normalization_layer_call_and_return_conditional_losses_5189г1234RвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╧
2__inference_batch_normalization_layer_call_fn_5140Ш1234RвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╧
2__inference_batch_normalization_layer_call_fn_5153Ш1234RвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А╗
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5209u;<8в5
.в+
)К&
inputs         ~~А
к "5в2
+К(
tensor_0         ||А
Ъ Х
'__inference_conv2d_1_layer_call_fn_5198j;<8в5
.в+
)К&
inputs         ~~А
к "*К'
unknown         ||А║
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5301tUV8в5
.в+
)К&
inputs         >>А
к "4в1
*К'
tensor_0         <<@
Ъ Ф
'__inference_conv2d_2_layer_call_fn_5290iUV8в5
.в+
)К&
inputs         >>А
к ")К&
unknown         <<@╣
B__inference_conv2d_3_layer_call_and_return_conditional_losses_5393sop7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0          
Ъ У
'__inference_conv2d_3_layer_call_fn_5382hop7в4
-в*
(К%
inputs         @
к ")К&
unknown          ╗
B__inference_conv2d_4_layer_call_and_return_conditional_losses_5485uЙК7в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0         
Ъ Х
'__inference_conv2d_4_layer_call_fn_5474jЙК7в4
-в*
(К%
inputs          
к ")К&
unknown         ╝
@__inference_conv2d_layer_call_and_return_conditional_losses_5117x!"9в6
/в,
*К'
inputs         АА
к "7в4
-К*
tensor_0         №№А
Ъ Ц
%__inference_conv2d_layer_call_fn_5106m!"9в6
/в,
*К'
inputs         АА
к ",К)
unknown         №№Ай
?__inference_dense_layer_call_and_return_conditional_losses_5588fйк0в-
&в#
!К
inputs         └
к ",в)
"К
tensor_0         
Ъ Г
$__inference_dense_layer_call_fn_5577[йк0в-
&в#
!К
inputs         └
к "!К
unknown         н
A__inference_flatten_layer_call_and_return_conditional_losses_5568h7в4
-в*
(К%
inputs         
к "-в*
#К 
tensor_0         └
Ъ З
&__inference_flatten_layer_call_fn_5562]7в4
-в*
(К%
inputs         
к ""К
unknown         └є
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5219еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_1_layer_call_fn_5214ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5311еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_2_layer_call_fn_5306ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_5403еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_3_layer_call_fn_5398ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_5495еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_4_layer_call_fn_5490ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ё
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5127еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╦
,__inference_max_pooling2d_layer_call_fn_5122ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    э
D__inference_sequential_layer_call_and_return_conditional_losses_4743д+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйкGвD
=в:
0К-
conv2d_input         АА
p

 
к ",в)
"К
tensor_0         
Ъ э
D__inference_sequential_layer_call_and_return_conditional_losses_4828д+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйкGвD
=в:
0К-
conv2d_input         АА
p 

 
к ",в)
"К
tensor_0         
Ъ ╟
)__inference_sequential_layer_call_fn_4897Щ+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйкGвD
=в:
0К-
conv2d_input         АА
p

 
к "!К
unknown         ╟
)__inference_sequential_layer_call_fn_4966Щ+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйкGвD
=в:
0К-
conv2d_input         АА
p 

 
к "!К
unknown         ╘
"__inference_signature_wrapper_5097н+!"1234;<KLMNUVefghopАБВЙКЩЪЫЬйкOвL
в 
EкB
@
conv2d_input0К-
conv2d_input         АА"-к*
(
denseК
dense         