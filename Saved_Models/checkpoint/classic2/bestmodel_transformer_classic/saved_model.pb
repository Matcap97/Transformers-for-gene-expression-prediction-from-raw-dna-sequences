аВ$
Аэ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
╝
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Г
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
Ї
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
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
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	љ
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.12v2.4.1-0-g85c8b2a817f8ёЅ 
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H@* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:H@*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:@*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:@@*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:@*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
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
к
5token_and_position_embedding_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75token_and_position_embedding_1/embedding_2/embeddings
┐
Itoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_2/embeddings*
_output_shapes

:@*
dtype0
╚
5token_and_position_embedding_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю@*F
shared_name75token_and_position_embedding_1/embedding_3/embeddings
┴
Itoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_3/embeddings* 
_output_shapes
:
аю@*
dtype0
╬
7transformer_block_3/multi_head_attention_3/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*H
shared_name97transformer_block_3/multi_head_attention_3/query/kernel
К
Ktransformer_block_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_3/multi_head_attention_3/query/kernel*"
_output_shapes
:@@*
dtype0
к
5transformer_block_3/multi_head_attention_3/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75transformer_block_3/multi_head_attention_3/query/bias
┐
Itransformer_block_3/multi_head_attention_3/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/query/bias*
_output_shapes

:@*
dtype0
╩
5transformer_block_3/multi_head_attention_3/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*F
shared_name75transformer_block_3/multi_head_attention_3/key/kernel
├
Itransformer_block_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/key/kernel*"
_output_shapes
:@@*
dtype0
┬
3transformer_block_3/multi_head_attention_3/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*D
shared_name53transformer_block_3/multi_head_attention_3/key/bias
╗
Gtransformer_block_3/multi_head_attention_3/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_3/multi_head_attention_3/key/bias*
_output_shapes

:@*
dtype0
╬
7transformer_block_3/multi_head_attention_3/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*H
shared_name97transformer_block_3/multi_head_attention_3/value/kernel
К
Ktransformer_block_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_3/multi_head_attention_3/value/kernel*"
_output_shapes
:@@*
dtype0
к
5transformer_block_3/multi_head_attention_3/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75transformer_block_3/multi_head_attention_3/value/bias
┐
Itransformer_block_3/multi_head_attention_3/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_3/multi_head_attention_3/value/bias*
_output_shapes

:@*
dtype0
С
Btransformer_block_3/multi_head_attention_3/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*S
shared_nameDBtransformer_block_3/multi_head_attention_3/attention_output/kernel
П
Vtransformer_block_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_3/multi_head_attention_3/attention_output/kernel*"
_output_shapes
:@@*
dtype0
п
@transformer_block_3/multi_head_attention_3/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*Q
shared_nameB@transformer_block_3/multi_head_attention_3/attention_output/bias
Л
Ttransformer_block_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_3/multi_head_attention_3/attention_output/bias*
_output_shapes
:@*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@@*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@@*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:@*
dtype0
Х
/transformer_block_3/layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/transformer_block_3/layer_normalization_6/gamma
»
Ctransformer_block_3/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_3/layer_normalization_6/gamma*
_output_shapes
:@*
dtype0
┤
.transformer_block_3/layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.transformer_block_3/layer_normalization_6/beta
Г
Btransformer_block_3/layer_normalization_6/beta/Read/ReadVariableOpReadVariableOp.transformer_block_3/layer_normalization_6/beta*
_output_shapes
:@*
dtype0
Х
/transformer_block_3/layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/transformer_block_3/layer_normalization_7/gamma
»
Ctransformer_block_3/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_3/layer_normalization_7/gamma*
_output_shapes
:@*
dtype0
┤
.transformer_block_3/layer_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.transformer_block_3/layer_normalization_7/beta
Г
Btransformer_block_3/layer_normalization_7/beta/Read/ReadVariableOpReadVariableOp.transformer_block_3/layer_normalization_7/beta*
_output_shapes
:@*
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
ѕ
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H@*'
shared_nameAdam/dense_11/kernel/m
Ђ
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:H@*
dtype0
ђ
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_12/kernel/m
Ђ
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:@@*
dtype0
ђ
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_13/kernel/m
Ђ
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:@*
dtype0
ђ
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0
н
<Adam/token_and_position_embedding_1/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/m
═
PAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/m*
_output_shapes

:@*
dtype0
о
<Adam/token_and_position_embedding_1/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю@*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/m
¤
PAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/m* 
_output_shapes
:
аю@*
dtype0
▄
>Adam/transformer_block_3/multi_head_attention_3/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_3/multi_head_attention_3/query/kernel/m
Н
RAdam/transformer_block_3/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_3/multi_head_attention_3/query/kernel/m*"
_output_shapes
:@@*
dtype0
н
<Adam/transformer_block_3/multi_head_attention_3/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/query/bias/m
═
PAdam/transformer_block_3/multi_head_attention_3/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/query/bias/m*
_output_shapes

:@*
dtype0
п
<Adam/transformer_block_3/multi_head_attention_3/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/key/kernel/m
Л
PAdam/transformer_block_3/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/key/kernel/m*"
_output_shapes
:@@*
dtype0
л
:Adam/transformer_block_3/multi_head_attention_3/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*K
shared_name<:Adam/transformer_block_3/multi_head_attention_3/key/bias/m
╔
NAdam/transformer_block_3/multi_head_attention_3/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_3/multi_head_attention_3/key/bias/m*
_output_shapes

:@*
dtype0
▄
>Adam/transformer_block_3/multi_head_attention_3/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_3/multi_head_attention_3/value/kernel/m
Н
RAdam/transformer_block_3/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_3/multi_head_attention_3/value/kernel/m*"
_output_shapes
:@@*
dtype0
н
<Adam/transformer_block_3/multi_head_attention_3/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/value/bias/m
═
PAdam/transformer_block_3/multi_head_attention_3/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/value/bias/m*
_output_shapes

:@*
dtype0
Ы
IAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*Z
shared_nameKIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/m
в
]Adam/transformer_block_3/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/m*"
_output_shapes
:@@*
dtype0
Т
GAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*X
shared_nameIGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/m
▀
[Adam/transformer_block_3/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/m*
_output_shapes
:@*
dtype0
є
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_10/kernel/m
Ђ
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:@@*
dtype0
ђ
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:@*
dtype0
─
6Adam/transformer_block_3/layer_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_3/layer_normalization_6/gamma/m
й
JAdam/transformer_block_3/layer_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_3/layer_normalization_6/gamma/m*
_output_shapes
:@*
dtype0
┬
5Adam/transformer_block_3/layer_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_3/layer_normalization_6/beta/m
╗
IAdam/transformer_block_3/layer_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_3/layer_normalization_6/beta/m*
_output_shapes
:@*
dtype0
─
6Adam/transformer_block_3/layer_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_3/layer_normalization_7/gamma/m
й
JAdam/transformer_block_3/layer_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_3/layer_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
┬
5Adam/transformer_block_3/layer_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_3/layer_normalization_7/beta/m
╗
IAdam/transformer_block_3/layer_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_3/layer_normalization_7/beta/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:H@*'
shared_nameAdam/dense_11/kernel/v
Ђ
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:H@*
dtype0
ђ
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_12/kernel/v
Ђ
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:@@*
dtype0
ђ
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_13/kernel/v
Ђ
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:@*
dtype0
ђ
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0
н
<Adam/token_and_position_embedding_1/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/v
═
PAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/v*
_output_shapes

:@*
dtype0
о
<Adam/token_and_position_embedding_1/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аю@*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/v
¤
PAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/v* 
_output_shapes
:
аю@*
dtype0
▄
>Adam/transformer_block_3/multi_head_attention_3/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_3/multi_head_attention_3/query/kernel/v
Н
RAdam/transformer_block_3/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_3/multi_head_attention_3/query/kernel/v*"
_output_shapes
:@@*
dtype0
н
<Adam/transformer_block_3/multi_head_attention_3/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/query/bias/v
═
PAdam/transformer_block_3/multi_head_attention_3/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/query/bias/v*
_output_shapes

:@*
dtype0
п
<Adam/transformer_block_3/multi_head_attention_3/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/key/kernel/v
Л
PAdam/transformer_block_3/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/key/kernel/v*"
_output_shapes
:@@*
dtype0
л
:Adam/transformer_block_3/multi_head_attention_3/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*K
shared_name<:Adam/transformer_block_3/multi_head_attention_3/key/bias/v
╔
NAdam/transformer_block_3/multi_head_attention_3/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_3/multi_head_attention_3/key/bias/v*
_output_shapes

:@*
dtype0
▄
>Adam/transformer_block_3/multi_head_attention_3/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_3/multi_head_attention_3/value/kernel/v
Н
RAdam/transformer_block_3/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_3/multi_head_attention_3/value/kernel/v*"
_output_shapes
:@@*
dtype0
н
<Adam/transformer_block_3/multi_head_attention_3/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_3/multi_head_attention_3/value/bias/v
═
PAdam/transformer_block_3/multi_head_attention_3/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_3/multi_head_attention_3/value/bias/v*
_output_shapes

:@*
dtype0
Ы
IAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*Z
shared_nameKIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/v
в
]Adam/transformer_block_3/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/v*"
_output_shapes
:@@*
dtype0
Т
GAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*X
shared_nameIGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/v
▀
[Adam/transformer_block_3/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/v*
_output_shapes
:@*
dtype0
є
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_10/kernel/v
Ђ
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:@@*
dtype0
ђ
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:@*
dtype0
─
6Adam/transformer_block_3/layer_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_3/layer_normalization_6/gamma/v
й
JAdam/transformer_block_3/layer_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_3/layer_normalization_6/gamma/v*
_output_shapes
:@*
dtype0
┬
5Adam/transformer_block_3/layer_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_3/layer_normalization_6/beta/v
╗
IAdam/transformer_block_3/layer_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_3/layer_normalization_6/beta/v*
_output_shapes
:@*
dtype0
─
6Adam/transformer_block_3/layer_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_3/layer_normalization_7/gamma/v
й
JAdam/transformer_block_3/layer_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_3/layer_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
┬
5Adam/transformer_block_3/layer_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_3/layer_normalization_7/beta/v
╗
IAdam/transformer_block_3/layer_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_3/layer_normalization_7/beta/v*
_output_shapes
:@*
dtype0

NoOpNoOp
╬а
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ѕа
value§ЪBщЪ BыЪ
Љ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
n
	token_emb
pos_emb
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
а
att
ffn

layernorm1
 
layernorm2
!dropout1
"dropout2
#	variables
$regularization_losses
%trainable_variables
&	keras_api
R
'	variables
(regularization_losses
)trainable_variables
*	keras_api
 
R
+	variables
,regularization_losses
-trainable_variables
.	keras_api
h

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
h

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
R
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
h

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
а

Ibeta_1

Jbeta_2
	Kdecay
Llearning_rate
Miter/mЙ0m┐9m└:m┴Cm┬Dm├Nm─Om┼PmкQmКRm╚Sm╔Tm╩Um╦Vm╠Wm═Xm╬Ym¤Zmл[mЛ\mм]mМ^mн_mН/vо0vО9vп:v┘Cv┌Dv█Nv▄OvПPvяQv▀RvЯSvрTvРUvсVvСWvтXvТYvуZvУ[vж\vЖ]vв^vВ_vь
Х
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
/18
019
920
:21
C22
D23
 
Х
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
/18
019
920
:21
C22
D23
Г
`layer_regularization_losses

alayers
	variables
regularization_losses
blayer_metrics
cmetrics
trainable_variables
dnon_trainable_variables
 
b
N
embeddings
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
b
O
embeddings
i	variables
jregularization_losses
ktrainable_variables
l	keras_api

N0
O1
 

N0
O1
Г
mlayer_regularization_losses

nlayers
	variables
regularization_losses
olayer_metrics
pmetrics
trainable_variables
qnon_trainable_variables
 
 
 
Г
rlayer_regularization_losses

slayers
	variables
regularization_losses
tlayer_metrics
umetrics
trainable_variables
vnon_trainable_variables
╝
w_query_dense
x
_key_dense
y_value_dense
z_softmax
{_dropout_layer
|_output_dense
}	variables
~regularization_losses
trainable_variables
ђ	keras_api
е
Ђlayer_with_weights-0
Ђlayer-0
ѓlayer_with_weights-1
ѓlayer-1
Ѓ	variables
ёregularization_losses
Ёtrainable_variables
є	keras_api
v
	Єaxis
	\gamma
]beta
ѕ	variables
Ѕregularization_losses
іtrainable_variables
І	keras_api
v
	їaxis
	^gamma
_beta
Ї	variables
јregularization_losses
Јtrainable_variables
љ	keras_api
V
Љ	variables
њregularization_losses
Њtrainable_variables
ћ	keras_api
V
Ћ	variables
ќregularization_losses
Ќtrainable_variables
ў	keras_api
v
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
\12
]13
^14
_15
 
v
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
\12
]13
^14
_15
▓
 Ўlayer_regularization_losses
џlayers
#	variables
$regularization_losses
Џlayer_metrics
юmetrics
%trainable_variables
Юnon_trainable_variables
 
 
 
▓
 ъlayer_regularization_losses
Ъlayers
'	variables
(regularization_losses
аlayer_metrics
Аmetrics
)trainable_variables
бnon_trainable_variables
 
 
 
▓
 Бlayer_regularization_losses
цlayers
+	variables
,regularization_losses
Цlayer_metrics
дmetrics
-trainable_variables
Дnon_trainable_variables
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
▓
 еlayer_regularization_losses
Еlayers
1	variables
2regularization_losses
фlayer_metrics
Фmetrics
3trainable_variables
гnon_trainable_variables
 
 
 
▓
 Гlayer_regularization_losses
«layers
5	variables
6regularization_losses
»layer_metrics
░metrics
7trainable_variables
▒non_trainable_variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
▓
 ▓layer_regularization_losses
│layers
;	variables
<regularization_losses
┤layer_metrics
хmetrics
=trainable_variables
Хnon_trainable_variables
 
 
 
▓
 иlayer_regularization_losses
Иlayers
?	variables
@regularization_losses
╣layer_metrics
║metrics
Atrainable_variables
╗non_trainable_variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 

C0
D1
▓
 ╝layer_regularization_losses
йlayers
E	variables
Fregularization_losses
Йlayer_metrics
┐metrics
Gtrainable_variables
└non_trainable_variables
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_3/multi_head_attention_3/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block_3/multi_head_attention_3/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_3/multi_head_attention_3/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_3/multi_head_attention_3/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEBtransformer_block_3/multi_head_attention_3/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@transformer_block_3/multi_head_attention_3/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_9/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_9/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_10/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_10/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_3/layer_normalization_6/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_3/layer_normalization_6/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_3/layer_normalization_7/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_3/layer_normalization_7/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
V
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
 

┴0
 

N0
 

N0
▓
 ┬layer_regularization_losses
├layers
e	variables
fregularization_losses
─layer_metrics
┼metrics
gtrainable_variables
кnon_trainable_variables

O0
 

O0
▓
 Кlayer_regularization_losses
╚layers
i	variables
jregularization_losses
╔layer_metrics
╩metrics
ktrainable_variables
╦non_trainable_variables
 

0
1
 
 
 
 
 
 
 
 
Ъ
╠partial_output_shape
═full_output_shape

Pkernel
Qbias
╬	variables
¤regularization_losses
лtrainable_variables
Л	keras_api
Ъ
мpartial_output_shape
Мfull_output_shape

Rkernel
Sbias
н	variables
Нregularization_losses
оtrainable_variables
О	keras_api
Ъ
пpartial_output_shape
┘full_output_shape

Tkernel
Ubias
┌	variables
█regularization_losses
▄trainable_variables
П	keras_api
V
я	variables
▀regularization_losses
Яtrainable_variables
р	keras_api
V
Р	variables
сregularization_losses
Сtrainable_variables
т	keras_api
Ъ
Тpartial_output_shape
уfull_output_shape

Vkernel
Wbias
У	variables
жregularization_losses
Жtrainable_variables
в	keras_api
8
P0
Q1
R2
S3
T4
U5
V6
W7
 
8
P0
Q1
R2
S3
T4
U5
V6
W7
▓
 Вlayer_regularization_losses
ьlayers
}	variables
~regularization_losses
Ьlayer_metrics
№metrics
trainable_variables
­non_trainable_variables
l

Xkernel
Ybias
ы	variables
Ыregularization_losses
зtrainable_variables
З	keras_api
l

Zkernel
[bias
ш	variables
Шregularization_losses
эtrainable_variables
Э	keras_api

X0
Y1
Z2
[3
 

X0
Y1
Z2
[3
х
 щlayer_regularization_losses
Щlayers
Ѓ	variables
ёregularization_losses
чlayer_metrics
Чmetrics
Ёtrainable_variables
§non_trainable_variables
 

\0
]1
 

\0
]1
х
 ■layer_regularization_losses
 layers
ѕ	variables
Ѕregularization_losses
ђlayer_metrics
Ђmetrics
іtrainable_variables
ѓnon_trainable_variables
 

^0
_1
 

^0
_1
х
 Ѓlayer_regularization_losses
ёlayers
Ї	variables
јregularization_losses
Ёlayer_metrics
єmetrics
Јtrainable_variables
Єnon_trainable_variables
 
 
 
х
 ѕlayer_regularization_losses
Ѕlayers
Љ	variables
њregularization_losses
іlayer_metrics
Іmetrics
Њtrainable_variables
їnon_trainable_variables
 
 
 
х
 Їlayer_regularization_losses
јlayers
Ћ	variables
ќregularization_losses
Јlayer_metrics
љmetrics
Ќtrainable_variables
Љnon_trainable_variables
 
*
0
1
2
 3
!4
"5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

њtotal

Њcount
ћ	variables
Ћ	keras_api
 
 
 
 
 
 
 
 
 
 
 
 

P0
Q1
 

P0
Q1
х
 ќlayer_regularization_losses
Ќlayers
╬	variables
¤regularization_losses
ўlayer_metrics
Ўmetrics
лtrainable_variables
џnon_trainable_variables
 
 

R0
S1
 

R0
S1
х
 Џlayer_regularization_losses
юlayers
н	variables
Нregularization_losses
Юlayer_metrics
ъmetrics
оtrainable_variables
Ъnon_trainable_variables
 
 

T0
U1
 

T0
U1
х
 аlayer_regularization_losses
Аlayers
┌	variables
█regularization_losses
бlayer_metrics
Бmetrics
▄trainable_variables
цnon_trainable_variables
 
 
 
х
 Цlayer_regularization_losses
дlayers
я	variables
▀regularization_losses
Дlayer_metrics
еmetrics
Яtrainable_variables
Еnon_trainable_variables
 
 
 
х
 фlayer_regularization_losses
Фlayers
Р	variables
сregularization_losses
гlayer_metrics
Гmetrics
Сtrainable_variables
«non_trainable_variables
 
 

V0
W1
 

V0
W1
х
 »layer_regularization_losses
░layers
У	variables
жregularization_losses
▒layer_metrics
▓metrics
Жtrainable_variables
│non_trainable_variables
 
*
w0
x1
y2
z3
{4
|5
 
 
 

X0
Y1
 

X0
Y1
х
 ┤layer_regularization_losses
хlayers
ы	variables
Ыregularization_losses
Хlayer_metrics
иmetrics
зtrainable_variables
Иnon_trainable_variables

Z0
[1
 

Z0
[1
х
 ╣layer_regularization_losses
║layers
ш	variables
Шregularization_losses
╗layer_metrics
╝metrics
эtrainable_variables
йnon_trainable_variables
 

Ђ0
ѓ1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

њ0
Њ1

ћ	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ќћ
VARIABLE_VALUE>Adam/transformer_block_3/multi_head_attention_3/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Њљ
VARIABLE_VALUE:Adam/transformer_block_3/multi_head_attention_3/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ќћ
VARIABLE_VALUE>Adam/transformer_block_3/multi_head_attention_3/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
бЪ
VARIABLE_VALUEIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
аЮ
VARIABLE_VALUEGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_9/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_9/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_10/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_10/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
љЇ
VARIABLE_VALUE6Adam/transformer_block_3/layer_normalization_6/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE5Adam/transformer_block_3/layer_normalization_6/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
љЇ
VARIABLE_VALUE6Adam/transformer_block_3/layer_normalization_7/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE5Adam/transformer_block_3/layer_normalization_7/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ќћ
VARIABLE_VALUE>Adam/transformer_block_3/multi_head_attention_3/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Њљ
VARIABLE_VALUE:Adam/transformer_block_3/multi_head_attention_3/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ќћ
VARIABLE_VALUE>Adam/transformer_block_3/multi_head_attention_3/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ћњ
VARIABLE_VALUE<Adam/transformer_block_3/multi_head_attention_3/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
бЪ
VARIABLE_VALUEIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
аЮ
VARIABLE_VALUEGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_9/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_9/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_10/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_10/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
љЇ
VARIABLE_VALUE6Adam/transformer_block_3/layer_normalization_6/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE5Adam/transformer_block_3/layer_normalization_6/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
љЇ
VARIABLE_VALUE6Adam/transformer_block_3/layer_normalization_7/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE5Adam/transformer_block_3/layer_normalization_7/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_input_3Placeholder*)
_output_shapes
:         аю*
dtype0*
shape:         аю
z
serving_default_input_4Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
Ъ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3serving_default_input_45token_and_position_embedding_1/embedding_3/embeddings5token_and_position_embedding_1/embedding_2/embeddings7transformer_block_3/multi_head_attention_3/query/kernel5transformer_block_3/multi_head_attention_3/query/bias5transformer_block_3/multi_head_attention_3/key/kernel3transformer_block_3/multi_head_attention_3/key/bias7transformer_block_3/multi_head_attention_3/value/kernel5transformer_block_3/multi_head_attention_3/value/biasBtransformer_block_3/multi_head_attention_3/attention_output/kernel@transformer_block_3/multi_head_attention_3/attention_output/bias/transformer_block_3/layer_normalization_6/gamma.transformer_block_3/layer_normalization_6/betadense_9/kerneldense_9/biasdense_10/kerneldense_10/bias/transformer_block_3/layer_normalization_7/gamma.transformer_block_3/layer_normalization_7/betadense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_193050
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ѕ(
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpKtransformer_block_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/query/bias/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpGtransformer_block_3/multi_head_attention_3/key/bias/Read/ReadVariableOpKtransformer_block_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpItransformer_block_3/multi_head_attention_3/value/bias/Read/ReadVariableOpVtransformer_block_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpTtransformer_block_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpCtransformer_block_3/layer_normalization_6/gamma/Read/ReadVariableOpBtransformer_block_3/layer_normalization_6/beta/Read/ReadVariableOpCtransformer_block_3/layer_normalization_7/gamma/Read/ReadVariableOpBtransformer_block_3/layer_normalization_7/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_3/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_3/multi_head_attention_3/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_3/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_3/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_3/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOpJAdam/transformer_block_3/layer_normalization_6/gamma/m/Read/ReadVariableOpIAdam/transformer_block_3/layer_normalization_6/beta/m/Read/ReadVariableOpJAdam/transformer_block_3/layer_normalization_7/gamma/m/Read/ReadVariableOpIAdam/transformer_block_3/layer_normalization_7/beta/m/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_3/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_3/multi_head_attention_3/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_3/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_3/multi_head_attention_3/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_3/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_3/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOpJAdam/transformer_block_3/layer_normalization_6/gamma/v/Read/ReadVariableOpIAdam/transformer_block_3/layer_normalization_6/beta/v/Read/ReadVariableOpJAdam/transformer_block_3/layer_normalization_7/gamma/v/Read/ReadVariableOpIAdam/transformer_block_3/layer_normalization_7/beta/v/Read/ReadVariableOpConst*\
TinU
S2Q	*
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
GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_194559
О
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_11/kerneldense_11/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasbeta_1beta_2decaylearning_rate	Adam/iter5token_and_position_embedding_1/embedding_2/embeddings5token_and_position_embedding_1/embedding_3/embeddings7transformer_block_3/multi_head_attention_3/query/kernel5transformer_block_3/multi_head_attention_3/query/bias5transformer_block_3/multi_head_attention_3/key/kernel3transformer_block_3/multi_head_attention_3/key/bias7transformer_block_3/multi_head_attention_3/value/kernel5transformer_block_3/multi_head_attention_3/value/biasBtransformer_block_3/multi_head_attention_3/attention_output/kernel@transformer_block_3/multi_head_attention_3/attention_output/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/bias/transformer_block_3/layer_normalization_6/gamma.transformer_block_3/layer_normalization_6/beta/transformer_block_3/layer_normalization_7/gamma.transformer_block_3/layer_normalization_7/betatotalcountAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/m<Adam/token_and_position_embedding_1/embedding_2/embeddings/m<Adam/token_and_position_embedding_1/embedding_3/embeddings/m>Adam/transformer_block_3/multi_head_attention_3/query/kernel/m<Adam/transformer_block_3/multi_head_attention_3/query/bias/m<Adam/transformer_block_3/multi_head_attention_3/key/kernel/m:Adam/transformer_block_3/multi_head_attention_3/key/bias/m>Adam/transformer_block_3/multi_head_attention_3/value/kernel/m<Adam/transformer_block_3/multi_head_attention_3/value/bias/mIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/mGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/m6Adam/transformer_block_3/layer_normalization_6/gamma/m5Adam/transformer_block_3/layer_normalization_6/beta/m6Adam/transformer_block_3/layer_normalization_7/gamma/m5Adam/transformer_block_3/layer_normalization_7/beta/mAdam/dense_11/kernel/vAdam/dense_11/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v<Adam/token_and_position_embedding_1/embedding_2/embeddings/v<Adam/token_and_position_embedding_1/embedding_3/embeddings/v>Adam/transformer_block_3/multi_head_attention_3/query/kernel/v<Adam/transformer_block_3/multi_head_attention_3/query/bias/v<Adam/transformer_block_3/multi_head_attention_3/key/kernel/v:Adam/transformer_block_3/multi_head_attention_3/key/bias/v>Adam/transformer_block_3/multi_head_attention_3/value/kernel/v<Adam/transformer_block_3/multi_head_attention_3/value/bias/vIAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/vGAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/v6Adam/transformer_block_3/layer_normalization_6/gamma/v5Adam/transformer_block_3/layer_normalization_6/beta/v6Adam/transformer_block_3/layer_normalization_7/gamma/v5Adam/transformer_block_3/layer_normalization_7/beta/v*[
TinT
R2P*
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
GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_194806г╩
ј
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_192586

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape└
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▀
~
)__inference_dense_12_layer_call_fn_194033

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1926152
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
њ
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_192086

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Л
Д
-__inference_sequential_3_layer_call_fn_192043
dense_9_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1920322
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:         У@
'
_user_specified_namedense_9_input
Ў
G
+__inference_dropout_11_layer_call_fn_194060

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926482
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
сФ
В,
__inference__traced_save_194559
file_prefix.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	T
Psavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopV
Rsavev2_transformer_block_3_multi_head_attention_3_query_kernel_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_query_bias_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_key_kernel_read_readvariableopR
Nsavev2_transformer_block_3_multi_head_attention_3_key_bias_read_readvariableopV
Rsavev2_transformer_block_3_multi_head_attention_3_value_kernel_read_readvariableopT
Psavev2_transformer_block_3_multi_head_attention_3_value_bias_read_readvariableopa
]savev2_transformer_block_3_multi_head_attention_3_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_3_multi_head_attention_3_attention_output_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableopN
Jsavev2_transformer_block_3_layer_normalization_6_gamma_read_readvariableopM
Isavev2_transformer_block_3_layer_normalization_6_beta_read_readvariableopN
Jsavev2_transformer_block_3_layer_normalization_7_gamma_read_readvariableopM
Isavev2_transformer_block_3_layer_normalization_7_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_3_multi_head_attention_3_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_3_multi_head_attention_3_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_3_multi_head_attention_3_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_3_layer_normalization_6_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_3_layer_normalization_6_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_3_layer_normalization_7_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_3_layer_normalization_7_beta_m_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_3_multi_head_attention_3_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_3_multi_head_attention_3_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_3_multi_head_attention_3_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_3_multi_head_attention_3_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_3_layer_normalization_6_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_3_layer_normalization_6_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_3_layer_normalization_7_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_3_layer_normalization_7_beta_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameў'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*ф&
valueа&BЮ&PB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesФ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*х
valueФBеPB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices═+
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopRsavev2_transformer_block_3_multi_head_attention_3_query_kernel_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_query_bias_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_key_kernel_read_readvariableopNsavev2_transformer_block_3_multi_head_attention_3_key_bias_read_readvariableopRsavev2_transformer_block_3_multi_head_attention_3_value_kernel_read_readvariableopPsavev2_transformer_block_3_multi_head_attention_3_value_bias_read_readvariableop]savev2_transformer_block_3_multi_head_attention_3_attention_output_kernel_read_readvariableop[savev2_transformer_block_3_multi_head_attention_3_attention_output_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableopJsavev2_transformer_block_3_layer_normalization_6_gamma_read_readvariableopIsavev2_transformer_block_3_layer_normalization_6_beta_read_readvariableopJsavev2_transformer_block_3_layer_normalization_7_gamma_read_readvariableopIsavev2_transformer_block_3_layer_normalization_7_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_3_multi_head_attention_3_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_3_multi_head_attention_3_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_3_multi_head_attention_3_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableopQsavev2_adam_transformer_block_3_layer_normalization_6_gamma_m_read_readvariableopPsavev2_adam_transformer_block_3_layer_normalization_6_beta_m_read_readvariableopQsavev2_adam_transformer_block_3_layer_normalization_7_gamma_m_read_readvariableopPsavev2_adam_transformer_block_3_layer_normalization_7_beta_m_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_3_multi_head_attention_3_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_3_multi_head_attention_3_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_3_multi_head_attention_3_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_3_multi_head_attention_3_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableopQsavev2_adam_transformer_block_3_layer_normalization_6_gamma_v_read_readvariableopPsavev2_adam_transformer_block_3_layer_normalization_6_beta_v_read_readvariableopQsavev2_adam_transformer_block_3_layer_normalization_7_gamma_v_read_readvariableopPsavev2_adam_transformer_block_3_layer_normalization_7_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *^
dtypesT
R2P	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*х
_input_shapesБ
а: :H@:@:@@:@:@:: : : : : :@:
аю@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:@:@:@: : :H@:@:@@:@:@::@:
аю@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:@:@:@:H@:@:@@:@:@::@:
аю@:@@:@:@@:@:@@:@:@@:@:@@:@:@@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:H@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@:&"
 
_output_shapes
:
аю@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :$  

_output_shapes

:H@: !

_output_shapes
:@:$" 

_output_shapes

:@@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::$& 

_output_shapes

:@:&'"
 
_output_shapes
:
аю@:(($
"
_output_shapes
:@@:$) 

_output_shapes

:@:(*$
"
_output_shapes
:@@:$+ 

_output_shapes

:@:(,$
"
_output_shapes
:@@:$- 

_output_shapes

:@:(.$
"
_output_shapes
:@@: /

_output_shapes
:@:$0 

_output_shapes

:@@: 1

_output_shapes
:@:$2 

_output_shapes

:@@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:$8 

_output_shapes

:H@: 9

_output_shapes
:@:$: 

_output_shapes

:@@: ;

_output_shapes
:@:$< 

_output_shapes

:@: =

_output_shapes
::$> 

_output_shapes

:@:&?"
 
_output_shapes
:
аю@:(@$
"
_output_shapes
:@@:$A 

_output_shapes

:@:(B$
"
_output_shapes
:@@:$C 

_output_shapes

:@:(D$
"
_output_shapes
:@@:$E 

_output_shapes

:@:(F$
"
_output_shapes
:@@: G

_output_shapes
:@:$H 

_output_shapes

:@@: I

_output_shapes
:@:$J 

_output_shapes

:@@: K

_output_shapes
:@: L

_output_shapes
:@: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:P

_output_shapes
: 
ј
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_192643

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape└
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┘з
└
C__inference_model_1_layer_call_and_return_conditional_losses_193441
inputs_0
inputs_1F
Btoken_and_position_embedding_1_embedding_3_embedding_lookup_193275F
Btoken_and_position_embedding_1_embedding_2_embedding_lookup_193281Z
Vtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_query_add_readvariableop_resourceX
Ttransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceZ
Vtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcee
atransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resourceS
Otransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceN
Jtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceO
Ktransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceM
Itransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resourceS
Otransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identityѕбdense_11/BiasAdd/ReadVariableOpбdense_11/MatMul/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpб;token_and_position_embedding_1/embedding_2/embedding_lookupб;token_and_position_embedding_1/embedding_3/embedding_lookupбBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpбFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpбBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpбFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpбNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpбXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpбAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpбKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpбCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpбMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpбCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpбMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpбBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpб?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpбAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpё
$token_and_position_embedding_1/ShapeShapeinputs_0*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/Shape╗
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         24
2token_and_position_embedding_1/strided_slice/stackХ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1Х
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2ю
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_sliceџ
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/startџ
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/deltaЏ
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:         2&
$token_and_position_embedding_1/range╩
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_3_embedding_lookup_193275-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/193275*'
_output_shapes
:         @*
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookupЋ
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/193275*'
_output_shapes
:         @2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityЮ
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         @2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1и
/token_and_position_embedding_1/embedding_2/CastCastinputs_0*

DstT0*

SrcT0*)
_output_shapes
:         аю21
/token_and_position_embedding_1/embedding_2/Castо
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_2_embedding_lookup_1932813token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/193281*-
_output_shapes
:         аю@*
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookupЏ
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/193281*-
_output_shapes
:         аю@2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityБ
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         аю@2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1Ф
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:         аю@2$
"token_and_position_embedding_1/addі
"average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_1/ExpandDims/dim▀
average_pooling1d_1/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0+average_pooling1d_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         аю@2 
average_pooling1d_1/ExpandDimsт
average_pooling1d_1/AvgPoolAvgPool'average_pooling1d_1/ExpandDims:output:0*
T0*0
_output_shapes
:         У@*
ksize
*
paddingVALID*
strides
2
average_pooling1d_1/AvgPool╣
average_pooling1d_1/SqueezeSqueeze$average_pooling1d_1/AvgPool:output:0*
T0*,
_output_shapes
:         У@*
squeeze_dims
2
average_pooling1d_1/Squeeze╣
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpУ
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Utransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumЌ
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpк
4transformer_block_3/multi_head_attention_3/query/addAddV2Gtransformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@26
4transformer_block_3/multi_head_attention_3/query/add│
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02M
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpР
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Stransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2>
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumЉ
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpJtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02C
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpЙ
2transformer_block_3/multi_head_attention_3/key/addAddV2Etransformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Itransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@24
2transformer_block_3/multi_head_attention_3/key/add╣
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpУ
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Utransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumЌ
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpк
4transformer_block_3/multi_head_attention_3/value/addAddV2Gtransformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@26
4transformer_block_3/multi_head_attention_3/value/addЕ
0transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >22
0transformer_block_3/multi_head_attention_3/Mul/yЌ
.transformer_block_3/multi_head_attention_3/MulMul8transformer_block_3/multi_head_attention_3/query/add:z:09transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@20
.transformer_block_3/multi_head_attention_3/Mul╬
8transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum6transformer_block_3/multi_head_attention_3/key/add:z:02transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2:
8transformer_block_3/multi_head_attention_3/einsum/Einsumѓ
:transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxAtransformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2<
:transformer_block_3/multi_head_attention_3/softmax/Softmaxѕ
;transformer_block_3/multi_head_attention_3/dropout/IdentityIdentityDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:         УУ2=
;transformer_block_3/multi_head_attention_3/dropout/Identityт
:transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumDtransformer_block_3/multi_head_attention_3/dropout/Identity:output:08transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2<
:transformer_block_3/multi_head_attention_3/einsum_1/Einsum┌
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Z
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpц
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumCtransformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0`transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe2K
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum┤
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02P
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpЬ
?transformer_block_3/multi_head_attention_3/attention_output/addAddV2Rtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Vtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2A
?transformer_block_3/multi_head_attention_3/attention_output/addп
&transformer_block_3/dropout_8/IdentityIdentityCtransformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*,
_output_shapes
:         У@2(
&transformer_block_3/dropout_8/Identity╔
transformer_block_3/addAddV2$average_pooling1d_1/Squeeze:output:0/transformer_block_3/dropout_8/Identity:output:0*
T0*,
_output_shapes
:         У@2
transformer_block_3/addя
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indices░
6transformer_block_3/layer_normalization_6/moments/meanMeantransformer_block_3/add:z:0Qtransformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(28
6transformer_block_3/layer_normalization_6/moments/meanѕ
>transformer_block_3/layer_normalization_6/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2@
>transformer_block_3/layer_normalization_6/moments/StopGradient╝
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add:z:0Gtransformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2E
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceТ
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesУ
:transformer_block_3/layer_normalization_6/moments/varianceMeanGtransformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2<
:transformer_block_3/layer_normalization_6/moments/variance╗
9transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52;
9transformer_block_3/layer_normalization_6/batchnorm/add/y╗
7transformer_block_3/layer_normalization_6/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_6/moments/variance:output:0Btransformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У29
7transformer_block_3/layer_normalization_6/batchnorm/addз
9transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2;
9transformer_block_3/layer_normalization_6/batchnorm/Rsqrtю
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp┐
7transformer_block_3/layer_normalization_6/batchnorm/mulMul=transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_6/batchnorm/mulј
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Multransformer_block_3/add:z:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_1▓
9transformer_block_3/layer_normalization_6/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_6/moments/mean:output:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_2љ
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp╗
7transformer_block_3/layer_normalization_6/batchnorm/subSubJtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_6/batchnorm/sub▓
9transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/add_1Љ
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02C
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp╝
7transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_3/sequential_3/dense_9/Tensordot/axes├
7transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_3/sequential_3/dense_9/Tensordot/freeр
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShape=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/Shapeк
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisъ
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2╩
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisц
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Ktransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1Й
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_3/sequential_3/dense_9/Tensordot/Constц
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdDtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Atransformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_3/sequential_3/dense_9/Tensordot/Prod┬
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1г
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdFtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1┬
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis§
9transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Gtransformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_9/Tensordot/concat░
8transformer_block_3/sequential_3/dense_9/Tensordot/stackPack@transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Btransformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/stack├
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose	Transpose=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Btransformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2>
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose├
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshape@transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Atransformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Reshape┬
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulCtransformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2;
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMul┬
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2к
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisі
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1х
2transformer_block_3/sequential_3/dense_9/TensordotReshapeCtransformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Dtransformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@24
2transformer_block_3/sequential_3/dense_9/TensordotЄ
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpг
0transformer_block_3/sequential_3/dense_9/BiasAddBiasAdd;transformer_block_3/sequential_3/dense_9/Tensordot:output:0Gtransformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@22
0transformer_block_3/sequential_3/dense_9/BiasAddп
-transformer_block_3/sequential_3/dense_9/ReluRelu9transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2/
-transformer_block_3/sequential_3/dense_9/Reluћ
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02D
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЙ
8transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_3/sequential_3/dense_10/Tensordot/axes┼
8transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_3/sequential_3/dense_10/Tensordot/freeр
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShape;transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/Shape╚
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisБ
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2╠
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisЕ
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Ltransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1└
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_3/sequential_3/dense_10/Tensordot/Constе
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdEtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Btransformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_3/sequential_3/dense_10/Tensordot/Prod─
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1░
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdGtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1─
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisѓ
:transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Htransformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_3/sequential_3/dense_10/Tensordot/concat┤
9transformer_block_3/sequential_3/dense_10/Tensordot/stackPackAtransformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/stack─
=transformer_block_3/sequential_3/dense_10/Tensordot/transpose	Transpose;transformer_block_3/sequential_3/dense_9/Relu:activations:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2?
=transformer_block_3/sequential_3/dense_10/Tensordot/transposeК
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeAtransformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Btransformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Reshapeк
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulDtransformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2<
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMul─
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2╚
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisЈ
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Etransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1╣
3transformer_block_3/sequential_3/dense_10/TensordotReshapeDtransformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Etransformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@25
3transformer_block_3/sequential_3/dense_10/Tensordotі
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp░
1transformer_block_3/sequential_3/dense_10/BiasAddBiasAdd<transformer_block_3/sequential_3/dense_10/Tensordot:output:0Htransformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@23
1transformer_block_3/sequential_3/dense_10/BiasAdd¤
&transformer_block_3/dropout_9/IdentityIdentity:transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2(
&transformer_block_3/dropout_9/IdentityТ
transformer_block_3/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0/transformer_block_3/dropout_9/Identity:output:0*
T0*,
_output_shapes
:         У@2
transformer_block_3/add_1я
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indices▓
6transformer_block_3/layer_normalization_7/moments/meanMeantransformer_block_3/add_1:z:0Qtransformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(28
6transformer_block_3/layer_normalization_7/moments/meanѕ
>transformer_block_3/layer_normalization_7/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2@
>transformer_block_3/layer_normalization_7/moments/StopGradientЙ
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add_1:z:0Gtransformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2E
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceТ
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesУ
:transformer_block_3/layer_normalization_7/moments/varianceMeanGtransformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2<
:transformer_block_3/layer_normalization_7/moments/variance╗
9transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52;
9transformer_block_3/layer_normalization_7/batchnorm/add/y╗
7transformer_block_3/layer_normalization_7/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_7/moments/variance:output:0Btransformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У29
7transformer_block_3/layer_normalization_7/batchnorm/addз
9transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2;
9transformer_block_3/layer_normalization_7/batchnorm/Rsqrtю
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp┐
7transformer_block_3/layer_normalization_7/batchnorm/mulMul=transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_7/batchnorm/mulљ
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Multransformer_block_3/add_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_1▓
9transformer_block_3/layer_normalization_7/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_7/moments/mean:output:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_2љ
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp╗
7transformer_block_3/layer_normalization_7/batchnorm/subSubJtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_7/batchnorm/sub▓
9transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/add_1е
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_1/Mean/reduction_indicesэ
global_average_pooling1d_1/MeanMean=transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         @2!
global_average_pooling1d_1/Meanx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis╦
concatenate_1/concatConcatV2(global_average_pooling1d_1/Mean:output:0inputs_1"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:         H2
concatenate_1/concatе
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:H@*
dtype02 
dense_11/MatMul/ReadVariableOpЦ
dense_11/MatMulMatMulconcatenate_1/concat:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_11/MatMulД
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_11/BiasAdd/ReadVariableOpЦ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_11/ReluЁ
dropout_10/IdentityIdentitydense_11/Relu:activations:0*
T0*'
_output_shapes
:         @2
dropout_10/Identityе
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpц
dense_12/MatMulMatMuldropout_10/Identity:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/MatMulД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЦ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_12/ReluЁ
dropout_11/IdentityIdentitydense_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
dropout_11/Identityе
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldropout_11/Identity:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_13/MatMulД
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЦ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_13/BiasAddк
IdentityIdentitydense_13/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpC^transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpO^transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpY^transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpL^transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpA^transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpC^transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp@^transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpB^transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2ѕ
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2љ
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2ѕ
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2љ
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2а
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2┤
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2є
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2џ
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2і
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2ъ
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2і
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2ъ
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2ё
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2ѕ
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2ѓ
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2є
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:S O
)
_output_shapes
:         аю
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Ц
d
+__inference_dropout_10_layer_call_fn_194008

inputs
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925862
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
и 
Р
C__inference_dense_9_layer_call_and_return_conditional_losses_191938

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisЛ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisО
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Constђ
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1ѕ
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         У@2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
Я6
ћ
C__inference_model_1_layer_call_and_return_conditional_losses_192751
input_3
input_4)
%token_and_position_embedding_1_192692)
%token_and_position_embedding_1_192694
transformer_block_3_192698
transformer_block_3_192700
transformer_block_3_192702
transformer_block_3_192704
transformer_block_3_192706
transformer_block_3_192708
transformer_block_3_192710
transformer_block_3_192712
transformer_block_3_192714
transformer_block_3_192716
transformer_block_3_192718
transformer_block_3_192720
transformer_block_3_192722
transformer_block_3_192724
transformer_block_3_192726
transformer_block_3_192728
dense_11_192733
dense_11_192735
dense_12_192739
dense_12_192741
dense_13_192745
dense_13_192747
identityѕб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб6token_and_position_embedding_1/StatefulPartitionedCallб+transformer_block_3/StatefulPartitionedCallї
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_3%token_and_position_embedding_1_192692%token_and_position_embedding_1_192694*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         аю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19211828
6token_and_position_embedding_1/StatefulPartitionedCallХ
#average_pooling1d_1/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_1918972%
#average_pooling1d_1/PartitionedCallЮ
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0transformer_block_3_192698transformer_block_3_192700transformer_block_3_192702transformer_block_3_192704transformer_block_3_192706transformer_block_3_192708transformer_block_3_192710transformer_block_3_192712transformer_block_3_192714transformer_block_3_192716transformer_block_3_192718transformer_block_3_192720transformer_block_3_192722transformer_block_3_192724transformer_block_3_192726transformer_block_3_192728*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1924102-
+transformer_block_3/StatefulPartitionedCall╗
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1925242,
*global_average_pooling1d_1/PartitionedCallЮ
concatenate_1/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0input_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1925382
concatenate_1/PartitionedCallи
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_192733dense_11_192735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1925582"
 dense_11/StatefulPartitionedCallђ
dropout_10/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925912
dropout_10/PartitionedCall┤
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_12_192739dense_12_192741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1926152"
 dense_12/StatefulPartitionedCallђ
dropout_11/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926482
dropout_11/PartitionedCall┤
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_13_192745dense_13_192747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_1926712"
 dense_13/StatefulPartitionedCall═
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
Р
■
H__inference_sequential_3_layer_call_and_return_conditional_losses_192032

inputs
dense_9_192021
dense_9_192023
dense_10_192026
dense_10_192028
identityѕб dense_10/StatefulPartitionedCallбdense_9/StatefulPartitionedCallЌ
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_192021dense_9_192023*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1919382!
dense_9/StatefulPartitionedCallЙ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_192026dense_10_192028*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1919842"
 dense_10/StatefulPartitionedCallК
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
н

Я
4__inference_transformer_block_3_layer_call_fn_193894

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityѕбStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1922832
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
ј
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_193998

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape└
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ЇП
о
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193857

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityѕб.layer_normalization_6/batchnorm/ReadVariableOpб2layer_normalization_6/batchnorm/mul/ReadVariableOpб.layer_normalization_7/batchnorm/ReadVariableOpб2layer_normalization_7/batchnorm/mul/ReadVariableOpб:multi_head_attention_3/attention_output/add/ReadVariableOpбDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpб-multi_head_attention_3/key/add/ReadVariableOpб7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/query/add/ReadVariableOpб9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/value/add/ReadVariableOpб9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб,sequential_3/dense_10/BiasAdd/ReadVariableOpб.sequential_3/dense_10/Tensordot/ReadVariableOpб+sequential_3/dense_9/BiasAdd/ReadVariableOpб-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsum█
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/query/add/ReadVariableOpШ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/query/addэ
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpѕ
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/EinsumН
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpЬ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsum█
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/value/add/ReadVariableOpШ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/value/addЂ
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_3/Mul/yК
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@2
multi_head_attention_3/Mul■
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/Einsumк
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2(
&multi_head_attention_3/softmax/Softmax╠
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:         УУ2)
'multi_head_attention_3/dropout/IdentityЋ
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsumъ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpн
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/EinsumЭ
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOpъ
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2-
+multi_head_attention_3/attention_output/addю
dropout_8/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*,
_output_shapes
:         У@2
dropout_8/Identityo
addAddV2inputsdropout_8/Identity:output:0*
T0*,
_output_shapes
:         У@2
addХ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesЯ
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_6/moments/mean╠
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_6/moments/StopGradientВ
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_6/moments/SquaredDifferenceЙ
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indicesў
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_6/moments/varianceЊ
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_6/batchnorm/add/yв
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_6/batchnorm/addи
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_6/batchnorm/RsqrtЯ
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOp№
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/mulЙ
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_1Р
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_2н
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpв
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/subР
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/add_1Н
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOpћ
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axesЏ
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЦ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shapeъ
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axis║
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2б
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axis└
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1ќ
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constн
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prodџ
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1▄
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1џ
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axisЎ
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatЯ
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackз
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2*
(sequential_3/dense_9/Tensordot/transposeз
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2(
&sequential_3/dense_9/Tensordot/ReshapeЫ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2'
%sequential_3/dense_9/Tensordot/MatMulџ
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2ъ
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisд
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1т
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2 
sequential_3/dense_9/Tensordot╦
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOp▄
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/BiasAddю
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/Reluп
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOpќ
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axesЮ
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЦ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shapeа
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axis┐
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2ц
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1ў
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constп
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prodю
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1Я
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1ю
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axisъ
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatС
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackЗ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2+
)sequential_3/dense_10/Tensordot/transposeэ
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_10/Tensordot/ReshapeШ
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2(
&sequential_3/dense_10/Tensordot/MatMulю
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_3/dense_10/Tensordot/Const_2а
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisФ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ж
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2!
sequential_3/dense_10/Tensordot╬
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpЯ
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_10/BiasAddЊ
dropout_9/IdentityIdentity&sequential_3/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
dropout_9/Identityќ
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*,
_output_shapes
:         У@2
add_1Х
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesР
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_7/moments/mean╠
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_7/moments/StopGradientЬ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_7/moments/SquaredDifferenceЙ
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indicesў
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_7/moments/varianceЊ
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_7/batchnorm/add/yв
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_7/batchnorm/addи
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_7/batchnorm/RsqrtЯ
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOp№
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/mul└
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_1Р
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_2н
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpв
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/subР
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/add_1о
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2ї
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
Й
u
I__inference_concatenate_1_layer_call_and_return_conditional_losses_193960
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЂ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         H2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         H2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:         @:         :Q M
'
_output_shapes
:         @
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
ц
Z
.__inference_concatenate_1_layer_call_fn_193966
inputs_0
inputs_1
identityО
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1925382
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         H2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:         @:         :Q M
'
_output_shapes
:         @
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Ў
G
+__inference_dropout_10_layer_call_fn_194013

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925912
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ь	
П
D__inference_dense_12_layer_call_and_return_conditional_losses_194024

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
і■
о
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193730

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityѕб.layer_normalization_6/batchnorm/ReadVariableOpб2layer_normalization_6/batchnorm/mul/ReadVariableOpб.layer_normalization_7/batchnorm/ReadVariableOpб2layer_normalization_7/batchnorm/mul/ReadVariableOpб:multi_head_attention_3/attention_output/add/ReadVariableOpбDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpб-multi_head_attention_3/key/add/ReadVariableOpб7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/query/add/ReadVariableOpб9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/value/add/ReadVariableOpб9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб,sequential_3/dense_10/BiasAdd/ReadVariableOpб.sequential_3/dense_10/Tensordot/ReadVariableOpб+sequential_3/dense_9/BiasAdd/ReadVariableOpб-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsum█
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/query/add/ReadVariableOpШ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/query/addэ
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpѕ
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/EinsumН
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpЬ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsum█
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/value/add/ReadVariableOpШ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/value/addЂ
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_3/Mul/yК
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@2
multi_head_attention_3/Mul■
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/Einsumк
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2(
&multi_head_attention_3/softmax/SoftmaxА
,multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2.
,multi_head_attention_3/dropout/dropout/Constё
*multi_head_attention_3/dropout/dropout/MulMul0multi_head_attention_3/softmax/Softmax:softmax:05multi_head_attention_3/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:         УУ2,
*multi_head_attention_3/dropout/dropout/Mul╝
,multi_head_attention_3/dropout/dropout/ShapeShape0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_3/dropout/dropout/ShapeД
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:         УУ*
dtype0*

seed2E
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform│
5multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_3/dropout/dropout/GreaterEqual/y─
3multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:         УУ25
3multi_head_attention_3/dropout/dropout/GreaterEqualТ
+multi_head_attention_3/dropout/dropout/CastCast7multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:         УУ2-
+multi_head_attention_3/dropout/dropout/Castђ
,multi_head_attention_3/dropout/dropout/Mul_1Mul.multi_head_attention_3/dropout/dropout/Mul:z:0/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:         УУ2.
,multi_head_attention_3/dropout/dropout/Mul_1Ћ
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/dropout/Mul_1:z:0$multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsumъ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpн
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/EinsumЭ
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOpъ
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2-
+multi_head_attention_3/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_8/dropout/Const┐
dropout_8/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2
dropout_8/dropout/MulЉ
dropout_8/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape­
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed220
.dropout_8/dropout/random_uniform/RandomUniformЅ
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_8/dropout/GreaterEqual/yв
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@2 
dropout_8/dropout/GreaterEqualб
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2
dropout_8/dropout/CastД
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2
dropout_8/dropout/Mul_1o
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
addХ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesЯ
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_6/moments/mean╠
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_6/moments/StopGradientВ
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_6/moments/SquaredDifferenceЙ
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indicesў
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_6/moments/varianceЊ
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_6/batchnorm/add/yв
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_6/batchnorm/addи
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_6/batchnorm/RsqrtЯ
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOp№
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/mulЙ
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_1Р
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_2н
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpв
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/subР
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/add_1Н
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOpћ
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axesЏ
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЦ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shapeъ
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axis║
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2б
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axis└
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1ќ
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constн
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prodџ
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1▄
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1џ
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axisЎ
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatЯ
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackз
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2*
(sequential_3/dense_9/Tensordot/transposeз
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2(
&sequential_3/dense_9/Tensordot/ReshapeЫ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2'
%sequential_3/dense_9/Tensordot/MatMulџ
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2ъ
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisд
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1т
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2 
sequential_3/dense_9/Tensordot╦
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOp▄
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/BiasAddю
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/Reluп
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOpќ
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axesЮ
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЦ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shapeа
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axis┐
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2ц
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1ў
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constп
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prodю
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1Я
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1ю
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axisъ
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatС
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackЗ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2+
)sequential_3/dense_10/Tensordot/transposeэ
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_10/Tensordot/ReshapeШ
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2(
&sequential_3/dense_10/Tensordot/MatMulю
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_3/dense_10/Tensordot/Const_2а
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisФ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ж
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2!
sequential_3/dense_10/Tensordot╬
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpЯ
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_10/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_9/dropout/ConstХ
dropout_9/dropout/MulMul&sequential_3/dense_10/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2
dropout_9/dropout/Mulѕ
dropout_9/dropout/ShapeShape&sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape­
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed220
.dropout_9/dropout/random_uniform/RandomUniformЅ
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_9/dropout/GreaterEqual/yв
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@2 
dropout_9/dropout/GreaterEqualб
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2
dropout_9/dropout/CastД
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2
dropout_9/dropout/Mul_1ќ
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
add_1Х
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesР
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_7/moments/mean╠
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_7/moments/StopGradientЬ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_7/moments/SquaredDifferenceЙ
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indicesў
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_7/moments/varianceЊ
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_7/batchnorm/add/yв
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_7/batchnorm/addи
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_7/batchnorm/RsqrtЯ
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOp№
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/mul└
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_1Р
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_2н
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpв
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/subР
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/add_1о
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2ї
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
─
С
(__inference_model_1_layer_call_fn_193549
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identityѕбStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_1929352
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
)
_output_shapes
:         аю
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Ь	
П
D__inference_dense_11_layer_call_and_return_conditional_losses_193977

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:H@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         H::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         H
 
_user_specified_nameinputs
░▓
└
C__inference_model_1_layer_call_and_return_conditional_losses_193263
inputs_0
inputs_1F
Btoken_and_position_embedding_1_embedding_3_embedding_lookup_193062F
Btoken_and_position_embedding_1_embedding_2_embedding_lookup_193068Z
Vtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_query_add_readvariableop_resourceX
Ttransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceZ
Vtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcee
atransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resourceS
Otransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceN
Jtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceL
Htransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceO
Ktransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceM
Itransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resourceS
Otransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identityѕбdense_11/BiasAdd/ReadVariableOpбdense_11/MatMul/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpб;token_and_position_embedding_1/embedding_2/embedding_lookupб;token_and_position_embedding_1/embedding_3/embedding_lookupбBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpбFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpбBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpбFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpбNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpбXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpбAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpбKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpбCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpбMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpбCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpбMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpбBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpб?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpбAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpё
$token_and_position_embedding_1/ShapeShapeinputs_0*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/Shape╗
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         24
2token_and_position_embedding_1/strided_slice/stackХ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1Х
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2ю
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_sliceџ
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/startџ
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/deltaЏ
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:         2&
$token_and_position_embedding_1/range╩
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_3_embedding_lookup_193062-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/193062*'
_output_shapes
:         @*
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookupЋ
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/193062*'
_output_shapes
:         @2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityЮ
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         @2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1и
/token_and_position_embedding_1/embedding_2/CastCastinputs_0*

DstT0*

SrcT0*)
_output_shapes
:         аю21
/token_and_position_embedding_1/embedding_2/Castо
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherBtoken_and_position_embedding_1_embedding_2_embedding_lookup_1930683token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/193068*-
_output_shapes
:         аю@*
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookupЏ
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*U
_classK
IGloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/193068*-
_output_shapes
:         аю@2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityБ
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         аю@2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1Ф
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:         аю@2$
"token_and_position_embedding_1/addі
"average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_1/ExpandDims/dim▀
average_pooling1d_1/ExpandDims
ExpandDims&token_and_position_embedding_1/add:z:0+average_pooling1d_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         аю@2 
average_pooling1d_1/ExpandDimsт
average_pooling1d_1/AvgPoolAvgPool'average_pooling1d_1/ExpandDims:output:0*
T0*0
_output_shapes
:         У@*
ksize
*
paddingVALID*
strides
2
average_pooling1d_1/AvgPool╣
average_pooling1d_1/SqueezeSqueeze$average_pooling1d_1/AvgPool:output:0*
T0*,
_output_shapes
:         У@*
squeeze_dims
2
average_pooling1d_1/Squeeze╣
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpУ
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Utransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/query/einsum/EinsumЌ
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpк
4transformer_block_3/multi_head_attention_3/query/addAddV2Gtransformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@26
4transformer_block_3/multi_head_attention_3/query/add│
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02M
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpР
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Stransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2>
<transformer_block_3/multi_head_attention_3/key/einsum/EinsumЉ
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpJtransformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02C
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpЙ
2transformer_block_3/multi_head_attention_3/key/addAddV2Etransformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Itransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@24
2transformer_block_3/multi_head_attention_3/key/add╣
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpУ
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsum$average_pooling1d_1/Squeeze:output:0Utransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2@
>transformer_block_3/multi_head_attention_3/value/einsum/EinsumЌ
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpLtransformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpк
4transformer_block_3/multi_head_attention_3/value/addAddV2Gtransformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Ktransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@26
4transformer_block_3/multi_head_attention_3/value/addЕ
0transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >22
0transformer_block_3/multi_head_attention_3/Mul/yЌ
.transformer_block_3/multi_head_attention_3/MulMul8transformer_block_3/multi_head_attention_3/query/add:z:09transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@20
.transformer_block_3/multi_head_attention_3/Mul╬
8transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum6transformer_block_3/multi_head_attention_3/key/add:z:02transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2:
8transformer_block_3/multi_head_attention_3/einsum/Einsumѓ
:transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxAtransformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2<
:transformer_block_3/multi_head_attention_3/softmax/Softmax╔
@transformer_block_3/multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Constн
>transformer_block_3/multi_head_attention_3/dropout/dropout/MulMulDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0Itransformer_block_3/multi_head_attention_3/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:         УУ2@
>transformer_block_3/multi_head_attention_3/dropout/dropout/MulЭ
@transformer_block_3/multi_head_attention_3/dropout/dropout/ShapeShapeDtransformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Shapeс
Wtransformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniformItransformer_block_3/multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:         УУ*
dtype0*

seed2Y
Wtransformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniform█
Itransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Itransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/yћ
Gtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqual`transformer_block_3/multi_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0Rtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:         УУ2I
Gtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqualб
?transformer_block_3/multi_head_attention_3/dropout/dropout/CastCastKtransformer_block_3/multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:         УУ2A
?transformer_block_3/multi_head_attention_3/dropout/dropout/Castл
@transformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1MulBtransformer_block_3/multi_head_attention_3/dropout/dropout/Mul:z:0Ctransformer_block_3/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:         УУ2B
@transformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1т
:transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumDtransformer_block_3/multi_head_attention_3/dropout/dropout/Mul_1:z:08transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2<
:transformer_block_3/multi_head_attention_3/einsum_1/Einsum┌
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Z
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpц
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumCtransformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0`transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe2K
Itransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum┤
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02P
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpЬ
?transformer_block_3/multi_head_attention_3/attention_output/addAddV2Rtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Vtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2A
?transformer_block_3/multi_head_attention_3/attention_output/addЪ
+transformer_block_3/dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2-
+transformer_block_3/dropout_8/dropout/ConstЈ
)transformer_block_3/dropout_8/dropout/MulMulCtransformer_block_3/multi_head_attention_3/attention_output/add:z:04transformer_block_3/dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2+
)transformer_block_3/dropout_8/dropout/Mul═
+transformer_block_3/dropout_8/dropout/ShapeShapeCtransformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer_block_3/dropout_8/dropout/Shapeг
Btransformer_block_3/dropout_8/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_3/dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed22D
Btransformer_block_3/dropout_8/dropout/random_uniform/RandomUniform▒
4transformer_block_3/dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=26
4transformer_block_3/dropout_8/dropout/GreaterEqual/y╗
2transformer_block_3/dropout_8/dropout/GreaterEqualGreaterEqualKtransformer_block_3/dropout_8/dropout/random_uniform/RandomUniform:output:0=transformer_block_3/dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@24
2transformer_block_3/dropout_8/dropout/GreaterEqualя
*transformer_block_3/dropout_8/dropout/CastCast6transformer_block_3/dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2,
*transformer_block_3/dropout_8/dropout/Castэ
+transformer_block_3/dropout_8/dropout/Mul_1Mul-transformer_block_3/dropout_8/dropout/Mul:z:0.transformer_block_3/dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2-
+transformer_block_3/dropout_8/dropout/Mul_1╔
transformer_block_3/addAddV2$average_pooling1d_1/Squeeze:output:0/transformer_block_3/dropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
transformer_block_3/addя
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_6/moments/mean/reduction_indices░
6transformer_block_3/layer_normalization_6/moments/meanMeantransformer_block_3/add:z:0Qtransformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(28
6transformer_block_3/layer_normalization_6/moments/meanѕ
>transformer_block_3/layer_normalization_6/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2@
>transformer_block_3/layer_normalization_6/moments/StopGradient╝
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add:z:0Gtransformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2E
Ctransformer_block_3/layer_normalization_6/moments/SquaredDifferenceТ
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_6/moments/variance/reduction_indicesУ
:transformer_block_3/layer_normalization_6/moments/varianceMeanGtransformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2<
:transformer_block_3/layer_normalization_6/moments/variance╗
9transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52;
9transformer_block_3/layer_normalization_6/batchnorm/add/y╗
7transformer_block_3/layer_normalization_6/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_6/moments/variance:output:0Btransformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У29
7transformer_block_3/layer_normalization_6/batchnorm/addз
9transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2;
9transformer_block_3/layer_normalization_6/batchnorm/Rsqrtю
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp┐
7transformer_block_3/layer_normalization_6/batchnorm/mulMul=transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_6/batchnorm/mulј
9transformer_block_3/layer_normalization_6/batchnorm/mul_1Multransformer_block_3/add:z:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_1▓
9transformer_block_3/layer_normalization_6/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_6/moments/mean:output:0;transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/mul_2љ
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp╗
7transformer_block_3/layer_normalization_6/batchnorm/subSubJtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_6/batchnorm/sub▓
9transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_6/batchnorm/add_1Љ
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02C
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp╝
7transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_3/sequential_3/dense_9/Tensordot/axes├
7transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_3/sequential_3/dense_9/Tensordot/freeр
8transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShape=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/Shapeк
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisъ
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2╩
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisц
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Atransformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Ktransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1Й
8transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_3/sequential_3/dense_9/Tensordot/Constц
7transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdDtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Atransformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_3/sequential_3/dense_9/Tensordot/Prod┬
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_1г
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdFtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1┬
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis§
9transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2@transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0@transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Gtransformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_9/Tensordot/concat░
8transformer_block_3/sequential_3/dense_9/Tensordot/stackPack@transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Btransformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_3/sequential_3/dense_9/Tensordot/stack├
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose	Transpose=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Btransformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2>
<transformer_block_3/sequential_3/dense_9/Tensordot/transpose├
:transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshape@transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Atransformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Reshape┬
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulCtransformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2;
9transformer_block_3/sequential_3/dense_9/Tensordot/MatMul┬
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_3/sequential_3/dense_9/Tensordot/Const_2к
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisі
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Dtransformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Ctransformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Itransformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_3/sequential_3/dense_9/Tensordot/concat_1х
2transformer_block_3/sequential_3/dense_9/TensordotReshapeCtransformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Dtransformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@24
2transformer_block_3/sequential_3/dense_9/TensordotЄ
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpг
0transformer_block_3/sequential_3/dense_9/BiasAddBiasAdd;transformer_block_3/sequential_3/dense_9/Tensordot:output:0Gtransformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@22
0transformer_block_3/sequential_3/dense_9/BiasAddп
-transformer_block_3/sequential_3/dense_9/ReluRelu9transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2/
-transformer_block_3/sequential_3/dense_9/Reluћ
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02D
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpЙ
8transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_3/sequential_3/dense_10/Tensordot/axes┼
8transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_3/sequential_3/dense_10/Tensordot/freeр
9transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShape;transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/Shape╚
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisБ
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2╠
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisЕ
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Btransformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Ltransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1└
9transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_3/sequential_3/dense_10/Tensordot/Constе
8transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdEtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Btransformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_3/sequential_3/dense_10/Tensordot/Prod─
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_1░
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdGtransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1─
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisѓ
:transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Atransformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Atransformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Htransformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_3/sequential_3/dense_10/Tensordot/concat┤
9transformer_block_3/sequential_3/dense_10/Tensordot/stackPackAtransformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_3/sequential_3/dense_10/Tensordot/stack─
=transformer_block_3/sequential_3/dense_10/Tensordot/transpose	Transpose;transformer_block_3/sequential_3/dense_9/Relu:activations:0Ctransformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2?
=transformer_block_3/sequential_3/dense_10/Tensordot/transposeК
;transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeAtransformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Btransformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Reshapeк
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulDtransformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2<
:transformer_block_3/sequential_3/dense_10/Tensordot/MatMul─
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_3/sequential_3/dense_10/Tensordot/Const_2╚
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisЈ
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Etransformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Dtransformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Jtransformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_3/sequential_3/dense_10/Tensordot/concat_1╣
3transformer_block_3/sequential_3/dense_10/TensordotReshapeDtransformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Etransformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@25
3transformer_block_3/sequential_3/dense_10/Tensordotі
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp░
1transformer_block_3/sequential_3/dense_10/BiasAddBiasAdd<transformer_block_3/sequential_3/dense_10/Tensordot:output:0Htransformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@23
1transformer_block_3/sequential_3/dense_10/BiasAddЪ
+transformer_block_3/dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2-
+transformer_block_3/dropout_9/dropout/Constє
)transformer_block_3/dropout_9/dropout/MulMul:transformer_block_3/sequential_3/dense_10/BiasAdd:output:04transformer_block_3/dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2+
)transformer_block_3/dropout_9/dropout/Mul─
+transformer_block_3/dropout_9/dropout/ShapeShape:transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2-
+transformer_block_3/dropout_9/dropout/Shapeг
Btransformer_block_3/dropout_9/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_3/dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed22D
Btransformer_block_3/dropout_9/dropout/random_uniform/RandomUniform▒
4transformer_block_3/dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=26
4transformer_block_3/dropout_9/dropout/GreaterEqual/y╗
2transformer_block_3/dropout_9/dropout/GreaterEqualGreaterEqualKtransformer_block_3/dropout_9/dropout/random_uniform/RandomUniform:output:0=transformer_block_3/dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@24
2transformer_block_3/dropout_9/dropout/GreaterEqualя
*transformer_block_3/dropout_9/dropout/CastCast6transformer_block_3/dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2,
*transformer_block_3/dropout_9/dropout/Castэ
+transformer_block_3/dropout_9/dropout/Mul_1Mul-transformer_block_3/dropout_9/dropout/Mul:z:0.transformer_block_3/dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2-
+transformer_block_3/dropout_9/dropout/Mul_1Т
transformer_block_3/add_1AddV2=transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0/transformer_block_3/dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
transformer_block_3/add_1я
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_3/layer_normalization_7/moments/mean/reduction_indices▓
6transformer_block_3/layer_normalization_7/moments/meanMeantransformer_block_3/add_1:z:0Qtransformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(28
6transformer_block_3/layer_normalization_7/moments/meanѕ
>transformer_block_3/layer_normalization_7/moments/StopGradientStopGradient?transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2@
>transformer_block_3/layer_normalization_7/moments/StopGradientЙ
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_block_3/add_1:z:0Gtransformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2E
Ctransformer_block_3/layer_normalization_7/moments/SquaredDifferenceТ
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_3/layer_normalization_7/moments/variance/reduction_indicesУ
:transformer_block_3/layer_normalization_7/moments/varianceMeanGtransformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0Utransformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2<
:transformer_block_3/layer_normalization_7/moments/variance╗
9transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52;
9transformer_block_3/layer_normalization_7/batchnorm/add/y╗
7transformer_block_3/layer_normalization_7/batchnorm/addAddV2Ctransformer_block_3/layer_normalization_7/moments/variance:output:0Btransformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У29
7transformer_block_3/layer_normalization_7/batchnorm/addз
9transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrt;transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2;
9transformer_block_3/layer_normalization_7/batchnorm/Rsqrtю
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp┐
7transformer_block_3/layer_normalization_7/batchnorm/mulMul=transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ntransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_7/batchnorm/mulљ
9transformer_block_3/layer_normalization_7/batchnorm/mul_1Multransformer_block_3/add_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_1▓
9transformer_block_3/layer_normalization_7/batchnorm/mul_2Mul?transformer_block_3/layer_normalization_7/moments/mean:output:0;transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/mul_2љ
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp╗
7transformer_block_3/layer_normalization_7/batchnorm/subSubJtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0=transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@29
7transformer_block_3/layer_normalization_7/batchnorm/sub▓
9transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2=transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0;transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2;
9transformer_block_3/layer_normalization_7/batchnorm/add_1е
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_1/Mean/reduction_indicesэ
global_average_pooling1d_1/MeanMean=transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         @2!
global_average_pooling1d_1/Meanx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis╦
concatenate_1/concatConcatV2(global_average_pooling1d_1/Mean:output:0inputs_1"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:         H2
concatenate_1/concatе
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:H@*
dtype02 
dense_11/MatMul/ReadVariableOpЦ
dense_11/MatMulMatMulconcatenate_1/concat:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_11/MatMulД
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_11/BiasAdd/ReadVariableOpЦ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_11/Reluy
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_10/dropout/ConstЕ
dropout_10/dropout/MulMuldense_11/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout_10/dropout/Mul
dropout_10/dropout/ShapeShapedense_11/Relu:activations:0*
T0*
_output_shapes
:2
dropout_10/dropout/ShapeЬ
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed*
seed221
/dropout_10/dropout/random_uniform/RandomUniformІ
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2#
!dropout_10/dropout/GreaterEqual/yЖ
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2!
dropout_10/dropout/GreaterEqualа
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout_10/dropout/Castд
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout_10/dropout/Mul_1е
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_12/MatMul/ReadVariableOpц
dense_12/MatMulMatMuldropout_10/dropout/Mul_1:z:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/MatMulД
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_12/BiasAdd/ReadVariableOpЦ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_12/Reluy
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_11/dropout/ConstЕ
dropout_11/dropout/MulMuldense_12/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout_11/dropout/Mul
dropout_11/dropout/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dropout_11/dropout/ShapeЬ
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed*
seed221
/dropout_11/dropout/random_uniform/RandomUniformІ
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2#
!dropout_11/dropout/GreaterEqual/yЖ
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2!
dropout_11/dropout/GreaterEqualа
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout_11/dropout/Castд
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout_11/dropout/Mul_1е
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_13/MatMul/ReadVariableOpц
dense_13/MatMulMatMuldropout_11/dropout/Mul_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_13/MatMulД
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЦ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_13/BiasAddк
IdentityIdentitydense_13/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpC^transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpG^transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpO^transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpY^transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpL^transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpD^transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpN^transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpA^transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpC^transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp@^transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpB^transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2ѕ
Btransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2љ
Ftransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2ѕ
Btransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpBtransformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2љ
Ftransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpFtransformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2а
Ntransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpNtransformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2┤
Xtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2є
Atransformer_block_3/multi_head_attention_3/key/add/ReadVariableOpAtransformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2џ
Ktransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpKtransformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2і
Ctransformer_block_3/multi_head_attention_3/query/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2ъ
Mtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2і
Ctransformer_block_3/multi_head_attention_3/value/add/ReadVariableOpCtransformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2ъ
Mtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpMtransformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2ё
@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp@transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2ѕ
Btransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpBtransformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2ѓ
?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp?transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2є
Atransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpAtransformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:S O
)
_output_shapes
:         аю
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
э
W
;__inference_global_average_pooling1d_1_layer_call_fn_193953

inputs
identityЯ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1920862
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╝
а
-__inference_sequential_3_layer_call_fn_194206

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1920322
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
▀
~
)__inference_dense_13_layer_call_fn_194079

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_1926712
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ў
я
$__inference_signature_wrapper_193050
input_3
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identityѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_1918882
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
я
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193937

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         @2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*+
_input_shapes
:         У@:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
Ь	
П
D__inference_dense_11_layer_call_and_return_conditional_losses_192558

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:H@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         H::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         H
 
_user_specified_nameinputs
њ	
П
D__inference_dense_13_layer_call_and_return_conditional_losses_194070

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Р
■
H__inference_sequential_3_layer_call_and_return_conditional_losses_192059

inputs
dense_9_192048
dense_9_192050
dense_10_192053
dense_10_192055
identityѕб dense_10/StatefulPartitionedCallбdense_9/StatefulPartitionedCallЌ
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_192048dense_9_192050*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1919382!
dense_9/StatefulPartitionedCallЙ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_192053dense_10_192055*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1919842"
 dense_10/StatefulPartitionedCallК
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
њ	
П
D__inference_dense_13_layer_call_and_return_conditional_losses_192671

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ї
Ј
?__inference_token_and_position_embedding_1_layer_call_fn_193582
x
unknown
	unknown_0
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         аю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1921182
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         аю@2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::22
StatefulPartitionedCallStatefulPartitionedCall:L H
)
_output_shapes
:         аю

_user_specified_namex
і■
о
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_192283

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityѕб.layer_normalization_6/batchnorm/ReadVariableOpб2layer_normalization_6/batchnorm/mul/ReadVariableOpб.layer_normalization_7/batchnorm/ReadVariableOpб2layer_normalization_7/batchnorm/mul/ReadVariableOpб:multi_head_attention_3/attention_output/add/ReadVariableOpбDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpб-multi_head_attention_3/key/add/ReadVariableOpб7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/query/add/ReadVariableOpб9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/value/add/ReadVariableOpб9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб,sequential_3/dense_10/BiasAdd/ReadVariableOpб.sequential_3/dense_10/Tensordot/ReadVariableOpб+sequential_3/dense_9/BiasAdd/ReadVariableOpб-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsum█
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/query/add/ReadVariableOpШ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/query/addэ
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpѕ
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/EinsumН
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpЬ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsum█
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/value/add/ReadVariableOpШ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/value/addЂ
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_3/Mul/yК
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@2
multi_head_attention_3/Mul■
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/Einsumк
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2(
&multi_head_attention_3/softmax/SoftmaxА
,multi_head_attention_3/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2.
,multi_head_attention_3/dropout/dropout/Constё
*multi_head_attention_3/dropout/dropout/MulMul0multi_head_attention_3/softmax/Softmax:softmax:05multi_head_attention_3/dropout/dropout/Const:output:0*
T0*1
_output_shapes
:         УУ2,
*multi_head_attention_3/dropout/dropout/Mul╝
,multi_head_attention_3/dropout/dropout/ShapeShape0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_3/dropout/dropout/ShapeД
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_3/dropout/dropout/Shape:output:0*
T0*1
_output_shapes
:         УУ*
dtype0*

seed2E
Cmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform│
5multi_head_attention_3/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_3/dropout/dropout/GreaterEqual/y─
3multi_head_attention_3/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_3/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_3/dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:         УУ25
3multi_head_attention_3/dropout/dropout/GreaterEqualТ
+multi_head_attention_3/dropout/dropout/CastCast7multi_head_attention_3/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:         УУ2-
+multi_head_attention_3/dropout/dropout/Castђ
,multi_head_attention_3/dropout/dropout/Mul_1Mul.multi_head_attention_3/dropout/dropout/Mul:z:0/multi_head_attention_3/dropout/dropout/Cast:y:0*
T0*1
_output_shapes
:         УУ2.
,multi_head_attention_3/dropout/dropout/Mul_1Ћ
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/dropout/Mul_1:z:0$multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsumъ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpн
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/EinsumЭ
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOpъ
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2-
+multi_head_attention_3/attention_output/addw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_8/dropout/Const┐
dropout_8/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0 dropout_8/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2
dropout_8/dropout/MulЉ
dropout_8/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape­
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed220
.dropout_8/dropout/random_uniform/RandomUniformЅ
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_8/dropout/GreaterEqual/yв
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@2 
dropout_8/dropout/GreaterEqualб
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2
dropout_8/dropout/CastД
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2
dropout_8/dropout/Mul_1o
addAddV2inputsdropout_8/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
addХ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesЯ
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_6/moments/mean╠
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_6/moments/StopGradientВ
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_6/moments/SquaredDifferenceЙ
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indicesў
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_6/moments/varianceЊ
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_6/batchnorm/add/yв
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_6/batchnorm/addи
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_6/batchnorm/RsqrtЯ
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOp№
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/mulЙ
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_1Р
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_2н
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpв
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/subР
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/add_1Н
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOpћ
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axesЏ
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЦ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shapeъ
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axis║
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2б
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axis└
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1ќ
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constн
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prodџ
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1▄
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1џ
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axisЎ
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatЯ
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackз
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2*
(sequential_3/dense_9/Tensordot/transposeз
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2(
&sequential_3/dense_9/Tensordot/ReshapeЫ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2'
%sequential_3/dense_9/Tensordot/MatMulџ
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2ъ
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisд
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1т
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2 
sequential_3/dense_9/Tensordot╦
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOp▄
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/BiasAddю
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/Reluп
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOpќ
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axesЮ
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЦ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shapeа
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axis┐
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2ц
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1ў
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constп
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prodю
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1Я
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1ю
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axisъ
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatС
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackЗ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2+
)sequential_3/dense_10/Tensordot/transposeэ
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_10/Tensordot/ReshapeШ
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2(
&sequential_3/dense_10/Tensordot/MatMulю
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_3/dense_10/Tensordot/Const_2а
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisФ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ж
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2!
sequential_3/dense_10/Tensordot╬
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpЯ
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_10/BiasAddw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout_9/dropout/ConstХ
dropout_9/dropout/MulMul&sequential_3/dense_10/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*,
_output_shapes
:         У@2
dropout_9/dropout/Mulѕ
dropout_9/dropout/ShapeShape&sequential_3/dense_10/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shape­
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*,
_output_shapes
:         У@*
dtype0*

seed*
seed220
.dropout_9/dropout/random_uniform/RandomUniformЅ
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2"
 dropout_9/dropout/GreaterEqual/yв
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         У@2 
dropout_9/dropout/GreaterEqualб
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         У@2
dropout_9/dropout/CastД
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*,
_output_shapes
:         У@2
dropout_9/dropout/Mul_1ќ
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         У@2
add_1Х
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesР
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_7/moments/mean╠
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_7/moments/StopGradientЬ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_7/moments/SquaredDifferenceЙ
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indicesў
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_7/moments/varianceЊ
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_7/batchnorm/add/yв
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_7/batchnorm/addи
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_7/batchnorm/RsqrtЯ
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOp№
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/mul└
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_1Р
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_2н
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpв
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/subР
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/add_1о
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2ї
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
╝
а
-__inference_sequential_3_layer_call_fn_194219

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1920592
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
ш
k
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_191897

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimЊ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           2

ExpandDims║
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
2	
AvgPoolј
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
ЇП
о
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_192410

inputsF
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_query_add_readvariableop_resourceD
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_3_key_add_readvariableop_resourceF
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_3_value_add_readvariableop_resourceQ
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_3_attention_output_add_readvariableop_resource?
;layer_normalization_6_batchnorm_mul_readvariableop_resource;
7layer_normalization_6_batchnorm_readvariableop_resource:
6sequential_3_dense_9_tensordot_readvariableop_resource8
4sequential_3_dense_9_biasadd_readvariableop_resource;
7sequential_3_dense_10_tensordot_readvariableop_resource9
5sequential_3_dense_10_biasadd_readvariableop_resource?
;layer_normalization_7_batchnorm_mul_readvariableop_resource;
7layer_normalization_7_batchnorm_readvariableop_resource
identityѕб.layer_normalization_6/batchnorm/ReadVariableOpб2layer_normalization_6/batchnorm/mul/ReadVariableOpб.layer_normalization_7/batchnorm/ReadVariableOpб2layer_normalization_7/batchnorm/mul/ReadVariableOpб:multi_head_attention_3/attention_output/add/ReadVariableOpбDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpб-multi_head_attention_3/key/add/ReadVariableOpб7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/query/add/ReadVariableOpб9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpб/multi_head_attention_3/value/add/ReadVariableOpб9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpб,sequential_3/dense_10/BiasAdd/ReadVariableOpб.sequential_3/dense_10/Tensordot/ReadVariableOpб+sequential_3/dense_9/BiasAdd/ReadVariableOpб-sequential_3/dense_9/Tensordot/ReadVariableOp§
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/query/einsum/Einsum█
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/query/add/ReadVariableOpШ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/query/addэ
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpѕ
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2*
(multi_head_attention_3/key/einsum/EinsumН
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_3/key/add/ReadVariableOpЬ
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2 
multi_head_attention_3/key/add§
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpј
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2,
*multi_head_attention_3/value/einsum/Einsum█
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_3/value/add/ReadVariableOpШ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2"
 multi_head_attention_3/value/addЂ
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_3/Mul/yК
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@2
multi_head_attention_3/Mul■
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2&
$multi_head_attention_3/einsum/Einsumк
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2(
&multi_head_attention_3/softmax/Softmax╠
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:         УУ2)
'multi_head_attention_3/dropout/IdentityЋ
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2(
&multi_head_attention_3/einsum_1/Einsumъ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpн
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe27
5multi_head_attention_3/attention_output/einsum/EinsumЭ
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_3/attention_output/add/ReadVariableOpъ
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2-
+multi_head_attention_3/attention_output/addю
dropout_8/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*,
_output_shapes
:         У@2
dropout_8/Identityo
addAddV2inputsdropout_8/Identity:output:0*
T0*,
_output_shapes
:         У@2
addХ
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_6/moments/mean/reduction_indicesЯ
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_6/moments/mean╠
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_6/moments/StopGradientВ
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_6/moments/SquaredDifferenceЙ
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_6/moments/variance/reduction_indicesў
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_6/moments/varianceЊ
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_6/batchnorm/add/yв
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_6/batchnorm/addи
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_6/batchnorm/RsqrtЯ
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_6/batchnorm/mul/ReadVariableOp№
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/mulЙ
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_1Р
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/mul_2н
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_6/batchnorm/ReadVariableOpв
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_6/batchnorm/subР
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_6/batchnorm/add_1Н
-sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_3/dense_9/Tensordot/ReadVariableOpћ
#sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_3/dense_9/Tensordot/axesЏ
#sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_3/dense_9/Tensordot/freeЦ
$sequential_3/dense_9/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/Shapeъ
,sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/GatherV2/axis║
'sequential_3/dense_9/Tensordot/GatherV2GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/free:output:05sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/GatherV2б
.sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_3/dense_9/Tensordot/GatherV2_1/axis└
)sequential_3/dense_9/Tensordot/GatherV2_1GatherV2-sequential_3/dense_9/Tensordot/Shape:output:0,sequential_3/dense_9/Tensordot/axes:output:07sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_3/dense_9/Tensordot/GatherV2_1ќ
$sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_3/dense_9/Tensordot/Constн
#sequential_3/dense_9/Tensordot/ProdProd0sequential_3/dense_9/Tensordot/GatherV2:output:0-sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_3/dense_9/Tensordot/Prodџ
&sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_3/dense_9/Tensordot/Const_1▄
%sequential_3/dense_9/Tensordot/Prod_1Prod2sequential_3/dense_9/Tensordot/GatherV2_1:output:0/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_3/dense_9/Tensordot/Prod_1џ
*sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_3/dense_9/Tensordot/concat/axisЎ
%sequential_3/dense_9/Tensordot/concatConcatV2,sequential_3/dense_9/Tensordot/free:output:0,sequential_3/dense_9/Tensordot/axes:output:03sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_9/Tensordot/concatЯ
$sequential_3/dense_9/Tensordot/stackPack,sequential_3/dense_9/Tensordot/Prod:output:0.sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/dense_9/Tensordot/stackз
(sequential_3/dense_9/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0.sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2*
(sequential_3/dense_9/Tensordot/transposeз
&sequential_3/dense_9/Tensordot/ReshapeReshape,sequential_3/dense_9/Tensordot/transpose:y:0-sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2(
&sequential_3/dense_9/Tensordot/ReshapeЫ
%sequential_3/dense_9/Tensordot/MatMulMatMul/sequential_3/dense_9/Tensordot/Reshape:output:05sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2'
%sequential_3/dense_9/Tensordot/MatMulџ
&sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_3/dense_9/Tensordot/Const_2ъ
,sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_3/dense_9/Tensordot/concat_1/axisд
'sequential_3/dense_9/Tensordot/concat_1ConcatV20sequential_3/dense_9/Tensordot/GatherV2:output:0/sequential_3/dense_9/Tensordot/Const_2:output:05sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_3/dense_9/Tensordot/concat_1т
sequential_3/dense_9/TensordotReshape/sequential_3/dense_9/Tensordot/MatMul:product:00sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2 
sequential_3/dense_9/Tensordot╦
+sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_3/dense_9/BiasAdd/ReadVariableOp▄
sequential_3/dense_9/BiasAddBiasAdd'sequential_3/dense_9/Tensordot:output:03sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/BiasAddю
sequential_3/dense_9/ReluRelu%sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_9/Reluп
.sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype020
.sequential_3/dense_10/Tensordot/ReadVariableOpќ
$sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_3/dense_10/Tensordot/axesЮ
$sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_3/dense_10/Tensordot/freeЦ
%sequential_3/dense_10/Tensordot/ShapeShape'sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/Shapeа
-sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/GatherV2/axis┐
(sequential_3/dense_10/Tensordot/GatherV2GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/free:output:06sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/GatherV2ц
/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_3/dense_10/Tensordot/GatherV2_1/axis┼
*sequential_3/dense_10/Tensordot/GatherV2_1GatherV2.sequential_3/dense_10/Tensordot/Shape:output:0-sequential_3/dense_10/Tensordot/axes:output:08sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_3/dense_10/Tensordot/GatherV2_1ў
%sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_3/dense_10/Tensordot/Constп
$sequential_3/dense_10/Tensordot/ProdProd1sequential_3/dense_10/Tensordot/GatherV2:output:0.sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_3/dense_10/Tensordot/Prodю
'sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/dense_10/Tensordot/Const_1Я
&sequential_3/dense_10/Tensordot/Prod_1Prod3sequential_3/dense_10/Tensordot/GatherV2_1:output:00sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_3/dense_10/Tensordot/Prod_1ю
+sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_3/dense_10/Tensordot/concat/axisъ
&sequential_3/dense_10/Tensordot/concatConcatV2-sequential_3/dense_10/Tensordot/free:output:0-sequential_3/dense_10/Tensordot/axes:output:04sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_3/dense_10/Tensordot/concatС
%sequential_3/dense_10/Tensordot/stackPack-sequential_3/dense_10/Tensordot/Prod:output:0/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_3/dense_10/Tensordot/stackЗ
)sequential_3/dense_10/Tensordot/transpose	Transpose'sequential_3/dense_9/Relu:activations:0/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2+
)sequential_3/dense_10/Tensordot/transposeэ
'sequential_3/dense_10/Tensordot/ReshapeReshape-sequential_3/dense_10/Tensordot/transpose:y:0.sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2)
'sequential_3/dense_10/Tensordot/ReshapeШ
&sequential_3/dense_10/Tensordot/MatMulMatMul0sequential_3/dense_10/Tensordot/Reshape:output:06sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2(
&sequential_3/dense_10/Tensordot/MatMulю
'sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_3/dense_10/Tensordot/Const_2а
-sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/dense_10/Tensordot/concat_1/axisФ
(sequential_3/dense_10/Tensordot/concat_1ConcatV21sequential_3/dense_10/Tensordot/GatherV2:output:00sequential_3/dense_10/Tensordot/Const_2:output:06sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_3/dense_10/Tensordot/concat_1ж
sequential_3/dense_10/TensordotReshape0sequential_3/dense_10/Tensordot/MatMul:product:01sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2!
sequential_3/dense_10/Tensordot╬
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpЯ
sequential_3/dense_10/BiasAddBiasAdd(sequential_3/dense_10/Tensordot:output:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
sequential_3/dense_10/BiasAddЊ
dropout_9/IdentityIdentity&sequential_3/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
dropout_9/Identityќ
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_9/Identity:output:0*
T0*,
_output_shapes
:         У@2
add_1Х
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_7/moments/mean/reduction_indicesР
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2$
"layer_normalization_7/moments/mean╠
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2,
*layer_normalization_7/moments/StopGradientЬ
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@21
/layer_normalization_7/moments/SquaredDifferenceЙ
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_7/moments/variance/reduction_indicesў
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2(
&layer_normalization_7/moments/varianceЊ
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52'
%layer_normalization_7/batchnorm/add/yв
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2%
#layer_normalization_7/batchnorm/addи
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2'
%layer_normalization_7/batchnorm/RsqrtЯ
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_7/batchnorm/mul/ReadVariableOp№
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/mul└
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_1Р
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/mul_2н
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_7/batchnorm/ReadVariableOpв
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2%
#layer_normalization_7/batchnorm/subР
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2'
%layer_normalization_7/batchnorm/add_1о
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp/^sequential_3/dense_10/Tensordot/ReadVariableOp,^sequential_3/dense_9/BiasAdd/ReadVariableOp.^sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2ї
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2`
.sequential_3/dense_10/Tensordot/ReadVariableOp.sequential_3/dense_10/Tensordot/ReadVariableOp2Z
+sequential_3/dense_9/BiasAdd/ReadVariableOp+sequential_3/dense_9/BiasAdd/ReadVariableOp2^
-sequential_3/dense_9/Tensordot/ReadVariableOp-sequential_3/dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
я6
ћ
C__inference_model_1_layer_call_and_return_conditional_losses_192935

inputs
inputs_1)
%token_and_position_embedding_1_192876)
%token_and_position_embedding_1_192878
transformer_block_3_192882
transformer_block_3_192884
transformer_block_3_192886
transformer_block_3_192888
transformer_block_3_192890
transformer_block_3_192892
transformer_block_3_192894
transformer_block_3_192896
transformer_block_3_192898
transformer_block_3_192900
transformer_block_3_192902
transformer_block_3_192904
transformer_block_3_192906
transformer_block_3_192908
transformer_block_3_192910
transformer_block_3_192912
dense_11_192917
dense_11_192919
dense_12_192923
dense_12_192925
dense_13_192929
dense_13_192931
identityѕб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб6token_and_position_embedding_1/StatefulPartitionedCallб+transformer_block_3/StatefulPartitionedCallІ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_1_192876%token_and_position_embedding_1_192878*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         аю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19211828
6token_and_position_embedding_1/StatefulPartitionedCallХ
#average_pooling1d_1/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_1918972%
#average_pooling1d_1/PartitionedCallЮ
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0transformer_block_3_192882transformer_block_3_192884transformer_block_3_192886transformer_block_3_192888transformer_block_3_192890transformer_block_3_192892transformer_block_3_192894transformer_block_3_192896transformer_block_3_192898transformer_block_3_192900transformer_block_3_192902transformer_block_3_192904transformer_block_3_192906transformer_block_3_192908transformer_block_3_192910transformer_block_3_192912*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1924102-
+transformer_block_3/StatefulPartitionedCall╗
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1925242,
*global_average_pooling1d_1/PartitionedCallъ
concatenate_1/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1925382
concatenate_1/PartitionedCallи
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_192917dense_11_192919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1925582"
 dense_11/StatefulPartitionedCallђ
dropout_10/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925912
dropout_10/PartitionedCall┤
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_12_192923dense_12_192925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1926152"
 dense_12/StatefulPartitionedCallђ
dropout_11/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926482
dropout_11/PartitionedCall┤
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_13_192929dense_13_192931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_1926712"
 dense_13/StatefulPartitionedCall═
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:Q M
)
_output_shapes
:         аю
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
х
s
I__inference_concatenate_1_layer_call_and_return_conditional_losses_192538

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         H2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         H2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:         @:         :O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
Ч
ё
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_192118
x'
#embedding_3_embedding_lookup_192105'
#embedding_2_embedding_lookup_192111
identityѕбembedding_2/embedding_lookupбembedding_3/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaђ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:         2
range»
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_192105range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/192105*'
_output_shapes
:         @*
dtype02
embedding_3/embedding_lookupЎ
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/192105*'
_output_shapes
:         @2'
%embedding_3/embedding_lookup/Identity└
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         @2)
'embedding_3/embedding_lookup/Identity_1r
embedding_2/CastCastx*

DstT0*

SrcT0*)
_output_shapes
:         аю2
embedding_2/Cast╗
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_192111embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/192111*-
_output_shapes
:         аю@*
dtype02
embedding_2/embedding_lookupЪ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/192111*-
_output_shapes
:         аю@2'
%embedding_2/embedding_lookup/Identityк
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         аю@2)
'embedding_2/embedding_lookup/Identity_1»
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:         аю@2
addЪ
IdentityIdentityadd:z:0^embedding_2/embedding_lookup^embedding_3/embedding_lookup*
T0*-
_output_shapes
:         аю@2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:L H
)
_output_shapes
:         аю

_user_specified_namex
н

Я
4__inference_transformer_block_3_layer_call_fn_193931

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityѕбStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1924102
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*k
_input_shapesZ
X:         У@::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
и 
Р
C__inference_dense_9_layer_call_and_return_conditional_losses_194250

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisЛ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisО
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Constђ
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1ѕ
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:         У@2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
Л
Д
-__inference_sequential_3_layer_call_fn_192070
dense_9_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1920592
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:         У@
'
_user_specified_namedense_9_input
ё
P
4__inference_average_pooling1d_1_layer_call_fn_191903

inputs
identityТ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_1918972
PartitionedCallѓ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Ч
ё
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_193573
x'
#embedding_3_embedding_lookup_193560'
#embedding_2_embedding_lookup_193566
identityѕбembedding_2/embedding_lookupбembedding_3/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaђ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:         2
range»
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_193560range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/193560*'
_output_shapes
:         @*
dtype02
embedding_3/embedding_lookupЎ
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/193560*'
_output_shapes
:         @2'
%embedding_3/embedding_lookup/Identity└
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         @2)
'embedding_3/embedding_lookup/Identity_1r
embedding_2/CastCastx*

DstT0*

SrcT0*)
_output_shapes
:         аю2
embedding_2/Cast╗
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_193566embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/193566*-
_output_shapes
:         аю@*
dtype02
embedding_2/embedding_lookupЪ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/193566*-
_output_shapes
:         аю@2'
%embedding_2/embedding_lookup/Identityк
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         аю@2)
'embedding_2/embedding_lookup/Identity_1»
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:         аю@2
addЪ
IdentityIdentityadd:z:0^embedding_2/embedding_lookup^embedding_3/embedding_lookup*
T0*-
_output_shapes
:         аю@2

Identity"
identityIdentity:output:0*0
_input_shapes
:         аю::2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:L H
)
_output_shapes
:         аю

_user_specified_namex
╗I
Ф
H__inference_sequential_3_layer_call_and_return_conditional_losses_194136

inputs-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource.
*dense_10_tensordot_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource
identityѕбdense_10/BiasAdd/ReadVariableOpб!dense_10/Tensordot/ReadVariableOpбdense_9/BiasAdd/ReadVariableOpб dense_9/Tensordot/ReadVariableOp«
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axesЂ
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/freeh
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_9/Tensordot/Shapeё
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axisщ
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2ѕ
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axis 
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Constа
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prodђ
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1е
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1ђ
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axisп
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concatг
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stackЕ
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Tensordot/transpose┐
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_9/Tensordot/ReshapeЙ
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_9/Tensordot/MatMulђ
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_9/Tensordot/Const_2ё
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axisт
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1▒
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Tensordotц
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOpе
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
dense_9/BiasAddu
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Relu▒
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02#
!dense_10/Tensordot/ReadVariableOp|
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_10/Tensordot/axesЃ
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_10/Tensordot/free~
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
dense_10/Tensordot/Shapeє
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/GatherV2/axis■
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2і
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_10/Tensordot/GatherV2_1/axisё
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2_1~
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Constц
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prodѓ
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_1г
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod_1ѓ
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_10/Tensordot/concat/axisП
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat░
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/stack└
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
dense_10/Tensordot/transpose├
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_10/Tensordot/Reshape┬
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_10/Tensordot/MatMulѓ
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_10/Tensordot/Const_2є
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/concat_1/axisЖ
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat_1х
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
dense_10/TensordotД
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOpг
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
dense_10/BiasAddЧ
IdentityIdentitydense_10/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
О
с
D__inference_dense_10_layer_call_and_return_conditional_losses_191984

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisЛ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisО
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Constђ
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1ѕ
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
з
~
)__inference_dense_10_layer_call_fn_194298

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1919842
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
╦П
м5
"__inference__traced_restore_194806
file_prefix$
 assignvariableop_dense_11_kernel$
 assignvariableop_1_dense_11_bias&
"assignvariableop_2_dense_12_kernel$
 assignvariableop_3_dense_12_bias&
"assignvariableop_4_dense_13_kernel$
 assignvariableop_5_dense_13_bias
assignvariableop_6_beta_1
assignvariableop_7_beta_2
assignvariableop_8_decay$
 assignvariableop_9_learning_rate!
assignvariableop_10_adam_iterM
Iassignvariableop_11_token_and_position_embedding_1_embedding_2_embeddingsM
Iassignvariableop_12_token_and_position_embedding_1_embedding_3_embeddingsO
Kassignvariableop_13_transformer_block_3_multi_head_attention_3_query_kernelM
Iassignvariableop_14_transformer_block_3_multi_head_attention_3_query_biasM
Iassignvariableop_15_transformer_block_3_multi_head_attention_3_key_kernelK
Gassignvariableop_16_transformer_block_3_multi_head_attention_3_key_biasO
Kassignvariableop_17_transformer_block_3_multi_head_attention_3_value_kernelM
Iassignvariableop_18_transformer_block_3_multi_head_attention_3_value_biasZ
Vassignvariableop_19_transformer_block_3_multi_head_attention_3_attention_output_kernelX
Tassignvariableop_20_transformer_block_3_multi_head_attention_3_attention_output_bias&
"assignvariableop_21_dense_9_kernel$
 assignvariableop_22_dense_9_bias'
#assignvariableop_23_dense_10_kernel%
!assignvariableop_24_dense_10_biasG
Cassignvariableop_25_transformer_block_3_layer_normalization_6_gammaF
Bassignvariableop_26_transformer_block_3_layer_normalization_6_betaG
Cassignvariableop_27_transformer_block_3_layer_normalization_7_gammaF
Bassignvariableop_28_transformer_block_3_layer_normalization_7_beta
assignvariableop_29_total
assignvariableop_30_count.
*assignvariableop_31_adam_dense_11_kernel_m,
(assignvariableop_32_adam_dense_11_bias_m.
*assignvariableop_33_adam_dense_12_kernel_m,
(assignvariableop_34_adam_dense_12_bias_m.
*assignvariableop_35_adam_dense_13_kernel_m,
(assignvariableop_36_adam_dense_13_bias_mT
Passignvariableop_37_adam_token_and_position_embedding_1_embedding_2_embeddings_mT
Passignvariableop_38_adam_token_and_position_embedding_1_embedding_3_embeddings_mV
Rassignvariableop_39_adam_transformer_block_3_multi_head_attention_3_query_kernel_mT
Passignvariableop_40_adam_transformer_block_3_multi_head_attention_3_query_bias_mT
Passignvariableop_41_adam_transformer_block_3_multi_head_attention_3_key_kernel_mR
Nassignvariableop_42_adam_transformer_block_3_multi_head_attention_3_key_bias_mV
Rassignvariableop_43_adam_transformer_block_3_multi_head_attention_3_value_kernel_mT
Passignvariableop_44_adam_transformer_block_3_multi_head_attention_3_value_bias_ma
]assignvariableop_45_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_m_
[assignvariableop_46_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_m-
)assignvariableop_47_adam_dense_9_kernel_m+
'assignvariableop_48_adam_dense_9_bias_m.
*assignvariableop_49_adam_dense_10_kernel_m,
(assignvariableop_50_adam_dense_10_bias_mN
Jassignvariableop_51_adam_transformer_block_3_layer_normalization_6_gamma_mM
Iassignvariableop_52_adam_transformer_block_3_layer_normalization_6_beta_mN
Jassignvariableop_53_adam_transformer_block_3_layer_normalization_7_gamma_mM
Iassignvariableop_54_adam_transformer_block_3_layer_normalization_7_beta_m.
*assignvariableop_55_adam_dense_11_kernel_v,
(assignvariableop_56_adam_dense_11_bias_v.
*assignvariableop_57_adam_dense_12_kernel_v,
(assignvariableop_58_adam_dense_12_bias_v.
*assignvariableop_59_adam_dense_13_kernel_v,
(assignvariableop_60_adam_dense_13_bias_vT
Passignvariableop_61_adam_token_and_position_embedding_1_embedding_2_embeddings_vT
Passignvariableop_62_adam_token_and_position_embedding_1_embedding_3_embeddings_vV
Rassignvariableop_63_adam_transformer_block_3_multi_head_attention_3_query_kernel_vT
Passignvariableop_64_adam_transformer_block_3_multi_head_attention_3_query_bias_vT
Passignvariableop_65_adam_transformer_block_3_multi_head_attention_3_key_kernel_vR
Nassignvariableop_66_adam_transformer_block_3_multi_head_attention_3_key_bias_vV
Rassignvariableop_67_adam_transformer_block_3_multi_head_attention_3_value_kernel_vT
Passignvariableop_68_adam_transformer_block_3_multi_head_attention_3_value_bias_va
]assignvariableop_69_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_v_
[assignvariableop_70_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_v-
)assignvariableop_71_adam_dense_9_kernel_v+
'assignvariableop_72_adam_dense_9_bias_v.
*assignvariableop_73_adam_dense_10_kernel_v,
(assignvariableop_74_adam_dense_10_bias_vN
Jassignvariableop_75_adam_transformer_block_3_layer_normalization_6_gamma_vM
Iassignvariableop_76_adam_transformer_block_3_layer_normalization_6_beta_vN
Jassignvariableop_77_adam_transformer_block_3_layer_normalization_7_gamma_vM
Iassignvariableop_78_adam_transformer_block_3_layer_normalization_7_beta_v
identity_80ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_61бAssignVariableOp_62бAssignVariableOp_63бAssignVariableOp_64бAssignVariableOp_65бAssignVariableOp_66бAssignVariableOp_67бAssignVariableOp_68бAssignVariableOp_69бAssignVariableOp_7бAssignVariableOp_70бAssignVariableOp_71бAssignVariableOp_72бAssignVariableOp_73бAssignVariableOp_74бAssignVariableOp_75бAssignVariableOp_76бAssignVariableOp_77бAssignVariableOp_78бAssignVariableOp_8бAssignVariableOp_9ъ'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*ф&
valueа&BЮ&PB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names▒
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:P*
dtype0*х
valueФBеPB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЙ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapes├
└::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*^
dtypesT
R2P	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOp assignvariableop_dense_11_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_11_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Д
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ц
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_13_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ц
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_13_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ъ
AssignVariableOp_6AssignVariableOpassignvariableop_6_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ъ
AssignVariableOp_7AssignVariableOpassignvariableop_7_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ю
AssignVariableOp_8AssignVariableOpassignvariableop_8_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ц
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Ц
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Л
AssignVariableOp_11AssignVariableOpIassignvariableop_11_token_and_position_embedding_1_embedding_2_embeddingsIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Л
AssignVariableOp_12AssignVariableOpIassignvariableop_12_token_and_position_embedding_1_embedding_3_embeddingsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13М
AssignVariableOp_13AssignVariableOpKassignvariableop_13_transformer_block_3_multi_head_attention_3_query_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Л
AssignVariableOp_14AssignVariableOpIassignvariableop_14_transformer_block_3_multi_head_attention_3_query_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Л
AssignVariableOp_15AssignVariableOpIassignvariableop_15_transformer_block_3_multi_head_attention_3_key_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¤
AssignVariableOp_16AssignVariableOpGassignvariableop_16_transformer_block_3_multi_head_attention_3_key_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17М
AssignVariableOp_17AssignVariableOpKassignvariableop_17_transformer_block_3_multi_head_attention_3_value_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Л
AssignVariableOp_18AssignVariableOpIassignvariableop_18_transformer_block_3_multi_head_attention_3_value_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19я
AssignVariableOp_19AssignVariableOpVassignvariableop_19_transformer_block_3_multi_head_attention_3_attention_output_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20▄
AssignVariableOp_20AssignVariableOpTassignvariableop_20_transformer_block_3_multi_head_attention_3_attention_output_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ф
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_9_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22е
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_9_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ф
AssignVariableOp_23AssignVariableOp#assignvariableop_23_dense_10_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Е
AssignVariableOp_24AssignVariableOp!assignvariableop_24_dense_10_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╦
AssignVariableOp_25AssignVariableOpCassignvariableop_25_transformer_block_3_layer_normalization_6_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╩
AssignVariableOp_26AssignVariableOpBassignvariableop_26_transformer_block_3_layer_normalization_6_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╦
AssignVariableOp_27AssignVariableOpCassignvariableop_27_transformer_block_3_layer_normalization_7_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╩
AssignVariableOp_28AssignVariableOpBassignvariableop_28_transformer_block_3_layer_normalization_7_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29А
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30А
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_11_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_11_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33▓
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_12_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34░
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_12_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_13_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_13_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37п
AssignVariableOp_37AssignVariableOpPassignvariableop_37_adam_token_and_position_embedding_1_embedding_2_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38п
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_token_and_position_embedding_1_embedding_3_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39┌
AssignVariableOp_39AssignVariableOpRassignvariableop_39_adam_transformer_block_3_multi_head_attention_3_query_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40п
AssignVariableOp_40AssignVariableOpPassignvariableop_40_adam_transformer_block_3_multi_head_attention_3_query_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41п
AssignVariableOp_41AssignVariableOpPassignvariableop_41_adam_transformer_block_3_multi_head_attention_3_key_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42о
AssignVariableOp_42AssignVariableOpNassignvariableop_42_adam_transformer_block_3_multi_head_attention_3_key_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┌
AssignVariableOp_43AssignVariableOpRassignvariableop_43_adam_transformer_block_3_multi_head_attention_3_value_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44п
AssignVariableOp_44AssignVariableOpPassignvariableop_44_adam_transformer_block_3_multi_head_attention_3_value_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45т
AssignVariableOp_45AssignVariableOp]assignvariableop_45_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46с
AssignVariableOp_46AssignVariableOp[assignvariableop_46_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47▒
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_9_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48»
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_9_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49▓
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_10_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50░
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_10_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51м
AssignVariableOp_51AssignVariableOpJassignvariableop_51_adam_transformer_block_3_layer_normalization_6_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Л
AssignVariableOp_52AssignVariableOpIassignvariableop_52_adam_transformer_block_3_layer_normalization_6_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53м
AssignVariableOp_53AssignVariableOpJassignvariableop_53_adam_transformer_block_3_layer_normalization_7_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Л
AssignVariableOp_54AssignVariableOpIassignvariableop_54_adam_transformer_block_3_layer_normalization_7_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55▓
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_11_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56░
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_11_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▓
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_12_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58░
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_12_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▓
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_13_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60░
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_13_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61п
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_token_and_position_embedding_1_embedding_2_embeddings_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62п
AssignVariableOp_62AssignVariableOpPassignvariableop_62_adam_token_and_position_embedding_1_embedding_3_embeddings_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63┌
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_3_multi_head_attention_3_query_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64п
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_3_multi_head_attention_3_query_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65п
AssignVariableOp_65AssignVariableOpPassignvariableop_65_adam_transformer_block_3_multi_head_attention_3_key_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66о
AssignVariableOp_66AssignVariableOpNassignvariableop_66_adam_transformer_block_3_multi_head_attention_3_key_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67┌
AssignVariableOp_67AssignVariableOpRassignvariableop_67_adam_transformer_block_3_multi_head_attention_3_value_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68п
AssignVariableOp_68AssignVariableOpPassignvariableop_68_adam_transformer_block_3_multi_head_attention_3_value_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69т
AssignVariableOp_69AssignVariableOp]assignvariableop_69_adam_transformer_block_3_multi_head_attention_3_attention_output_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70с
AssignVariableOp_70AssignVariableOp[assignvariableop_70_adam_transformer_block_3_multi_head_attention_3_attention_output_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71▒
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_dense_9_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72»
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_dense_9_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73▓
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_10_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74░
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_10_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75м
AssignVariableOp_75AssignVariableOpJassignvariableop_75_adam_transformer_block_3_layer_normalization_6_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76Л
AssignVariableOp_76AssignVariableOpIassignvariableop_76_adam_transformer_block_3_layer_normalization_6_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77м
AssignVariableOp_77AssignVariableOpJassignvariableop_77_adam_transformer_block_3_layer_normalization_7_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78Л
AssignVariableOp_78AssignVariableOpIassignvariableop_78_adam_transformer_block_3_layer_normalization_7_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_789
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpе
Identity_79Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_79Џ
Identity_80IdentityIdentity_79:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_80"#
identity_80Identity_80:output:0*М
_input_shapes┴
Й: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_78AssignVariableOp_782(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
─
С
(__inference_model_1_layer_call_fn_193495
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identityѕбStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_1928182
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
)
_output_shapes
:         аю
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
ь9
я
C__inference_model_1_layer_call_and_return_conditional_losses_192688
input_3
input_4)
%token_and_position_embedding_1_192129)
%token_and_position_embedding_1_192131
transformer_block_3_192486
transformer_block_3_192488
transformer_block_3_192490
transformer_block_3_192492
transformer_block_3_192494
transformer_block_3_192496
transformer_block_3_192498
transformer_block_3_192500
transformer_block_3_192502
transformer_block_3_192504
transformer_block_3_192506
transformer_block_3_192508
transformer_block_3_192510
transformer_block_3_192512
transformer_block_3_192514
transformer_block_3_192516
dense_11_192569
dense_11_192571
dense_12_192626
dense_12_192628
dense_13_192682
dense_13_192684
identityѕб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб"dropout_10/StatefulPartitionedCallб"dropout_11/StatefulPartitionedCallб6token_and_position_embedding_1/StatefulPartitionedCallб+transformer_block_3/StatefulPartitionedCallї
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_3%token_and_position_embedding_1_192129%token_and_position_embedding_1_192131*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         аю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19211828
6token_and_position_embedding_1/StatefulPartitionedCallХ
#average_pooling1d_1/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_1918972%
#average_pooling1d_1/PartitionedCallЮ
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0transformer_block_3_192486transformer_block_3_192488transformer_block_3_192490transformer_block_3_192492transformer_block_3_192494transformer_block_3_192496transformer_block_3_192498transformer_block_3_192500transformer_block_3_192502transformer_block_3_192504transformer_block_3_192506transformer_block_3_192508transformer_block_3_192510transformer_block_3_192512transformer_block_3_192514transformer_block_3_192516*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1922832-
+transformer_block_3/StatefulPartitionedCall╗
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1925242,
*global_average_pooling1d_1/PartitionedCallЮ
concatenate_1/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0input_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1925382
concatenate_1/PartitionedCallи
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_192569dense_11_192571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1925582"
 dense_11/StatefulPartitionedCallў
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925862$
"dropout_10/StatefulPartitionedCall╝
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_12_192626dense_12_192628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1926152"
 dense_12/StatefulPartitionedCallй
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926432$
"dropout_11/StatefulPartitionedCall╝
 dense_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_13_192682dense_13_192684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_1926712"
 dense_13/StatefulPartitionedCallЌ
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
я
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_192524

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         @2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*+
_input_shapes
:         У@:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
ы
}
(__inference_dense_9_layer_call_fn_194259

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1919382
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
э
Ё
H__inference_sequential_3_layer_call_and_return_conditional_losses_192015
dense_9_input
dense_9_192004
dense_9_192006
dense_10_192009
dense_10_192011
identityѕб dense_10/StatefulPartitionedCallбdense_9/StatefulPartitionedCallъ
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_192004dense_9_192006*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1919382!
dense_9/StatefulPartitionedCallЙ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_192009dense_10_192011*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1919842"
 dense_10/StatefulPartitionedCallК
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
,
_output_shapes
:         У@
'
_user_specified_namedense_9_input
в9
я
C__inference_model_1_layer_call_and_return_conditional_losses_192818

inputs
inputs_1)
%token_and_position_embedding_1_192759)
%token_and_position_embedding_1_192761
transformer_block_3_192765
transformer_block_3_192767
transformer_block_3_192769
transformer_block_3_192771
transformer_block_3_192773
transformer_block_3_192775
transformer_block_3_192777
transformer_block_3_192779
transformer_block_3_192781
transformer_block_3_192783
transformer_block_3_192785
transformer_block_3_192787
transformer_block_3_192789
transformer_block_3_192791
transformer_block_3_192793
transformer_block_3_192795
dense_11_192800
dense_11_192802
dense_12_192806
dense_12_192808
dense_13_192812
dense_13_192814
identityѕб dense_11/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб"dropout_10/StatefulPartitionedCallб"dropout_11/StatefulPartitionedCallб6token_and_position_embedding_1/StatefulPartitionedCallб+transformer_block_3/StatefulPartitionedCallІ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_1_192759%token_and_position_embedding_1_192761*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         аю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *c
f^R\
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_19211828
6token_and_position_embedding_1/StatefulPartitionedCallХ
#average_pooling1d_1/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_1918972%
#average_pooling1d_1/PartitionedCallЮ
+transformer_block_3/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0transformer_block_3_192765transformer_block_3_192767transformer_block_3_192769transformer_block_3_192771transformer_block_3_192773transformer_block_3_192775transformer_block_3_192777transformer_block_3_192779transformer_block_3_192781transformer_block_3_192783transformer_block_3_192785transformer_block_3_192787transformer_block_3_192789transformer_block_3_192791transformer_block_3_192793transformer_block_3_192795*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_1922832-
+transformer_block_3/StatefulPartitionedCall╗
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1925242,
*global_average_pooling1d_1/PartitionedCallъ
concatenate_1/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1925382
concatenate_1/PartitionedCallи
 dense_11/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_11_192800dense_11_192802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1925582"
 dense_11/StatefulPartitionedCallў
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1925862$
"dropout_10/StatefulPartitionedCall╝
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_12_192806dense_12_192808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_1926152"
 dense_12/StatefulPartitionedCallй
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926432$
"dropout_11/StatefulPartitionedCall╝
 dense_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_13_192812dense_13_192814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_1926712"
 dense_13/StatefulPartitionedCallЌ
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_3/StatefulPartitionedCall+transformer_block_3/StatefulPartitionedCall:Q M
)
_output_shapes
:         аю
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
╗I
Ф
H__inference_sequential_3_layer_call_and_return_conditional_losses_194193

inputs-
)dense_9_tensordot_readvariableop_resource+
'dense_9_biasadd_readvariableop_resource.
*dense_10_tensordot_readvariableop_resource,
(dense_10_biasadd_readvariableop_resource
identityѕбdense_10/BiasAdd/ReadVariableOpб!dense_10/Tensordot/ReadVariableOpбdense_9/BiasAdd/ReadVariableOpб dense_9/Tensordot/ReadVariableOp«
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02"
 dense_9/Tensordot/ReadVariableOpz
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_9/Tensordot/axesЂ
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_9/Tensordot/freeh
dense_9/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_9/Tensordot/Shapeё
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/GatherV2/axisщ
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2ѕ
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_9/Tensordot/GatherV2_1/axis 
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_9/Tensordot/GatherV2_1|
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Constа
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prodђ
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_9/Tensordot/Const_1е
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_9/Tensordot/Prod_1ђ
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_9/Tensordot/concat/axisп
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concatг
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/stackЕ
dense_9/Tensordot/transpose	Transposeinputs!dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Tensordot/transpose┐
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_9/Tensordot/ReshapeЙ
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_9/Tensordot/MatMulђ
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_9/Tensordot/Const_2ё
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_9/Tensordot/concat_1/axisт
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_9/Tensordot/concat_1▒
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Tensordotц
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_9/BiasAdd/ReadVariableOpе
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
dense_9/BiasAddu
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@2
dense_9/Relu▒
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02#
!dense_10/Tensordot/ReadVariableOp|
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_10/Tensordot/axesЃ
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_10/Tensordot/free~
dense_10/Tensordot/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:2
dense_10/Tensordot/Shapeє
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/GatherV2/axis■
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2і
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_10/Tensordot/GatherV2_1/axisё
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_10/Tensordot/GatherV2_1~
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Constц
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prodѓ
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_10/Tensordot/Const_1г
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_10/Tensordot/Prod_1ѓ
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_10/Tensordot/concat/axisП
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat░
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/stack└
dense_10/Tensordot/transpose	Transposedense_9/Relu:activations:0"dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
dense_10/Tensordot/transpose├
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
dense_10/Tensordot/Reshape┬
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_10/Tensordot/MatMulѓ
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_10/Tensordot/Const_2є
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_10/Tensordot/concat_1/axisЖ
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_10/Tensordot/concat_1х
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
dense_10/TensordotД
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOpг
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2
dense_10/BiasAddЧ
IdentityIdentitydense_10/BiasAdd:output:0 ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
О
с
D__inference_dense_10_layer_call_and_return_conditional_losses_194289

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpќ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisЛ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisО
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Constђ
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1ѕ
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis░
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatї
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackЉ
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         У@2
Tensordot/transposeЪ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2
Tensordot/Reshapeъ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisй
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Љ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2
	Tensordotї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :         У@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
╔
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_192648

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╔
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_192591

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
├
W
;__inference_global_average_pooling1d_1_layer_call_fn_193942

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *_
fZRX
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_1925242
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*+
_input_shapes
:         У@:T P
,
_output_shapes
:         У@
 
_user_specified_nameinputs
═Ў
ю
!__inference__wrapped_model_191888
input_3
input_4N
Jmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_191722N
Jmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_191728b
^model_1_transformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resourceX
Tmodel_1_transformer_block_3_multi_head_attention_3_query_add_readvariableop_resource`
\model_1_transformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resourceV
Rmodel_1_transformer_block_3_multi_head_attention_3_key_add_readvariableop_resourceb
^model_1_transformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resourceX
Tmodel_1_transformer_block_3_multi_head_attention_3_value_add_readvariableop_resourcem
imodel_1_transformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resourcec
_model_1_transformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource[
Wmodel_1_transformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resourceW
Smodel_1_transformer_block_3_layer_normalization_6_batchnorm_readvariableop_resourceV
Rmodel_1_transformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resourceT
Pmodel_1_transformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resourceW
Smodel_1_transformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resourceU
Qmodel_1_transformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource[
Wmodel_1_transformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resourceW
Smodel_1_transformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource3
/model_1_dense_11_matmul_readvariableop_resource4
0model_1_dense_11_biasadd_readvariableop_resource3
/model_1_dense_12_matmul_readvariableop_resource4
0model_1_dense_12_biasadd_readvariableop_resource3
/model_1_dense_13_matmul_readvariableop_resource4
0model_1_dense_13_biasadd_readvariableop_resource
identityѕб'model_1/dense_11/BiasAdd/ReadVariableOpб&model_1/dense_11/MatMul/ReadVariableOpб'model_1/dense_12/BiasAdd/ReadVariableOpб&model_1/dense_12/MatMul/ReadVariableOpб'model_1/dense_13/BiasAdd/ReadVariableOpб&model_1/dense_13/MatMul/ReadVariableOpбCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupбCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupбJmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpбNmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpбJmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpбNmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpбVmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpб`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpбImodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpбSmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpбKmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpбUmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpбKmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpбUmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpбHmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpбJmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpбGmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpбImodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpЊ
,model_1/token_and_position_embedding_1/ShapeShapeinput_3*
T0*
_output_shapes
:2.
,model_1/token_and_position_embedding_1/Shape╦
:model_1/token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2<
:model_1/token_and_position_embedding_1/strided_slice/stackк
<model_1/token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model_1/token_and_position_embedding_1/strided_slice/stack_1к
<model_1/token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_1/token_and_position_embedding_1/strided_slice/stack_2╠
4model_1/token_and_position_embedding_1/strided_sliceStridedSlice5model_1/token_and_position_embedding_1/Shape:output:0Cmodel_1/token_and_position_embedding_1/strided_slice/stack:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_1:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model_1/token_and_position_embedding_1/strided_sliceф
2model_1/token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_1/token_and_position_embedding_1/range/startф
2model_1/token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2model_1/token_and_position_embedding_1/range/delta├
,model_1/token_and_position_embedding_1/rangeRange;model_1/token_and_position_embedding_1/range/start:output:0=model_1/token_and_position_embedding_1/strided_slice:output:0;model_1/token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:         2.
,model_1/token_and_position_embedding_1/rangeЫ
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherJmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_1917225model_1/token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/191722*'
_output_shapes
:         @*
dtype02E
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupх
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/191722*'
_output_shapes
:         @2N
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identityх
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         @2P
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1к
7model_1/token_and_position_embedding_1/embedding_2/CastCastinput_3*

DstT0*

SrcT0*)
_output_shapes
:         аю29
7model_1/token_and_position_embedding_1/embedding_2/Cast■
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherJmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_191728;model_1/token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/191728*-
_output_shapes
:         аю@*
dtype02E
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup╗
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*]
_classS
QOloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/191728*-
_output_shapes
:         аю@2N
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity╗
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         аю@2P
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1╦
*model_1/token_and_position_embedding_1/addAddV2Wmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Wmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:         аю@2,
*model_1/token_and_position_embedding_1/addџ
*model_1/average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_1/average_pooling1d_1/ExpandDims/dim 
&model_1/average_pooling1d_1/ExpandDims
ExpandDims.model_1/token_and_position_embedding_1/add:z:03model_1/average_pooling1d_1/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         аю@2(
&model_1/average_pooling1d_1/ExpandDims§
#model_1/average_pooling1d_1/AvgPoolAvgPool/model_1/average_pooling1d_1/ExpandDims:output:0*
T0*0
_output_shapes
:         У@*
ksize
*
paddingVALID*
strides
2%
#model_1/average_pooling1d_1/AvgPoolЛ
#model_1/average_pooling1d_1/SqueezeSqueeze,model_1/average_pooling1d_1/AvgPool:output:0*
T0*,
_output_shapes
:         У@*
squeeze_dims
2%
#model_1/average_pooling1d_1/SqueezeЛ
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_block_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02W
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpѕ
Fmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/EinsumEinsum,model_1/average_pooling1d_1/Squeeze:output:0]model_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2H
Fmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum»
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpTmodel_1_transformer_block_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02M
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpТ
<model_1/transformer_block_3/multi_head_attention_3/query/addAddV2Omodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum:output:0Smodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2>
<model_1/transformer_block_3/multi_head_attention_3/query/add╦
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_1_transformer_block_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02U
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpѓ
Dmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/EinsumEinsum,model_1/average_pooling1d_1/Squeeze:output:0[model_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2F
Dmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/EinsumЕ
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpRmodel_1_transformer_block_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02K
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpя
:model_1/transformer_block_3/multi_head_attention_3/key/addAddV2Mmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum:output:0Qmodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2<
:model_1/transformer_block_3/multi_head_attention_3/key/addЛ
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_block_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02W
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpѕ
Fmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/EinsumEinsum,model_1/average_pooling1d_1/Squeeze:output:0]model_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:         У@*
equationabc,cde->abde2H
Fmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum»
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpTmodel_1_transformer_block_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02M
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpТ
<model_1/transformer_block_3/multi_head_attention_3/value/addAddV2Omodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum:output:0Smodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:         У@2>
<model_1/transformer_block_3/multi_head_attention_3/value/add╣
8model_1/transformer_block_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2:
8model_1/transformer_block_3/multi_head_attention_3/Mul/yи
6model_1/transformer_block_3/multi_head_attention_3/MulMul@model_1/transformer_block_3/multi_head_attention_3/query/add:z:0Amodel_1/transformer_block_3/multi_head_attention_3/Mul/y:output:0*
T0*0
_output_shapes
:         У@28
6model_1/transformer_block_3/multi_head_attention_3/MulЬ
@model_1/transformer_block_3/multi_head_attention_3/einsum/EinsumEinsum>model_1/transformer_block_3/multi_head_attention_3/key/add:z:0:model_1/transformer_block_3/multi_head_attention_3/Mul:z:0*
N*
T0*1
_output_shapes
:         УУ*
equationaecd,abcd->acbe2B
@model_1/transformer_block_3/multi_head_attention_3/einsum/Einsumџ
Bmodel_1/transformer_block_3/multi_head_attention_3/softmax/SoftmaxSoftmaxImodel_1/transformer_block_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*1
_output_shapes
:         УУ2D
Bmodel_1/transformer_block_3/multi_head_attention_3/softmax/Softmaxа
Cmodel_1/transformer_block_3/multi_head_attention_3/dropout/IdentityIdentityLmodel_1/transformer_block_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:         УУ2E
Cmodel_1/transformer_block_3/multi_head_attention_3/dropout/IdentityЁ
Bmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/EinsumEinsumLmodel_1/transformer_block_3/multi_head_attention_3/dropout/Identity:output:0@model_1/transformer_block_3/multi_head_attention_3/value/add:z:0*
N*
T0*0
_output_shapes
:         У@*
equationacbe,aecd->abcd2D
Bmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/EinsumЫ
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_1_transformer_block_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02b
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp─
Qmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumKmodel_1/transformer_block_3/multi_head_attention_3/einsum_1/Einsum:output:0hmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:         У@*
equationabcd,cde->abe2S
Qmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum╠
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOp_model_1_transformer_block_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02X
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpј
Gmodel_1/transformer_block_3/multi_head_attention_3/attention_output/addAddV2Zmodel_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0^model_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2I
Gmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add­
.model_1/transformer_block_3/dropout_8/IdentityIdentityKmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add:z:0*
T0*,
_output_shapes
:         У@20
.model_1/transformer_block_3/dropout_8/Identityж
model_1/transformer_block_3/addAddV2,model_1/average_pooling1d_1/Squeeze:output:07model_1/transformer_block_3/dropout_8/Identity:output:0*
T0*,
_output_shapes
:         У@2!
model_1/transformer_block_3/addЬ
Pmodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indicesл
>model_1/transformer_block_3/layer_normalization_6/moments/meanMean#model_1/transformer_block_3/add:z:0Ymodel_1/transformer_block_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2@
>model_1/transformer_block_3/layer_normalization_6/moments/meanа
Fmodel_1/transformer_block_3/layer_normalization_6/moments/StopGradientStopGradientGmodel_1/transformer_block_3/layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:         У2H
Fmodel_1/transformer_block_3/layer_normalization_6/moments/StopGradient▄
Kmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifference#model_1/transformer_block_3/add:z:0Omodel_1/transformer_block_3/layer_normalization_6/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2M
Kmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifferenceШ
Tmodel_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indicesѕ
Bmodel_1/transformer_block_3/layer_normalization_6/moments/varianceMeanOmodel_1/transformer_block_3/layer_normalization_6/moments/SquaredDifference:z:0]model_1/transformer_block_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2D
Bmodel_1/transformer_block_3/layer_normalization_6/moments/variance╦
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/y█
?model_1/transformer_block_3/layer_normalization_6/batchnorm/addAddV2Kmodel_1/transformer_block_3/layer_normalization_6/moments/variance:output:0Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/addІ
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/RsqrtRsqrtCmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/Rsqrt┤
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_1_transformer_block_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02P
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp▀
?model_1/transformer_block_3/layer_normalization_6/batchnorm/mulMulEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/Rsqrt:y:0Vmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/mul«
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1Mul#model_1/transformer_block_3/add:z:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1м
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2MulGmodel_1/transformer_block_3/layer_normalization_6/moments/mean:output:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2е
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp█
?model_1/transformer_block_3/layer_normalization_6/batchnorm/subSubRmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2A
?model_1/transformer_block_3/layer_normalization_6/batchnorm/subм
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul_1:z:0Cmodel_1/transformer_block_3/layer_normalization_6/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1Е
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpReadVariableOpRmodel_1_transformer_block_3_sequential_3_dense_9_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02K
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp╠
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/axesМ
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/freeщ
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ShapeShapeEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shapeо
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axisк
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2GatherV2Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2┌
Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis╠
Emodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1GatherV2Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Shape:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Smodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
Emodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1╬
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const─
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ProdProdLmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?model_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prodм
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1╠
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1ProdNmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2_1:output:0Kmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1м
Fmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axisЦ
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concatConcatV2Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/free:output:0Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/axes:output:0Omodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concatл
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/stackPackHmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod:output:0Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@model_1/transformer_block_3/sequential_3/dense_9/Tensordot/stackс
Dmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transpose	TransposeEmodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:0Jmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2F
Dmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transposeс
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeReshapeHmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/transpose:y:0Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReshapeР
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMulMatMulKmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Reshape:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2C
Amodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMulм
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2D
Bmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2о
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis▓
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1ConcatV2Lmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/GatherV2:output:0Kmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/Const_2:output:0Qmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
Cmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1Н
:model_1/transformer_block_3/sequential_3/dense_9/TensordotReshapeKmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/MatMul:product:0Lmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2<
:model_1/transformer_block_3/sequential_3/dense_9/TensordotЪ
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpReadVariableOpPmodel_1_transformer_block_3_sequential_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02I
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp╠
8model_1/transformer_block_3/sequential_3/dense_9/BiasAddBiasAddCmodel_1/transformer_block_3/sequential_3/dense_9/Tensordot:output:0Omodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2:
8model_1/transformer_block_3/sequential_3/dense_9/BiasAdd­
5model_1/transformer_block_3/sequential_3/dense_9/ReluReluAmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd:output:0*
T0*,
_output_shapes
:         У@27
5model_1/transformer_block_3/sequential_3/dense_9/Reluг
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_sequential_3_dense_10_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype02L
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp╬
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/axesН
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/freeщ
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ShapeShapeCmodel_1/transformer_block_3/sequential_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shapeп
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis╦
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2GatherV2Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2▄
Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axisЛ
Fmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1GatherV2Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Shape:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Tmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1л
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const╚
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/ProdProdMmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prodн
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1л
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1ProdOmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2_1:output:0Lmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1н
Gmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axisф
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concatConcatV2Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/free:output:0Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/axes:output:0Pmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concatн
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stackPackImodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod:output:0Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stackС
Emodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transpose	TransposeCmodel_1/transformer_block_3/sequential_3/dense_9/Relu:activations:0Kmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat:output:0*
T0*,
_output_shapes
:         У@2G
Emodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transposeу
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeReshapeImodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/transpose:y:0Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReshapeТ
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMulMatMulLmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Reshape:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2D
Bmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMulн
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2E
Cmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2п
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axisи
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1ConcatV2Mmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/GatherV2:output:0Lmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/Const_2:output:0Rmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1┘
;model_1/transformer_block_3/sequential_3/dense_10/TensordotReshapeLmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/MatMul:product:0Mmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         У@2=
;model_1/transformer_block_3/sequential_3/dense_10/Tensordotб
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOpQmodel_1_transformer_block_3_sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpл
9model_1/transformer_block_3/sequential_3/dense_10/BiasAddBiasAddDmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot:output:0Pmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2;
9model_1/transformer_block_3/sequential_3/dense_10/BiasAddу
.model_1/transformer_block_3/dropout_9/IdentityIdentityBmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:         У@20
.model_1/transformer_block_3/dropout_9/Identityє
!model_1/transformer_block_3/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_6/batchnorm/add_1:z:07model_1/transformer_block_3/dropout_9/Identity:output:0*
T0*,
_output_shapes
:         У@2#
!model_1/transformer_block_3/add_1Ь
Pmodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indicesм
>model_1/transformer_block_3/layer_normalization_7/moments/meanMean%model_1/transformer_block_3/add_1:z:0Ymodel_1/transformer_block_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2@
>model_1/transformer_block_3/layer_normalization_7/moments/meanа
Fmodel_1/transformer_block_3/layer_normalization_7/moments/StopGradientStopGradientGmodel_1/transformer_block_3/layer_normalization_7/moments/mean:output:0*
T0*,
_output_shapes
:         У2H
Fmodel_1/transformer_block_3/layer_normalization_7/moments/StopGradientя
Kmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifference%model_1/transformer_block_3/add_1:z:0Omodel_1/transformer_block_3/layer_normalization_7/moments/StopGradient:output:0*
T0*,
_output_shapes
:         У@2M
Kmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifferenceШ
Tmodel_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indicesѕ
Bmodel_1/transformer_block_3/layer_normalization_7/moments/varianceMeanOmodel_1/transformer_block_3/layer_normalization_7/moments/SquaredDifference:z:0]model_1/transformer_block_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:         У*
	keep_dims(2D
Bmodel_1/transformer_block_3/layer_normalization_7/moments/variance╦
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *й7є52C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/y█
?model_1/transformer_block_3/layer_normalization_7/batchnorm/addAddV2Kmodel_1/transformer_block_3/layer_normalization_7/moments/variance:output:0Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*,
_output_shapes
:         У2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/addІ
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/RsqrtRsqrtCmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add:z:0*
T0*,
_output_shapes
:         У2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/Rsqrt┤
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_1_transformer_block_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02P
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp▀
?model_1/transformer_block_3/layer_normalization_7/batchnorm/mulMulEmodel_1/transformer_block_3/layer_normalization_7/batchnorm/Rsqrt:y:0Vmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:         У@2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/mul░
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1Mul%model_1/transformer_block_3/add_1:z:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1м
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2MulGmodel_1/transformer_block_3/layer_normalization_7/moments/mean:output:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2е
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpSmodel_1_transformer_block_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp█
?model_1/transformer_block_3/layer_normalization_7/batchnorm/subSubRmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0Emodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:         У@2A
?model_1/transformer_block_3/layer_normalization_7/batchnorm/subм
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1AddV2Emodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul_1:z:0Cmodel_1/transformer_block_3/layer_normalization_7/batchnorm/sub:z:0*
T0*,
_output_shapes
:         У@2C
Amodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1И
9model_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9model_1/global_average_pooling1d_1/Mean/reduction_indicesЌ
'model_1/global_average_pooling1d_1/MeanMeanEmodel_1/transformer_block_3/layer_normalization_7/batchnorm/add_1:z:0Bmodel_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         @2)
'model_1/global_average_pooling1d_1/Meanѕ
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_1/concatenate_1/concat/axisЖ
model_1/concatenate_1/concatConcatV20model_1/global_average_pooling1d_1/Mean:output:0input_4*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:         H2
model_1/concatenate_1/concat└
&model_1/dense_11/MatMul/ReadVariableOpReadVariableOp/model_1_dense_11_matmul_readvariableop_resource*
_output_shapes

:H@*
dtype02(
&model_1/dense_11/MatMul/ReadVariableOp┼
model_1/dense_11/MatMulMatMul%model_1/concatenate_1/concat:output:0.model_1/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_1/dense_11/MatMul┐
'model_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/dense_11/BiasAdd/ReadVariableOp┼
model_1/dense_11/BiasAddBiasAdd!model_1/dense_11/MatMul:product:0/model_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_1/dense_11/BiasAddІ
model_1/dense_11/ReluRelu!model_1/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_1/dense_11/ReluЮ
model_1/dropout_10/IdentityIdentity#model_1/dense_11/Relu:activations:0*
T0*'
_output_shapes
:         @2
model_1/dropout_10/Identity└
&model_1/dense_12/MatMul/ReadVariableOpReadVariableOp/model_1_dense_12_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&model_1/dense_12/MatMul/ReadVariableOp─
model_1/dense_12/MatMulMatMul$model_1/dropout_10/Identity:output:0.model_1/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_1/dense_12/MatMul┐
'model_1/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/dense_12/BiasAdd/ReadVariableOp┼
model_1/dense_12/BiasAddBiasAdd!model_1/dense_12/MatMul:product:0/model_1/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
model_1/dense_12/BiasAddІ
model_1/dense_12/ReluRelu!model_1/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
model_1/dense_12/ReluЮ
model_1/dropout_11/IdentityIdentity#model_1/dense_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
model_1/dropout_11/Identity└
&model_1/dense_13/MatMul/ReadVariableOpReadVariableOp/model_1_dense_13_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&model_1/dense_13/MatMul/ReadVariableOp─
model_1/dense_13/MatMulMatMul$model_1/dropout_11/Identity:output:0.model_1/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_1/dense_13/MatMul┐
'model_1/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/dense_13/BiasAdd/ReadVariableOp┼
model_1/dense_13/BiasAddBiasAdd!model_1/dense_13/MatMul:product:0/model_1/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_1/dense_13/BiasAddј
IdentityIdentity!model_1/dense_13/BiasAdd:output:0(^model_1/dense_11/BiasAdd/ReadVariableOp'^model_1/dense_11/MatMul/ReadVariableOp(^model_1/dense_12/BiasAdd/ReadVariableOp'^model_1/dense_12/MatMul/ReadVariableOp(^model_1/dense_13/BiasAdd/ReadVariableOp'^model_1/dense_13/MatMul/ReadVariableOpD^model_1/token_and_position_embedding_1/embedding_2/embedding_lookupD^model_1/token_and_position_embedding_1/embedding_3/embedding_lookupK^model_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpO^model_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpK^model_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpO^model_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpW^model_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpa^model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpJ^model_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpT^model_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpL^model_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpV^model_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpL^model_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpV^model_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpI^model_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpK^model_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpH^model_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpJ^model_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::2R
'model_1/dense_11/BiasAdd/ReadVariableOp'model_1/dense_11/BiasAdd/ReadVariableOp2P
&model_1/dense_11/MatMul/ReadVariableOp&model_1/dense_11/MatMul/ReadVariableOp2R
'model_1/dense_12/BiasAdd/ReadVariableOp'model_1/dense_12/BiasAdd/ReadVariableOp2P
&model_1/dense_12/MatMul/ReadVariableOp&model_1/dense_12/MatMul/ReadVariableOp2R
'model_1/dense_13/BiasAdd/ReadVariableOp'model_1/dense_13/BiasAdd/ReadVariableOp2P
&model_1/dense_13/MatMul/ReadVariableOp&model_1/dense_13/MatMul/ReadVariableOp2і
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup2і
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup2ў
Jmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOpJmodel_1/transformer_block_3/layer_normalization_6/batchnorm/ReadVariableOp2а
Nmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOpNmodel_1/transformer_block_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2ў
Jmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOpJmodel_1/transformer_block_3/layer_normalization_7/batchnorm/ReadVariableOp2а
Nmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOpNmodel_1/transformer_block_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2░
Vmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOpVmodel_1/transformer_block_3/multi_head_attention_3/attention_output/add/ReadVariableOp2─
`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp`model_1/transformer_block_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2ќ
Imodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOpImodel_1/transformer_block_3/multi_head_attention_3/key/add/ReadVariableOp2ф
Smodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpSmodel_1/transformer_block_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2џ
Kmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOpKmodel_1/transformer_block_3/multi_head_attention_3/query/add/ReadVariableOp2«
Umodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpUmodel_1/transformer_block_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2џ
Kmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOpKmodel_1/transformer_block_3/multi_head_attention_3/value/add/ReadVariableOp2«
Umodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpUmodel_1/transformer_block_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2ћ
Hmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOpHmodel_1/transformer_block_3/sequential_3/dense_10/BiasAdd/ReadVariableOp2ў
Jmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOpJmodel_1/transformer_block_3/sequential_3/dense_10/Tensordot/ReadVariableOp2њ
Gmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOpGmodel_1/transformer_block_3/sequential_3/dense_9/BiasAdd/ReadVariableOp2ќ
Imodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOpImodel_1/transformer_block_3/sequential_3/dense_9/Tensordot/ReadVariableOp:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
Й
Р
(__inference_model_1_layer_call_fn_192869
input_3
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identityѕбStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_1928182
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
њ
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193948

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╔
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_194003

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ј
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_194045

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape└
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▀
~
)__inference_dense_11_layer_call_fn_193986

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1925582
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         H::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         H
 
_user_specified_nameinputs
Ц
d
+__inference_dropout_11_layer_call_fn_194055

inputs
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1926432
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Й
Р
(__inference_model_1_layer_call_fn_192986
input_3
input_4
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22
identityѕбStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_1929352
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*Ю
_input_shapesІ
ѕ:         аю:         ::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:         аю
!
_user_specified_name	input_3:PL
'
_output_shapes
:         
!
_user_specified_name	input_4
э
Ё
H__inference_sequential_3_layer_call_and_return_conditional_losses_192001
dense_9_input
dense_9_191949
dense_9_191951
dense_10_191995
dense_10_191997
identityѕб dense_10/StatefulPartitionedCallбdense_9/StatefulPartitionedCallъ
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_191949dense_9_191951*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1919382!
dense_9/StatefulPartitionedCallЙ
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_191995dense_10_191997*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         У@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_1919842"
 dense_10/StatefulPartitionedCallК
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0!^dense_10/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
T0*,
_output_shapes
:         У@2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         У@::::2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:[ W
,
_output_shapes
:         У@
'
_user_specified_namedense_9_input
Ь	
П
D__inference_dense_12_layer_call_and_return_conditional_losses_192615

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╔
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_194050

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ж
serving_defaultо
=
input_32
serving_default_input_3:0         аю
;
input_40
serving_default_input_4:0         <
dense_130
StatefulPartitionedCall:0         tensorflow/serving/predict:н└
Є*
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
Ь__call__
№_default_save_signature
+­&call_and_return_all_conditional_losses"Ў&
_tf_keras_network§%{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "TokenAndPositionEmbedding", "config": {"layer was saved without config": true}, "name": "token_and_position_embedding_1", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [20]}, "pool_size": {"class_name": "__tuple__", "items": [20]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_1", "inbound_nodes": [[["token_and_position_embedding_1", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block_3", "inbound_nodes": [[["average_pooling1d_1", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling1d_1", "inbound_nodes": [[["transformer_block_3", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["global_average_pooling1d_1", 0, 0, {}], ["input_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_11", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_10", "inbound_nodes": [[["dense_11", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_12", "inbound_nodes": [[["dropout_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_11", "inbound_nodes": [[["dense_12", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_13", "inbound_nodes": [[["dropout_11", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["dense_13", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20000]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 20000]}, {"class_name": "TensorShape", "items": [null, 8]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ы"Ь
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
у
	token_emb
pos_emb
	variables
regularization_losses
trainable_variables
	keras_api
ы__call__
+Ы&call_and_return_all_conditional_losses"║
_tf_keras_layerа{"class_name": "TokenAndPositionEmbedding", "name": "token_and_position_embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ѕ
	variables
regularization_losses
trainable_variables
	keras_api
з__call__
+З&call_and_return_all_conditional_losses"Э
_tf_keras_layerя{"class_name": "AveragePooling1D", "name": "average_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [20]}, "pool_size": {"class_name": "__tuple__", "items": [20]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ё
att
ffn

layernorm1
 
layernorm2
!dropout1
"dropout2
#	variables
$regularization_losses
%trainable_variables
&	keras_api
ш__call__
+Ш&call_and_return_all_conditional_losses"Ц
_tf_keras_layerІ{"class_name": "TransformerBlock", "name": "transformer_block_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ў
'	variables
(regularization_losses
)trainable_variables
*	keras_api
э__call__
+Э&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerЬ{"class_name": "GlobalAveragePooling1D", "name": "global_average_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ж"Т
_tf_keras_input_layerк{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
╬
+	variables
,regularization_losses
-trainable_variables
.	keras_api
щ__call__
+Щ&call_and_return_all_conditional_losses"й
_tf_keras_layerБ{"class_name": "Concatenate", "name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 64]}, {"class_name": "TensorShape", "items": [null, 8]}]}
З

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
ч__call__
+Ч&call_and_return_all_conditional_losses"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 72}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 72]}}
ж
5	variables
6regularization_losses
7trainable_variables
8	keras_api
§__call__
+■&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_10", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
З

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
 __call__
+ђ&call_and_return_all_conditional_losses"═
_tf_keras_layer│{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ж
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_11", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ш

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"╬
_tf_keras_layer┤{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
│

Ibeta_1

Jbeta_2
	Kdecay
Llearning_rate
Miter/mЙ0m┐9m└:m┴Cm┬Dm├Nm─Om┼PmкQmКRm╚Sm╔Tm╩Um╦Vm╠Wm═Xm╬Ym¤Zmл[mЛ\mм]mМ^mн_mН/vо0vО9vп:v┘Cv┌Dv█Nv▄OvПPvяQv▀RvЯSvрTvРUvсVvСWvтXvТYvуZvУ[vж\vЖ]vв^vВ_vь"
	optimizer
о
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
/18
019
920
:21
C22
D23"
trackable_list_wrapper
 "
trackable_list_wrapper
о
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
/18
019
920
:21
C22
D23"
trackable_list_wrapper
╬
`layer_regularization_losses

alayers
	variables
regularization_losses
blayer_metrics
cmetrics
trainable_variables
dnon_trainable_variables
Ь__call__
№_default_save_signature
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
-
Ёserving_default"
signature_map
░
N
embeddings
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
є__call__
+Є&call_and_return_all_conditional_losses"Ј
_tf_keras_layerш{"class_name": "Embedding", "name": "embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 5, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000]}}
Г
O
embeddings
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses"ї
_tf_keras_layerЫ{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 20000, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
░
mlayer_regularization_losses

nlayers
	variables
regularization_losses
olayer_metrics
pmetrics
trainable_variables
qnon_trainable_variables
ы__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
rlayer_regularization_losses

slayers
	variables
regularization_losses
tlayer_metrics
umetrics
trainable_variables
vnon_trainable_variables
з__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 
w_query_dense
x
_key_dense
y_value_dense
z_softmax
{_dropout_layer
|_output_dense
}	variables
~regularization_losses
trainable_variables
ђ	keras_api
і__call__
+І&call_and_return_all_conditional_losses"ё
_tf_keras_layerЖ{"class_name": "MultiHeadAttention", "name": "multi_head_attention_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multi_head_attention_3", "trainable": true, "dtype": "float32", "num_heads": 1, "key_dim": 64, "value_dim": 64, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}
▒
Ђlayer_with_weights-0
Ђlayer-0
ѓlayer_with_weights-1
ѓlayer-1
Ѓ	variables
ёregularization_losses
Ёtrainable_variables
є	keras_api
ї__call__
+Ї&call_and_return_all_conditional_losses"╩
_tf_keras_sequentialФ{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1000, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1000, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
Ж
	Єaxis
	\gamma
]beta
ѕ	variables
Ѕregularization_losses
іtrainable_variables
І	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses"х
_tf_keras_layerЏ{"class_name": "LayerNormalization", "name": "layer_normalization_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_6", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
Ж
	їaxis
	^gamma
_beta
Ї	variables
јregularization_losses
Јtrainable_variables
љ	keras_api
љ__call__
+Љ&call_and_return_all_conditional_losses"х
_tf_keras_layerЏ{"class_name": "LayerNormalization", "name": "layer_normalization_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_7", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
в
Љ	variables
њregularization_losses
Њtrainable_variables
ћ	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"о
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
в
Ћ	variables
ќregularization_losses
Ќtrainable_variables
ў	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"о
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ќ
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
\12
]13
^14
_15"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
\12
]13
^14
_15"
trackable_list_wrapper
х
 Ўlayer_regularization_losses
џlayers
#	variables
$regularization_losses
Џlayer_metrics
юmetrics
%trainable_variables
Юnon_trainable_variables
ш__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
 ъlayer_regularization_losses
Ъlayers
'	variables
(regularization_losses
аlayer_metrics
Аmetrics
)trainable_variables
бnon_trainable_variables
э__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
 Бlayer_regularization_losses
цlayers
+	variables
,regularization_losses
Цlayer_metrics
дmetrics
-trainable_variables
Дnon_trainable_variables
щ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
!:H@2dense_11/kernel
:@2dense_11/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
х
 еlayer_regularization_losses
Еlayers
1	variables
2regularization_losses
фlayer_metrics
Фmetrics
3trainable_variables
гnon_trainable_variables
ч__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
 Гlayer_regularization_losses
«layers
5	variables
6regularization_losses
»layer_metrics
░metrics
7trainable_variables
▒non_trainable_variables
§__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_12/kernel
:@2dense_12/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
х
 ▓layer_regularization_losses
│layers
;	variables
<regularization_losses
┤layer_metrics
хmetrics
=trainable_variables
Хnon_trainable_variables
 __call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
 иlayer_regularization_losses
Иlayers
?	variables
@regularization_losses
╣layer_metrics
║metrics
Atrainable_variables
╗non_trainable_variables
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_13/kernel
:2dense_13/bias
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
х
 ╝layer_regularization_losses
йlayers
E	variables
Fregularization_losses
Йlayer_metrics
┐metrics
Gtrainable_variables
└non_trainable_variables
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
G:E@25token_and_position_embedding_1/embedding_2/embeddings
I:G
аю@25token_and_position_embedding_1/embedding_3/embeddings
M:K@@27transformer_block_3/multi_head_attention_3/query/kernel
G:E@25transformer_block_3/multi_head_attention_3/query/bias
K:I@@25transformer_block_3/multi_head_attention_3/key/kernel
E:C@23transformer_block_3/multi_head_attention_3/key/bias
M:K@@27transformer_block_3/multi_head_attention_3/value/kernel
G:E@25transformer_block_3/multi_head_attention_3/value/bias
X:V@@2Btransformer_block_3/multi_head_attention_3/attention_output/kernel
N:L@2@transformer_block_3/multi_head_attention_3/attention_output/bias
 :@@2dense_9/kernel
:@2dense_9/bias
!:@@2dense_10/kernel
:@2dense_10/bias
=:;@2/transformer_block_3/layer_normalization_6/gamma
<::@2.transformer_block_3/layer_normalization_6/beta
=:;@2/transformer_block_3/layer_normalization_7/gamma
<::@2.transformer_block_3/layer_normalization_7/beta
 "
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
 "
trackable_dict_wrapper
(
┴0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
N0"
trackable_list_wrapper
х
 ┬layer_regularization_losses
├layers
e	variables
fregularization_losses
─layer_metrics
┼metrics
gtrainable_variables
кnon_trainable_variables
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
'
O0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
O0"
trackable_list_wrapper
х
 Кlayer_regularization_losses
╚layers
i	variables
jregularization_losses
╔layer_metrics
╩metrics
ktrainable_variables
╦non_trainable_variables
ѕ__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
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
╦
╠partial_output_shape
═full_output_shape

Pkernel
Qbias
╬	variables
¤regularization_losses
лtrainable_variables
Л	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"ь
_tf_keras_layerМ{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
К
мpartial_output_shape
Мfull_output_shape

Rkernel
Sbias
н	variables
Нregularization_losses
оtrainable_variables
О	keras_api
ў__call__
+Ў&call_and_return_all_conditional_losses"ж
_tf_keras_layer¤{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
╦
пpartial_output_shape
┘full_output_shape

Tkernel
Ubias
┌	variables
█regularization_losses
▄trainable_variables
П	keras_api
џ__call__
+Џ&call_and_return_all_conditional_losses"ь
_tf_keras_layerМ{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 64], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
в
я	variables
▀regularization_losses
Яtrainable_variables
р	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses"о
_tf_keras_layer╝{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}}
у
Р	variables
сregularization_losses
Сtrainable_variables
т	keras_api
ъ__call__
+Ъ&call_and_return_all_conditional_losses"м
_tf_keras_layerИ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}}
Я
Тpartial_output_shape
уfull_output_shape

Vkernel
Wbias
У	variables
жregularization_losses
Жtrainable_variables
в	keras_api
а__call__
+А&call_and_return_all_conditional_losses"ѓ
_tf_keras_layerУ{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 64], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 1, 64]}}
X
P0
Q1
R2
S3
T4
U5
V6
W7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
P0
Q1
R2
S3
T4
U5
V6
W7"
trackable_list_wrapper
х
 Вlayer_regularization_losses
ьlayers
}	variables
~regularization_losses
Ьlayer_metrics
№metrics
trainable_variables
­non_trainable_variables
і__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
Ч

Xkernel
Ybias
ы	variables
Ыregularization_losses
зtrainable_variables
З	keras_api
б__call__
+Б&call_and_return_all_conditional_losses"Л
_tf_keras_layerи{"class_name": "Dense", "name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
ђ

Zkernel
[bias
ш	variables
Шregularization_losses
эtrainable_variables
Э	keras_api
ц__call__
+Ц&call_and_return_all_conditional_losses"Н
_tf_keras_layer╗{"class_name": "Dense", "name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000, 64]}}
<
X0
Y1
Z2
[3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
X0
Y1
Z2
[3"
trackable_list_wrapper
И
 щlayer_regularization_losses
Щlayers
Ѓ	variables
ёregularization_losses
чlayer_metrics
Чmetrics
Ёtrainable_variables
§non_trainable_variables
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
И
 ■layer_regularization_losses
 layers
ѕ	variables
Ѕregularization_losses
ђlayer_metrics
Ђmetrics
іtrainable_variables
ѓnon_trainable_variables
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
И
 Ѓlayer_regularization_losses
ёlayers
Ї	variables
јregularization_losses
Ёlayer_metrics
єmetrics
Јtrainable_variables
Єnon_trainable_variables
љ__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
 ѕlayer_regularization_losses
Ѕlayers
Љ	variables
њregularization_losses
іlayer_metrics
Іmetrics
Њtrainable_variables
їnon_trainable_variables
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
 Їlayer_regularization_losses
јlayers
Ћ	variables
ќregularization_losses
Јlayer_metrics
љmetrics
Ќtrainable_variables
Љnon_trainable_variables
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
 3
!4
"5"
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
┐

њtotal

Њcount
ћ	variables
Ћ	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
И
 ќlayer_regularization_losses
Ќlayers
╬	variables
¤regularization_losses
ўlayer_metrics
Ўmetrics
лtrainable_variables
џnon_trainable_variables
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
И
 Џlayer_regularization_losses
юlayers
н	variables
Нregularization_losses
Юlayer_metrics
ъmetrics
оtrainable_variables
Ъnon_trainable_variables
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
И
 аlayer_regularization_losses
Аlayers
┌	variables
█regularization_losses
бlayer_metrics
Бmetrics
▄trainable_variables
цnon_trainable_variables
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
 Цlayer_regularization_losses
дlayers
я	variables
▀regularization_losses
Дlayer_metrics
еmetrics
Яtrainable_variables
Еnon_trainable_variables
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
 фlayer_regularization_losses
Фlayers
Р	variables
сregularization_losses
гlayer_metrics
Гmetrics
Сtrainable_variables
«non_trainable_variables
ъ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
И
 »layer_regularization_losses
░layers
У	variables
жregularization_losses
▒layer_metrics
▓metrics
Жtrainable_variables
│non_trainable_variables
а__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
w0
x1
y2
z3
{4
|5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
И
 ┤layer_regularization_losses
хlayers
ы	variables
Ыregularization_losses
Хlayer_metrics
иmetrics
зtrainable_variables
Иnon_trainable_variables
б__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
И
 ╣layer_regularization_losses
║layers
ш	variables
Шregularization_losses
╗layer_metrics
╝metrics
эtrainable_variables
йnon_trainable_variables
ц__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
Ђ0
ѓ1"
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
:  (2total
:  (2count
0
њ0
Њ1"
trackable_list_wrapper
.
ћ	variables"
_generic_user_object
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
&:$H@2Adam/dense_11/kernel/m
 :@2Adam/dense_11/bias/m
&:$@@2Adam/dense_12/kernel/m
 :@2Adam/dense_12/bias/m
&:$@2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
L:J@2<Adam/token_and_position_embedding_1/embedding_2/embeddings/m
N:L
аю@2<Adam/token_and_position_embedding_1/embedding_3/embeddings/m
R:P@@2>Adam/transformer_block_3/multi_head_attention_3/query/kernel/m
L:J@2<Adam/transformer_block_3/multi_head_attention_3/query/bias/m
P:N@@2<Adam/transformer_block_3/multi_head_attention_3/key/kernel/m
J:H@2:Adam/transformer_block_3/multi_head_attention_3/key/bias/m
R:P@@2>Adam/transformer_block_3/multi_head_attention_3/value/kernel/m
L:J@2<Adam/transformer_block_3/multi_head_attention_3/value/bias/m
]:[@@2IAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/m
S:Q@2GAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/m
%:#@@2Adam/dense_9/kernel/m
:@2Adam/dense_9/bias/m
&:$@@2Adam/dense_10/kernel/m
 :@2Adam/dense_10/bias/m
B:@@26Adam/transformer_block_3/layer_normalization_6/gamma/m
A:?@25Adam/transformer_block_3/layer_normalization_6/beta/m
B:@@26Adam/transformer_block_3/layer_normalization_7/gamma/m
A:?@25Adam/transformer_block_3/layer_normalization_7/beta/m
&:$H@2Adam/dense_11/kernel/v
 :@2Adam/dense_11/bias/v
&:$@@2Adam/dense_12/kernel/v
 :@2Adam/dense_12/bias/v
&:$@2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
L:J@2<Adam/token_and_position_embedding_1/embedding_2/embeddings/v
N:L
аю@2<Adam/token_and_position_embedding_1/embedding_3/embeddings/v
R:P@@2>Adam/transformer_block_3/multi_head_attention_3/query/kernel/v
L:J@2<Adam/transformer_block_3/multi_head_attention_3/query/bias/v
P:N@@2<Adam/transformer_block_3/multi_head_attention_3/key/kernel/v
J:H@2:Adam/transformer_block_3/multi_head_attention_3/key/bias/v
R:P@@2>Adam/transformer_block_3/multi_head_attention_3/value/kernel/v
L:J@2<Adam/transformer_block_3/multi_head_attention_3/value/bias/v
]:[@@2IAdam/transformer_block_3/multi_head_attention_3/attention_output/kernel/v
S:Q@2GAdam/transformer_block_3/multi_head_attention_3/attention_output/bias/v
%:#@@2Adam/dense_9/kernel/v
:@2Adam/dense_9/bias/v
&:$@@2Adam/dense_10/kernel/v
 :@2Adam/dense_10/bias/v
B:@@26Adam/transformer_block_3/layer_normalization_6/gamma/v
A:?@25Adam/transformer_block_3/layer_normalization_6/beta/v
B:@@26Adam/transformer_block_3/layer_normalization_7/gamma/v
A:?@25Adam/transformer_block_3/layer_normalization_7/beta/v
Ь2в
(__inference_model_1_layer_call_fn_192986
(__inference_model_1_layer_call_fn_192869
(__inference_model_1_layer_call_fn_193549
(__inference_model_1_layer_call_fn_193495└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ѕ2є
!__inference__wrapped_model_191888Я
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *PбM
KџH
#і 
input_3         аю
!і
input_4         
┌2О
C__inference_model_1_layer_call_and_return_conditional_losses_193263
C__inference_model_1_layer_call_and_return_conditional_losses_192688
C__inference_model_1_layer_call_and_return_conditional_losses_192751
C__inference_model_1_layer_call_and_return_conditional_losses_193441└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
С2р
?__inference_token_and_position_embedding_1_layer_call_fn_193582Ю
ћ▓љ
FullArgSpec
argsџ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 2Ч
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_193573Ю
ћ▓љ
FullArgSpec
argsџ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ј2ї
4__inference_average_pooling1d_1_layer_call_fn_191903М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
ф2Д
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_191897М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
б2Ъ
4__inference_transformer_block_3_layer_call_fn_193894
4__inference_transformer_block_3_layer_call_fn_193931░
Д▓Б
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193730
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193857░
Д▓Б
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
»2г
;__inference_global_average_pooling1d_1_layer_call_fn_193942
;__inference_global_average_pooling1d_1_layer_call_fn_193953»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
т2Р
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193948
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193937»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_concatenate_1_layer_call_fn_193966б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_concatenate_1_layer_call_and_return_conditional_losses_193960б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_dense_11_layer_call_fn_193986б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_11_layer_call_and_return_conditional_losses_193977б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_10_layer_call_fn_194008
+__inference_dropout_10_layer_call_fn_194013┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_10_layer_call_and_return_conditional_losses_193998
F__inference_dropout_10_layer_call_and_return_conditional_losses_194003┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_12_layer_call_fn_194033б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_12_layer_call_and_return_conditional_losses_194024б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_11_layer_call_fn_194055
+__inference_dropout_11_layer_call_fn_194060┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_11_layer_call_and_return_conditional_losses_194045
F__inference_dropout_11_layer_call_and_return_conditional_losses_194050┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_13_layer_call_fn_194079б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_13_layer_call_and_return_conditional_losses_194070б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
мB¤
$__inference_signature_wrapper_193050input_3input_4"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ѓ2 Ч
з▓№
FullArgSpece
args]џZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsџ

 

 
p 
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ѓ2 Ч
з▓№
FullArgSpece
args]џZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsџ

 

 
p 
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ѓ2 
-__inference_sequential_3_layer_call_fn_192043
-__inference_sequential_3_layer_call_fn_194219
-__inference_sequential_3_layer_call_fn_194206
-__inference_sequential_3_layer_call_fn_192070└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
H__inference_sequential_3_layer_call_and_return_conditional_losses_194193
H__inference_sequential_3_layer_call_and_return_conditional_losses_194136
H__inference_sequential_3_layer_call_and_return_conditional_losses_192001
H__inference_sequential_3_layer_call_and_return_conditional_losses_192015└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
х2▓»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
х2▓»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
║2и┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_9_layer_call_fn_194259б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_9_layer_call_and_return_conditional_losses_194250б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_dense_10_layer_call_fn_194298б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_10_layer_call_and_return_conditional_losses_194289б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 Л
!__inference__wrapped_model_191888ФONPQRSTUVW\]XYZ[^_/09:CDZбW
PбM
KџH
#і 
input_3         аю
!і
input_4         
ф "3ф0
.
dense_13"і
dense_13         п
O__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_191897ёEбB
;б8
6і3
inputs'                           
ф ";б8
1і.
0'                           
џ »
4__inference_average_pooling1d_1_layer_call_fn_191903wEбB
;б8
6і3
inputs'                           
ф ".і+'                           Л
I__inference_concatenate_1_layer_call_and_return_conditional_losses_193960ЃZбW
PбM
KџH
"і
inputs/0         @
"і
inputs/1         
ф "%б"
і
0         H
џ е
.__inference_concatenate_1_layer_call_fn_193966vZбW
PбM
KџH
"і
inputs/0         @
"і
inputs/1         
ф "і         H«
D__inference_dense_10_layer_call_and_return_conditional_losses_194289fZ[4б1
*б'
%і"
inputs         У@
ф "*б'
 і
0         У@
џ є
)__inference_dense_10_layer_call_fn_194298YZ[4б1
*б'
%і"
inputs         У@
ф "і         У@ц
D__inference_dense_11_layer_call_and_return_conditional_losses_193977\/0/б,
%б"
 і
inputs         H
ф "%б"
і
0         @
џ |
)__inference_dense_11_layer_call_fn_193986O/0/б,
%б"
 і
inputs         H
ф "і         @ц
D__inference_dense_12_layer_call_and_return_conditional_losses_194024\9:/б,
%б"
 і
inputs         @
ф "%б"
і
0         @
џ |
)__inference_dense_12_layer_call_fn_194033O9:/б,
%б"
 і
inputs         @
ф "і         @ц
D__inference_dense_13_layer_call_and_return_conditional_losses_194070\CD/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ |
)__inference_dense_13_layer_call_fn_194079OCD/б,
%б"
 і
inputs         @
ф "і         Г
C__inference_dense_9_layer_call_and_return_conditional_losses_194250fXY4б1
*б'
%і"
inputs         У@
ф "*б'
 і
0         У@
џ Ё
(__inference_dense_9_layer_call_fn_194259YXY4б1
*б'
%і"
inputs         У@
ф "і         У@д
F__inference_dropout_10_layer_call_and_return_conditional_losses_193998\3б0
)б&
 і
inputs         @
p
ф "%б"
і
0         @
џ д
F__inference_dropout_10_layer_call_and_return_conditional_losses_194003\3б0
)б&
 і
inputs         @
p 
ф "%б"
і
0         @
џ ~
+__inference_dropout_10_layer_call_fn_194008O3б0
)б&
 і
inputs         @
p
ф "і         @~
+__inference_dropout_10_layer_call_fn_194013O3б0
)б&
 і
inputs         @
p 
ф "і         @д
F__inference_dropout_11_layer_call_and_return_conditional_losses_194045\3б0
)б&
 і
inputs         @
p
ф "%б"
і
0         @
џ д
F__inference_dropout_11_layer_call_and_return_conditional_losses_194050\3б0
)б&
 і
inputs         @
p 
ф "%б"
і
0         @
џ ~
+__inference_dropout_11_layer_call_fn_194055O3б0
)б&
 і
inputs         @
p
ф "і         @~
+__inference_dropout_11_layer_call_fn_194060O3б0
)б&
 і
inputs         @
p 
ф "і         @╗
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193937a8б5
.б+
%і"
inputs         У@

 
ф "%б"
і
0         @
џ Н
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_193948{IбF
?б<
6і3
inputs'                           

 
ф ".б+
$і!
0                  
џ Њ
;__inference_global_average_pooling1d_1_layer_call_fn_193942T8б5
.б+
%і"
inputs         У@

 
ф "і         @Г
;__inference_global_average_pooling1d_1_layer_call_fn_193953nIбF
?б<
6і3
inputs'                           

 
ф "!і                  ь
C__inference_model_1_layer_call_and_return_conditional_losses_192688ЦONPQRSTUVW\]XYZ[^_/09:CDbб_
XбU
KџH
#і 
input_3         аю
!і
input_4         
p

 
ф "%б"
і
0         
џ ь
C__inference_model_1_layer_call_and_return_conditional_losses_192751ЦONPQRSTUVW\]XYZ[^_/09:CDbб_
XбU
KџH
#і 
input_3         аю
!і
input_4         
p 

 
ф "%б"
і
0         
џ №
C__inference_model_1_layer_call_and_return_conditional_losses_193263ДONPQRSTUVW\]XYZ[^_/09:CDdбa
ZбW
MџJ
$і!
inputs/0         аю
"і
inputs/1         
p

 
ф "%б"
і
0         
џ №
C__inference_model_1_layer_call_and_return_conditional_losses_193441ДONPQRSTUVW\]XYZ[^_/09:CDdбa
ZбW
MџJ
$і!
inputs/0         аю
"і
inputs/1         
p 

 
ф "%б"
і
0         
џ ┼
(__inference_model_1_layer_call_fn_192869ўONPQRSTUVW\]XYZ[^_/09:CDbб_
XбU
KџH
#і 
input_3         аю
!і
input_4         
p

 
ф "і         ┼
(__inference_model_1_layer_call_fn_192986ўONPQRSTUVW\]XYZ[^_/09:CDbб_
XбU
KџH
#і 
input_3         аю
!і
input_4         
p 

 
ф "і         К
(__inference_model_1_layer_call_fn_193495џONPQRSTUVW\]XYZ[^_/09:CDdбa
ZбW
MџJ
$і!
inputs/0         аю
"і
inputs/1         
p

 
ф "і         К
(__inference_model_1_layer_call_fn_193549џONPQRSTUVW\]XYZ[^_/09:CDdбa
ZбW
MџJ
$і!
inputs/0         аю
"і
inputs/1         
p 

 
ф "і         ├
H__inference_sequential_3_layer_call_and_return_conditional_losses_192001wXYZ[Cб@
9б6
,і)
dense_9_input         У@
p

 
ф "*б'
 і
0         У@
џ ├
H__inference_sequential_3_layer_call_and_return_conditional_losses_192015wXYZ[Cб@
9б6
,і)
dense_9_input         У@
p 

 
ф "*б'
 і
0         У@
џ ╝
H__inference_sequential_3_layer_call_and_return_conditional_losses_194136pXYZ[<б9
2б/
%і"
inputs         У@
p

 
ф "*б'
 і
0         У@
џ ╝
H__inference_sequential_3_layer_call_and_return_conditional_losses_194193pXYZ[<б9
2б/
%і"
inputs         У@
p 

 
ф "*б'
 і
0         У@
џ Џ
-__inference_sequential_3_layer_call_fn_192043jXYZ[Cб@
9б6
,і)
dense_9_input         У@
p

 
ф "і         У@Џ
-__inference_sequential_3_layer_call_fn_192070jXYZ[Cб@
9б6
,і)
dense_9_input         У@
p 

 
ф "і         У@ћ
-__inference_sequential_3_layer_call_fn_194206cXYZ[<б9
2б/
%і"
inputs         У@
p

 
ф "і         У@ћ
-__inference_sequential_3_layer_call_fn_194219cXYZ[<б9
2б/
%і"
inputs         У@
p 

 
ф "і         У@т
$__inference_signature_wrapper_193050╝ONPQRSTUVW\]XYZ[^_/09:CDkбh
б 
aф^
.
input_3#і 
input_3         аю
,
input_4!і
input_4         "3ф0
.
dense_13"і
dense_13         й
Z__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_193573_ON,б)
"б
і
x         аю
ф "+б(
!і
0         аю@
џ Ћ
?__inference_token_and_position_embedding_1_layer_call_fn_193582RON,б)
"б
і
x         аю
ф "і         аю@╦
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193730xPQRSTUVW\]XYZ[^_8б5
.б+
%і"
inputs         У@
p
ф "*б'
 і
0         У@
џ ╦
O__inference_transformer_block_3_layer_call_and_return_conditional_losses_193857xPQRSTUVW\]XYZ[^_8б5
.б+
%і"
inputs         У@
p 
ф "*б'
 і
0         У@
џ Б
4__inference_transformer_block_3_layer_call_fn_193894kPQRSTUVW\]XYZ[^_8б5
.б+
%і"
inputs         У@
p
ф "і         У@Б
4__inference_transformer_block_3_layer_call_fn_193931kPQRSTUVW\]XYZ[^_8б5
.б+
%і"
inputs         У@
p 
ф "і         У@