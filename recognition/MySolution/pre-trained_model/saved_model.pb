��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
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
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
SparseTensorDenseMatMul
	a_indices"Tindices
a_values"T
a_shape	
b"T
product"T"	
Ttype"
Tindicestype0	:
2	"
	adjoint_abool( "
	adjoint_bbool( 
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
�
Adam/dgi_discriminator/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *0
shared_name!Adam/dgi_discriminator/kernel/v
�
3Adam/dgi_discriminator/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dgi_discriminator/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/graph_convolution_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/graph_convolution_1/bias/v
�
3Adam/graph_convolution_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/graph_convolution_1/bias/v*
_output_shapes
: *
dtype0
�
!Adam/graph_convolution_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *2
shared_name#!Adam/graph_convolution_1/kernel/v
�
5Adam/graph_convolution_1/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/graph_convolution_1/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/graph_convolution/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/graph_convolution/bias/v
�
1Adam/graph_convolution/bias/v/Read/ReadVariableOpReadVariableOpAdam/graph_convolution/bias/v*
_output_shapes
: *
dtype0
�
Adam/graph_convolution/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�$ *0
shared_name!Adam/graph_convolution/kernel/v
�
3Adam/graph_convolution/kernel/v/Read/ReadVariableOpReadVariableOpAdam/graph_convolution/kernel/v*
_output_shapes
:	�$ *
dtype0
�
Adam/dgi_discriminator/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *0
shared_name!Adam/dgi_discriminator/kernel/m
�
3Adam/dgi_discriminator/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dgi_discriminator/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/graph_convolution_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/graph_convolution_1/bias/m
�
3Adam/graph_convolution_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/graph_convolution_1/bias/m*
_output_shapes
: *
dtype0
�
!Adam/graph_convolution_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *2
shared_name#!Adam/graph_convolution_1/kernel/m
�
5Adam/graph_convolution_1/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/graph_convolution_1/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/graph_convolution/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/graph_convolution/bias/m
�
1Adam/graph_convolution/bias/m/Read/ReadVariableOpReadVariableOpAdam/graph_convolution/bias/m*
_output_shapes
: *
dtype0
�
Adam/graph_convolution/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�$ *0
shared_name!Adam/graph_convolution/kernel/m
�
3Adam/graph_convolution/kernel/m/Read/ReadVariableOpReadVariableOpAdam/graph_convolution/kernel/m*
_output_shapes
:	�$ *
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
�
dgi_discriminator/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_namedgi_discriminator/kernel
�
,dgi_discriminator/kernel/Read/ReadVariableOpReadVariableOpdgi_discriminator/kernel*
_output_shapes

:  *
dtype0
�
graph_convolution_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namegraph_convolution_1/bias
�
,graph_convolution_1/bias/Read/ReadVariableOpReadVariableOpgraph_convolution_1/bias*
_output_shapes
: *
dtype0
�
graph_convolution_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *+
shared_namegraph_convolution_1/kernel
�
.graph_convolution_1/kernel/Read/ReadVariableOpReadVariableOpgraph_convolution_1/kernel*
_output_shapes

:  *
dtype0
�
graph_convolution/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namegraph_convolution/bias
}
*graph_convolution/bias/Read/ReadVariableOpReadVariableOpgraph_convolution/bias*
_output_shapes
: *
dtype0
�
graph_convolution/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�$ *)
shared_namegraph_convolution/kernel
�
,graph_convolution/kernel/Read/ReadVariableOpReadVariableOpgraph_convolution/kernel*
_output_shapes
:	�$ *
dtype0
v
serving_default_input_1Placeholder*%
_output_shapes
:Ư�$*
dtype0*
shape:Ư�$
z
serving_default_input_2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
serving_default_input_3Placeholder*+
_output_shapes
:���������*
dtype0	* 
shape:���������
z
serving_default_input_4Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
v
serving_default_input_5Placeholder*%
_output_shapes
:Ư�$*
dtype0*
shape:Ư�$
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2serving_default_input_3serving_default_input_4serving_default_input_5graph_convolution/kernelgraph_convolution/biasgraph_convolution_1/kernelgraph_convolution_1/biasdgi_discriminator/kernel*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_3250

NoOpNoOp
�I
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�I
value�IB�I B�I
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer-8

layer_with_weights-1

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _random_generator* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
* 
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator* 
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias*
* 
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel*

]	keras_api* 
'
-0
.1
B2
C3
\4*
'
-0
.1
B2
C3
\4*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ctrace_0
dtrace_1
etrace_2
ftrace_3* 
6
gtrace_0
htrace_1
itrace_2
jtrace_3* 
* 
�
kiter

lbeta_1

mbeta_2
	ndecay
olearning_rate-m�.m�Bm�Cm�\m�-v�.v�Bv�Cv�\v�*

pserving_default* 
* 
* 
* 
�
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

vtrace_0
wtrace_1* 

xtrace_0
ytrace_1* 
* 
* 
* 
* 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

trace_0* 

�trace_0* 

-0
.1*

-0
.1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
hb
VARIABLE_VALUEgraph_convolution/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEgraph_convolution/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
jd
VARIABLE_VALUEgraph_convolution_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEgraph_convolution_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

\0*

\0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
hb
VARIABLE_VALUEdgi_discriminator/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
z
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
15*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/graph_convolution_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dgi_discriminator/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/graph_convolution_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/graph_convolution_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dgi_discriminator/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,graph_convolution/kernel/Read/ReadVariableOp*graph_convolution/bias/Read/ReadVariableOp.graph_convolution_1/kernel/Read/ReadVariableOp,graph_convolution_1/bias/Read/ReadVariableOp,dgi_discriminator/kernel/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp3Adam/graph_convolution/kernel/m/Read/ReadVariableOp1Adam/graph_convolution/bias/m/Read/ReadVariableOp5Adam/graph_convolution_1/kernel/m/Read/ReadVariableOp3Adam/graph_convolution_1/bias/m/Read/ReadVariableOp3Adam/dgi_discriminator/kernel/m/Read/ReadVariableOp3Adam/graph_convolution/kernel/v/Read/ReadVariableOp1Adam/graph_convolution/bias/v/Read/ReadVariableOp5Adam/graph_convolution_1/kernel/v/Read/ReadVariableOp3Adam/graph_convolution_1/bias/v/Read/ReadVariableOp3Adam/dgi_discriminator/kernel/v/Read/ReadVariableOpConst*#
Tin
2	*
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
GPU 2J 8� *&
f!R
__inference__traced_save_3958
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegraph_convolution/kernelgraph_convolution/biasgraph_convolution_1/kernelgraph_convolution_1/biasdgi_discriminator/kernel	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/graph_convolution/kernel/mAdam/graph_convolution/bias/m!Adam/graph_convolution_1/kernel/mAdam/graph_convolution_1/bias/mAdam/dgi_discriminator/kernel/mAdam/graph_convolution/kernel/vAdam/graph_convolution/bias/v!Adam/graph_convolution_1/kernel/vAdam/graph_convolution_1/bias/vAdam/dgi_discriminator/kernel/v*"
Tin
2*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_4034��
�
t
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867

inputs
inputs_1
identityO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
GatherV2GatherV2inputsinputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims]
IdentityIdentityGatherV2:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_3804
inputs_0

inputs	
inputs_1
inputs_2	1
shape_1_readvariableop_resource:  )
add_readvariableop_resource: 
identity��add/ReadVariableOp�transpose/ReadVariableOpe
SqueezeSqueezeinputs_0*
T0*'
_output_shapes
:��������� *
squeeze_dims
 �
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2Squeeze:output:0*
T0*'
_output_shapes
:��������� P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:��������� H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    q
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*'
_output_shapes
:��������� x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:  `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:  h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackReshape_2/shape/0:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0r
addAddV2Reshape_2:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� K
ReluReluadd:z:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� v
NoOpNoOp^add/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:��������� :���������:���������:: : 2(
add/ReadVariableOpadd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
�
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789

inputs
inputs_1	
inputs_2
inputs_3	2
shape_1_readvariableop_resource:	�$ )
add_readvariableop_resource: 
identity��add/ReadVariableOp�transpose/ReadVariableOp]
SqueezeSqueezeinputs*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3Squeeze:output:0*
T0*(
_output_shapes
:����������$P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������$H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numw
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"j      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  r
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:����������$y
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       {
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes
:	�$ `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  ����g
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes
:	�$ h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackReshape_2/shape/0:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0r
addAddV2Reshape_2:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� K
ReluReluadd:z:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� v
NoOpNoOp^add/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:Ư�$:���������:���������:: : 2(
add/ReadVariableOpadd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
_
A__inference_dropout_layer_call_and_return_conditional_losses_3629

inputs

identity_1L
IdentityIdentityinputs*
T0*%
_output_shapes
:Ư�$Y

Identity_1IdentityIdentity:output:0*
T0*%
_output_shapes
:Ư�$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�
�
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893

inputs
inputs_17
%matvec_matmul_readvariableop_resource:  
identity��MatVec/MatMul/ReadVariableOp`
MatVec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������v
MatVec/ExpandDims
ExpandDimsinputs_1MatVec/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
MatVec/MatMul/ReadVariableOpReadVariableOp%matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
MatVec/MatMulBatchMatMulV2$MatVec/MatMul/ReadVariableOp:value:0MatVec/ExpandDims:output:0*
T0*"
_output_shapes
: z
MatVec/SqueezeSqueezeMatVec/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������b
MatVec_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
MatVec_1/ExpandDims
ExpandDimsMatVec/Squeeze:output:0 MatVec_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
: |
MatVec_1/MatMulBatchMatMulV2inputsMatVec_1/ExpandDims:output:0*
T0*+
_output_shapes
:����������
MatVec_1/SqueezeSqueezeMatVec_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������h
IdentityIdentityMatVec_1/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:���������e
NoOpNoOp^MatVec/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : 2<
MatVec/MatMul/ReadVariableOpMatVec/MatMul/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs:FB

_output_shapes

: 
 
_user_specified_nameinputs
�
J
*__inference_dgi_readout_layer_call_fn_3822

node_feats
identity�
PartitionedCallPartitionedCall
node_feats*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876W
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :W S
+
_output_shapes
:��������� 
$
_user_specified_name
node_feats
�
a
(__inference_dropout_1_layer_call_fn_3739

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
9__inference_squeezed_sparse_conversion_layer_call_fn_3651
inputs_0	
inputs_1
identity	

identity_1

identity_2	�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������^

Identity_1IdentityPartitionedCall:output:1*
T0*#
_output_shapes
:���������U

Identity_2IdentityPartitionedCall:output:2*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727

inputs	
inputs_1
identity	

identity_1

identity_2	c
SqueezeSqueezeinputs*
T0	*'
_output_shapes
:���������*
squeeze_dims
 c
	Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:���������*
squeeze_dims
 q
SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      X
IdentityIdentitySqueeze:output:0*
T0	*'
_output_shapes
:���������X

Identity_1IdentitySqueeze_1:output:0*
T0*#
_output_shapes
:���������^

Identity_2Identity!SparseTensor/dense_shape:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
`
A__inference_dropout_layer_call_and_return_conditional_losses_3012

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
dropout/MulMulinputsdropout/Const:output:0*
T0*%
_output_shapes
:Ư�$b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*%
_output_shapes
:Ư�$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*%
_output_shapes
:Ư�$m
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*%
_output_shapes
:Ư�$g
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*%
_output_shapes
:Ư�$W
IdentityIdentitydropout/Mul_1:z:0*
T0*%
_output_shapes
:Ư�$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�L
�
?__inference_model_layer_call_and_return_conditional_losses_3105

inputs
inputs_1
inputs_2
inputs_3	
inputs_4)
graph_convolution_3077:	�$ $
graph_convolution_3079: *
graph_convolution_1_3087:  &
graph_convolution_1_3089: (
dgi_discriminator_3098:  
identity��)dgi_discriminator/StatefulPartitionedCall�+dgi_discriminator/StatefulPartitionedCall_1�dropout/StatefulPartitionedCall�!dropout/StatefulPartitionedCall_1�!dropout_1/StatefulPartitionedCall�#dropout_1/StatefulPartitionedCall_1�)graph_convolution/StatefulPartitionedCall�+graph_convolution/StatefulPartitionedCall_1�+graph_convolution_1/StatefulPartitionedCall�-graph_convolution_1/StatefulPartitionedCall_1�
*squeezed_sparse_conversion/PartitionedCallPartitionedCallinputs_3inputs_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727�
dropout/StatefulPartitionedCallStatefulPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_3012�
,squeezed_sparse_conversion_1/PartitionedCallPartitionedCallinputs_3inputs_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748�
!dropout/StatefulPartitionedCall_1StatefulPartitionedCallinputs ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_3012�
)graph_convolution/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_3077graph_convolution_3079*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
+graph_convolution/StatefulPartitionedCall_1StatefulPartitionedCall*dropout/StatefulPartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_3077graph_convolution_3079*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall2graph_convolution/StatefulPartitionedCall:output:0"^dropout/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976�
#dropout_1/StatefulPartitionedCall_1StatefulPartitionedCall4graph_convolution/StatefulPartitionedCall_1:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976�
+graph_convolution_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_1_3087graph_convolution_1_3089*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
-graph_convolution_1/StatefulPartitionedCall_1StatefulPartitionedCall,dropout_1/StatefulPartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_1_3087graph_convolution_1_3089*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
gather_indices/PartitionedCallPartitionedCall4graph_convolution_1/StatefulPartitionedCall:output:0inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858�
 gather_indices_1/PartitionedCallPartitionedCall6graph_convolution_1/StatefulPartitionedCall_1:output:0inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867�
dgi_readout/PartitionedCallPartitionedCall'gather_indices/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876�
)dgi_discriminator/StatefulPartitionedCallStatefulPartitionedCall'gather_indices/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
+dgi_discriminator/StatefulPartitionedCall_1StatefulPartitionedCall)gather_indices_1/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
tf.stack/stackPack2dgi_discriminator/StatefulPartitionedCall:output:04dgi_discriminator/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp*^dgi_discriminator/StatefulPartitionedCall,^dgi_discriminator/StatefulPartitionedCall_1 ^dropout/StatefulPartitionedCall"^dropout/StatefulPartitionedCall_1"^dropout_1/StatefulPartitionedCall$^dropout_1/StatefulPartitionedCall_1*^graph_convolution/StatefulPartitionedCall,^graph_convolution/StatefulPartitionedCall_1,^graph_convolution_1/StatefulPartitionedCall.^graph_convolution_1/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2V
)dgi_discriminator/StatefulPartitionedCall)dgi_discriminator/StatefulPartitionedCall2Z
+dgi_discriminator/StatefulPartitionedCall_1+dgi_discriminator/StatefulPartitionedCall_12B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout/StatefulPartitionedCall_1!dropout/StatefulPartitionedCall_12F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#dropout_1/StatefulPartitionedCall_1#dropout_1/StatefulPartitionedCall_12V
)graph_convolution/StatefulPartitionedCall)graph_convolution/StatefulPartitionedCall2Z
+graph_convolution/StatefulPartitionedCall_1+graph_convolution/StatefulPartitionedCall_12Z
+graph_convolution_1/StatefulPartitionedCall+graph_convolution_1/StatefulPartitionedCall2^
-graph_convolution_1/StatefulPartitionedCall_1-graph_convolution_1/StatefulPartitionedCall_1:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs:MI
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
?__inference_model_layer_call_and_return_conditional_losses_3614
inputs_0
inputs_1
inputs_2
inputs_3	
inputs_4D
1graph_convolution_shape_1_readvariableop_resource:	�$ ;
-graph_convolution_add_readvariableop_resource: E
3graph_convolution_1_shape_1_readvariableop_resource:  =
/graph_convolution_1_add_readvariableop_resource: I
7dgi_discriminator_matvec_matmul_readvariableop_resource:  
identity��.dgi_discriminator/MatVec/MatMul/ReadVariableOp�0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp�$graph_convolution/add/ReadVariableOp�&graph_convolution/add_1/ReadVariableOp�*graph_convolution/transpose/ReadVariableOp�,graph_convolution/transpose_1/ReadVariableOp�&graph_convolution_1/add/ReadVariableOp�(graph_convolution_1/add_1/ReadVariableOp�,graph_convolution_1/transpose/ReadVariableOp�.graph_convolution_1/transpose_1/ReadVariableOp�
"squeezed_sparse_conversion/SqueezeSqueezeinputs_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 ~
$squeezed_sparse_conversion/Squeeze_1Squeezeinputs_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
3squeezed_sparse_conversion/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout/dropout/MulMulinputs_1dropout/dropout/Const:output:0*
T0*%
_output_shapes
:Ư�$j
dropout/dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*%
_output_shapes
:Ư�$*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*%
_output_shapes
:Ư�$}
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*%
_output_shapes
:Ư�$
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*%
_output_shapes
:Ư�$�
$squeezed_sparse_conversion_1/SqueezeSqueezeinputs_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 �
&squeezed_sparse_conversion_1/Squeeze_1Squeezeinputs_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
5squeezed_sparse_conversion_1/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      \
dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @x
dropout/dropout_1/MulMulinputs_0 dropout/dropout_1/Const:output:0*
T0*%
_output_shapes
:Ư�$l
dropout/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
.dropout/dropout_1/random_uniform/RandomUniformRandomUniform dropout/dropout_1/Shape:output:0*
T0*%
_output_shapes
:Ư�$*
dtype0e
 dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout_1/GreaterEqualGreaterEqual7dropout/dropout_1/random_uniform/RandomUniform:output:0)dropout/dropout_1/GreaterEqual/y:output:0*
T0*%
_output_shapes
:Ư�$�
dropout/dropout_1/CastCast"dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*%
_output_shapes
:Ư�$�
dropout/dropout_1/Mul_1Muldropout/dropout_1/Mul:z:0dropout/dropout_1/Cast:y:0*
T0*%
_output_shapes
:Ư�$�
graph_convolution/SqueezeSqueezedropout/dropout/Mul_1:z:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Agraph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul+squeezed_sparse_conversion/Squeeze:output:0-squeezed_sparse_conversion/Squeeze_1:output:0<squeezed_sparse_conversion/SparseTensor/dense_shape:output:0"graph_convolution/Squeeze:output:0*
T0*!
_output_shapes
:Ư�$b
 graph_convolution/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution/ExpandDims
ExpandDimsKgraph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0)graph_convolution/ExpandDims/dim:output:0*
T0*%
_output_shapes
:Ư�$l
graph_convolution/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  u
graph_convolution/unstackUnpack graph_convolution/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
(graph_convolution/Shape_1/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0j
graph_convolution/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"j      w
graph_convolution/unstack_1Unpack"graph_convolution/Shape_1:output:0*
T0*
_output_shapes
: : *	
nump
graph_convolution/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
graph_convolution/ReshapeReshape%graph_convolution/ExpandDims:output:0(graph_convolution/Reshape/shape:output:0*
T0*!
_output_shapes
:Ư�$�
*graph_convolution/transpose/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0q
 graph_convolution/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution/transpose	Transpose2graph_convolution/transpose/ReadVariableOp:value:0)graph_convolution/transpose/perm:output:0*
T0*
_output_shapes
:	�$ r
!graph_convolution/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
graph_convolution/Reshape_1Reshapegraph_convolution/transpose:y:0*graph_convolution/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�$ �
graph_convolution/MatMulMatMul"graph_convolution/Reshape:output:0$graph_convolution/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư v
!graph_convolution/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution/Reshape_2Reshape"graph_convolution/MatMul:product:0*graph_convolution/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
$graph_convolution/add/ReadVariableOpReadVariableOp-graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution/addAddV2$graph_convolution/Reshape_2:output:0,graph_convolution/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư h
graph_convolution/ReluRelugraph_convolution/add:z:0*
T0*$
_output_shapes
:Ư �
graph_convolution/Squeeze_1Squeezedropout/dropout_1/Mul_1:z:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Cgraph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul-squeezed_sparse_conversion_1/Squeeze:output:0/squeezed_sparse_conversion_1/Squeeze_1:output:0>squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0$graph_convolution/Squeeze_1:output:0*
T0*!
_output_shapes
:Ư�$d
"graph_convolution/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution/ExpandDims_1
ExpandDimsMgraph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0+graph_convolution/ExpandDims_1/dim:output:0*
T0*%
_output_shapes
:Ư�$n
graph_convolution/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W  j  y
graph_convolution/unstack_2Unpack"graph_convolution/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
(graph_convolution/Shape_3/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0j
graph_convolution/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"j      w
graph_convolution/unstack_3Unpack"graph_convolution/Shape_3:output:0*
T0*
_output_shapes
: : *	
numr
!graph_convolution/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
graph_convolution/Reshape_3Reshape'graph_convolution/ExpandDims_1:output:0*graph_convolution/Reshape_3/shape:output:0*
T0*!
_output_shapes
:Ư�$�
,graph_convolution/transpose_1/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0s
"graph_convolution/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution/transpose_1	Transpose4graph_convolution/transpose_1/ReadVariableOp:value:0+graph_convolution/transpose_1/perm:output:0*
T0*
_output_shapes
:	�$ r
!graph_convolution/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
graph_convolution/Reshape_4Reshape!graph_convolution/transpose_1:y:0*graph_convolution/Reshape_4/shape:output:0*
T0*
_output_shapes
:	�$ �
graph_convolution/MatMul_1MatMul$graph_convolution/Reshape_3:output:0$graph_convolution/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư v
!graph_convolution/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution/Reshape_5Reshape$graph_convolution/MatMul_1:product:0*graph_convolution/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
&graph_convolution/add_1/ReadVariableOpReadVariableOp-graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution/add_1AddV2$graph_convolution/Reshape_5:output:0.graph_convolution/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư l
graph_convolution/Relu_1Relugraph_convolution/add_1:z:0*
T0*$
_output_shapes
:Ư \
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_1/dropout/MulMul$graph_convolution/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*$
_output_shapes
:Ư l
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*$
_output_shapes
:Ư *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*$
_output_shapes
:Ư �
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*$
_output_shapes
:Ư �
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*$
_output_shapes
:Ư ^
dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_1/dropout_1/MulMul&graph_convolution/Relu_1:activations:0"dropout_1/dropout_1/Const:output:0*
T0*$
_output_shapes
:Ư n
dropout_1/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
0dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform"dropout_1/dropout_1/Shape:output:0*
T0*$
_output_shapes
:Ư *
dtype0g
"dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
 dropout_1/dropout_1/GreaterEqualGreaterEqual9dropout_1/dropout_1/random_uniform/RandomUniform:output:0+dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*$
_output_shapes
:Ư �
dropout_1/dropout_1/CastCast$dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*$
_output_shapes
:Ư �
dropout_1/dropout_1/Mul_1Muldropout_1/dropout_1/Mul:z:0dropout_1/dropout_1/Cast:y:0*
T0*$
_output_shapes
:Ư �
graph_convolution_1/SqueezeSqueezedropout_1/dropout/Mul_1:z:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Cgraph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul+squeezed_sparse_conversion/Squeeze:output:0-squeezed_sparse_conversion/Squeeze_1:output:0<squeezed_sparse_conversion/SparseTensor/dense_shape:output:0$graph_convolution_1/Squeeze:output:0*
T0* 
_output_shapes
:
Ư d
"graph_convolution_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution_1/ExpandDims
ExpandDimsMgraph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0+graph_convolution_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:Ư n
graph_convolution_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      y
graph_convolution_1/unstackUnpack"graph_convolution_1/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
*graph_convolution_1/Shape_1/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0l
graph_convolution_1/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        {
graph_convolution_1/unstack_1Unpack$graph_convolution_1/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!graph_convolution_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
graph_convolution_1/ReshapeReshape'graph_convolution_1/ExpandDims:output:0*graph_convolution_1/Reshape/shape:output:0*
T0* 
_output_shapes
:
Ư �
,graph_convolution_1/transpose/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0s
"graph_convolution_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution_1/transpose	Transpose4graph_convolution_1/transpose/ReadVariableOp:value:0+graph_convolution_1/transpose/perm:output:0*
T0*
_output_shapes

:  t
#graph_convolution_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
graph_convolution_1/Reshape_1Reshape!graph_convolution_1/transpose:y:0,graph_convolution_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:  �
graph_convolution_1/MatMulMatMul$graph_convolution_1/Reshape:output:0&graph_convolution_1/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư x
#graph_convolution_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution_1/Reshape_2Reshape$graph_convolution_1/MatMul:product:0,graph_convolution_1/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
&graph_convolution_1/add/ReadVariableOpReadVariableOp/graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution_1/addAddV2&graph_convolution_1/Reshape_2:output:0.graph_convolution_1/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư l
graph_convolution_1/ReluRelugraph_convolution_1/add:z:0*
T0*$
_output_shapes
:Ư �
graph_convolution_1/Squeeze_1Squeezedropout_1/dropout_1/Mul_1:z:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Egraph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul-squeezed_sparse_conversion_1/Squeeze:output:0/squeezed_sparse_conversion_1/Squeeze_1:output:0>squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0&graph_convolution_1/Squeeze_1:output:0*
T0* 
_output_shapes
:
Ư f
$graph_convolution_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
 graph_convolution_1/ExpandDims_1
ExpandDimsOgraph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0-graph_convolution_1/ExpandDims_1/dim:output:0*
T0*$
_output_shapes
:Ư p
graph_convolution_1/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W      }
graph_convolution_1/unstack_2Unpack$graph_convolution_1/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
*graph_convolution_1/Shape_3/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0l
graph_convolution_1/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"        {
graph_convolution_1/unstack_3Unpack$graph_convolution_1/Shape_3:output:0*
T0*
_output_shapes
: : *	
numt
#graph_convolution_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
graph_convolution_1/Reshape_3Reshape)graph_convolution_1/ExpandDims_1:output:0,graph_convolution_1/Reshape_3/shape:output:0*
T0* 
_output_shapes
:
Ư �
.graph_convolution_1/transpose_1/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0u
$graph_convolution_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution_1/transpose_1	Transpose6graph_convolution_1/transpose_1/ReadVariableOp:value:0-graph_convolution_1/transpose_1/perm:output:0*
T0*
_output_shapes

:  t
#graph_convolution_1/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
graph_convolution_1/Reshape_4Reshape#graph_convolution_1/transpose_1:y:0,graph_convolution_1/Reshape_4/shape:output:0*
T0*
_output_shapes

:  �
graph_convolution_1/MatMul_1MatMul&graph_convolution_1/Reshape_3:output:0&graph_convolution_1/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư x
#graph_convolution_1/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution_1/Reshape_5Reshape&graph_convolution_1/MatMul_1:product:0,graph_convolution_1/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
(graph_convolution_1/add_1/ReadVariableOpReadVariableOp/graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution_1/add_1AddV2&graph_convolution_1/Reshape_5:output:00graph_convolution_1/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư p
graph_convolution_1/Relu_1Relugraph_convolution_1/add_1:z:0*
T0*$
_output_shapes
:Ư ^
gather_indices/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gather_indices/GatherV2GatherV2&graph_convolution_1/Relu:activations:0inputs_2%gather_indices/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims`
gather_indices_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gather_indices_1/GatherV2GatherV2(graph_convolution_1/Relu_1:activations:0inputs_2'gather_indices_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dimsm
"dgi_readout/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
dgi_readout/MeanMean gather_indices/GatherV2:output:0+dgi_readout/Mean/reduction_indices:output:0*
T0*
_output_shapes

: b
dgi_readout/SigmoidSigmoiddgi_readout/Mean:output:0*
T0*
_output_shapes

: r
'dgi_discriminator/MatVec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#dgi_discriminator/MatVec/ExpandDims
ExpandDimsdgi_readout/Sigmoid:y:00dgi_discriminator/MatVec/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
.dgi_discriminator/MatVec/MatMul/ReadVariableOpReadVariableOp7dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dgi_discriminator/MatVec/MatMulBatchMatMulV26dgi_discriminator/MatVec/MatMul/ReadVariableOp:value:0,dgi_discriminator/MatVec/ExpandDims:output:0*
T0*"
_output_shapes
: �
 dgi_discriminator/MatVec/SqueezeSqueeze(dgi_discriminator/MatVec/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������t
)dgi_discriminator/MatVec_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_1/ExpandDims
ExpandDims)dgi_discriminator/MatVec/Squeeze:output:02dgi_discriminator/MatVec_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
!dgi_discriminator/MatVec_1/MatMulBatchMatMulV2 gather_indices/GatherV2:output:0.dgi_discriminator/MatVec_1/ExpandDims:output:0*
T0*+
_output_shapes
:����������
"dgi_discriminator/MatVec_1/SqueezeSqueeze*dgi_discriminator/MatVec_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������t
)dgi_discriminator/MatVec_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_2/ExpandDims
ExpandDimsdgi_readout/Sigmoid:y:02dgi_discriminator/MatVec_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
0dgi_discriminator/MatVec_2/MatMul/ReadVariableOpReadVariableOp7dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
!dgi_discriminator/MatVec_2/MatMulBatchMatMulV28dgi_discriminator/MatVec_2/MatMul/ReadVariableOp:value:0.dgi_discriminator/MatVec_2/ExpandDims:output:0*
T0*"
_output_shapes
: �
"dgi_discriminator/MatVec_2/SqueezeSqueeze*dgi_discriminator/MatVec_2/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������t
)dgi_discriminator/MatVec_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_3/ExpandDims
ExpandDims+dgi_discriminator/MatVec_2/Squeeze:output:02dgi_discriminator/MatVec_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
!dgi_discriminator/MatVec_3/MatMulBatchMatMulV2"gather_indices_1/GatherV2:output:0.dgi_discriminator/MatVec_3/ExpandDims:output:0*
T0*+
_output_shapes
:����������
"dgi_discriminator/MatVec_3/SqueezeSqueeze*dgi_discriminator/MatVec_3/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
tf.stack/stackPack+dgi_discriminator/MatVec_1/Squeeze:output:0+dgi_discriminator/MatVec_3/Squeeze:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^dgi_discriminator/MatVec/MatMul/ReadVariableOp1^dgi_discriminator/MatVec_2/MatMul/ReadVariableOp%^graph_convolution/add/ReadVariableOp'^graph_convolution/add_1/ReadVariableOp+^graph_convolution/transpose/ReadVariableOp-^graph_convolution/transpose_1/ReadVariableOp'^graph_convolution_1/add/ReadVariableOp)^graph_convolution_1/add_1/ReadVariableOp-^graph_convolution_1/transpose/ReadVariableOp/^graph_convolution_1/transpose_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2`
.dgi_discriminator/MatVec/MatMul/ReadVariableOp.dgi_discriminator/MatVec/MatMul/ReadVariableOp2d
0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp2L
$graph_convolution/add/ReadVariableOp$graph_convolution/add/ReadVariableOp2P
&graph_convolution/add_1/ReadVariableOp&graph_convolution/add_1/ReadVariableOp2X
*graph_convolution/transpose/ReadVariableOp*graph_convolution/transpose/ReadVariableOp2\
,graph_convolution/transpose_1/ReadVariableOp,graph_convolution/transpose_1/ReadVariableOp2P
&graph_convolution_1/add/ReadVariableOp&graph_convolution_1/add/ReadVariableOp2T
(graph_convolution_1/add_1/ReadVariableOp(graph_convolution_1/add_1/ReadVariableOp2\
,graph_convolution_1/transpose/ReadVariableOp,graph_convolution_1/transpose/ReadVariableOp2`
.graph_convolution_1/transpose_1/ReadVariableOp.graph_convolution_1/transpose_1/ReadVariableOp:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4
�
�
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_3729
inputs_0	
inputs_1
identity	

identity_1

identity_2	e
SqueezeSqueezeinputs_0*
T0	*'
_output_shapes
:���������*
squeeze_dims
 c
	Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:���������*
squeeze_dims
 q
SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      X
IdentityIdentitySqueeze:output:0*
T0	*'
_output_shapes
:���������X

Identity_1IdentitySqueeze_1:output:0*
T0*#
_output_shapes
:���������^

Identity_2Identity!SparseTensor/dense_shape:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
Y
-__inference_gather_indices_layer_call_fn_3810
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
e
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876

node_feats
identitya
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������b
MeanMean
node_featsMean/reduction_indices:output:0*
T0*
_output_shapes

: J
SigmoidSigmoidMean:output:0*
T0*
_output_shapes

: J
IdentityIdentitySigmoid:y:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :W S
+
_output_shapes
:��������� 
$
_user_specified_name
node_feats
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_3744

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:��������� _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
2__inference_graph_convolution_1_layer_call_fn_3768
inputs_0

inputs	
inputs_1
inputs_2	
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:��������� :���������:���������:: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
e
E__inference_dgi_readout_layer_call_and_return_conditional_losses_3829

node_feats
identitya
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������b
MeanMean
node_featsMean/reduction_indices:output:0*
T0*
_output_shapes

: J
SigmoidSigmoidMean:output:0*
T0*
_output_shapes

: J
IdentityIdentitySigmoid:y:0*
T0*
_output_shapes

: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :W S
+
_output_shapes
:��������� 
$
_user_specified_name
node_feats
�	
�
;__inference_squeezed_sparse_conversion_1_layer_call_fn_3719
inputs_0	
inputs_1
identity	

identity_1

identity_2	�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������^

Identity_1IdentityPartitionedCall:output:1*
T0*#
_output_shapes
:���������U

Identity_2IdentityPartitionedCall:output:2*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_3661
inputs_0	
inputs_1
identity	

identity_1

identity_2	e
SqueezeSqueezeinputs_0*
T0	*'
_output_shapes
:���������*
squeeze_dims
 c
	Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:���������*
squeeze_dims
 q
SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      X
IdentityIdentitySqueeze:output:0*
T0	*'
_output_shapes
:���������X

Identity_1IdentitySqueeze_1:output:0*
T0*#
_output_shapes
:���������^

Identity_2Identity!SparseTensor/dense_shape:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_3756

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:��������� s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:��������� m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:��������� ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
0__inference_graph_convolution_layer_call_fn_3673
inputs_0

inputs	
inputs_1
inputs_2	
unknown:	�$ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:Ư�$:���������:���������:: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�\
�
 __inference__traced_restore_4034
file_prefix<
)assignvariableop_graph_convolution_kernel:	�$ 7
)assignvariableop_1_graph_convolution_bias: ?
-assignvariableop_2_graph_convolution_1_kernel:  9
+assignvariableop_3_graph_convolution_1_bias: =
+assignvariableop_4_dgi_discriminator_kernel:  &
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: #
assignvariableop_10_total: #
assignvariableop_11_count: F
3assignvariableop_12_adam_graph_convolution_kernel_m:	�$ ?
1assignvariableop_13_adam_graph_convolution_bias_m: G
5assignvariableop_14_adam_graph_convolution_1_kernel_m:  A
3assignvariableop_15_adam_graph_convolution_1_bias_m: E
3assignvariableop_16_adam_dgi_discriminator_kernel_m:  F
3assignvariableop_17_adam_graph_convolution_kernel_v:	�$ ?
1assignvariableop_18_adam_graph_convolution_bias_v: G
5assignvariableop_19_adam_graph_convolution_1_kernel_v:  A
3assignvariableop_20_adam_graph_convolution_1_bias_v: E
3assignvariableop_21_adam_dgi_discriminator_kernel_v:  
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp)assignvariableop_graph_convolution_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_graph_convolution_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp-assignvariableop_2_graph_convolution_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_graph_convolution_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp+assignvariableop_4_dgi_discriminator_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp3assignvariableop_12_adam_graph_convolution_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_adam_graph_convolution_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp5assignvariableop_14_adam_graph_convolution_1_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp3assignvariableop_15_adam_graph_convolution_1_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp3assignvariableop_16_adam_dgi_discriminator_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp3assignvariableop_17_adam_graph_convolution_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp1assignvariableop_18_adam_graph_convolution_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp5assignvariableop_19_adam_graph_convolution_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp3assignvariableop_20_adam_graph_convolution_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp3assignvariableop_21_adam_dgi_discriminator_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
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
�
t
H__inference_gather_indices_layer_call_and_return_conditional_losses_3817
inputs_0
inputs_1
identityO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
GatherV2GatherV2inputs_0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims]
IdentityIdentityGatherV2:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748

inputs	
inputs_1
identity	

identity_1

identity_2	c
SqueezeSqueezeinputs*
T0	*'
_output_shapes
:���������*
squeeze_dims
 c
	Squeeze_1Squeezeinputs_1*
T0*#
_output_shapes
:���������*
squeeze_dims
 q
SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      X
IdentityIdentitySqueeze:output:0*
T0	*'
_output_shapes
:���������X

Identity_1IdentitySqueeze_1:output:0*
T0*#
_output_shapes
:���������^

Identity_2Identity!SparseTensor/dense_shape:output:0*
T0	*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
v
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_3842
inputs_0
inputs_1
identityO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
GatherV2GatherV2inputs_0inputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims]
IdentityIdentityGatherV2:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842

inputs
inputs_1	
inputs_2
inputs_3	1
shape_1_readvariableop_resource:  )
add_readvariableop_resource: 
identity��add/ReadVariableOp�transpose/ReadVariableOpc
SqueezeSqueezeinputs*
T0*'
_output_shapes
:��������� *
squeeze_dims
 �
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputs_1inputs_2inputs_3Squeeze:output:0*
T0*'
_output_shapes
:��������� P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:��������� H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    q
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*'
_output_shapes
:��������� x
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:  *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       z
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes

:  `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ����f
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:  h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackReshape_2/shape/0:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0r
addAddV2Reshape_2:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� K
ReluReluadd:z:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� v
NoOpNoOp^add/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:��������� :���������:���������:: : 2(
add/ReadVariableOpadd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
B
&__inference_dropout_layer_call_fn_3619

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2736^
IdentityIdentityPartitionedCall:output:0*
T0*%
_output_shapes
:Ư�$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�L
�
?__inference_model_layer_call_and_return_conditional_losses_3223
input_5
input_1
input_2
input_3	
input_4)
graph_convolution_3195:	�$ $
graph_convolution_3197: *
graph_convolution_1_3205:  &
graph_convolution_1_3207: (
dgi_discriminator_3216:  
identity��)dgi_discriminator/StatefulPartitionedCall�+dgi_discriminator/StatefulPartitionedCall_1�dropout/StatefulPartitionedCall�!dropout/StatefulPartitionedCall_1�!dropout_1/StatefulPartitionedCall�#dropout_1/StatefulPartitionedCall_1�)graph_convolution/StatefulPartitionedCall�+graph_convolution/StatefulPartitionedCall_1�+graph_convolution_1/StatefulPartitionedCall�-graph_convolution_1/StatefulPartitionedCall_1�
*squeezed_sparse_conversion/PartitionedCallPartitionedCallinput_3input_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727�
dropout/StatefulPartitionedCallStatefulPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_3012�
,squeezed_sparse_conversion_1/PartitionedCallPartitionedCallinput_3input_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748�
!dropout/StatefulPartitionedCall_1StatefulPartitionedCallinput_5 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_3012�
)graph_convolution/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_3195graph_convolution_3197*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
+graph_convolution/StatefulPartitionedCall_1StatefulPartitionedCall*dropout/StatefulPartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_3195graph_convolution_3197*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall2graph_convolution/StatefulPartitionedCall:output:0"^dropout/StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976�
#dropout_1/StatefulPartitionedCall_1StatefulPartitionedCall4graph_convolution/StatefulPartitionedCall_1:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976�
+graph_convolution_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_1_3205graph_convolution_1_3207*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
-graph_convolution_1/StatefulPartitionedCall_1StatefulPartitionedCall,dropout_1/StatefulPartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_1_3205graph_convolution_1_3207*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
gather_indices/PartitionedCallPartitionedCall4graph_convolution_1/StatefulPartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858�
 gather_indices_1/PartitionedCallPartitionedCall6graph_convolution_1/StatefulPartitionedCall_1:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867�
dgi_readout/PartitionedCallPartitionedCall'gather_indices/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876�
)dgi_discriminator/StatefulPartitionedCallStatefulPartitionedCall'gather_indices/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3216*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
+dgi_discriminator/StatefulPartitionedCall_1StatefulPartitionedCall)gather_indices_1/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3216*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
tf.stack/stackPack2dgi_discriminator/StatefulPartitionedCall:output:04dgi_discriminator/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp*^dgi_discriminator/StatefulPartitionedCall,^dgi_discriminator/StatefulPartitionedCall_1 ^dropout/StatefulPartitionedCall"^dropout/StatefulPartitionedCall_1"^dropout_1/StatefulPartitionedCall$^dropout_1/StatefulPartitionedCall_1*^graph_convolution/StatefulPartitionedCall,^graph_convolution/StatefulPartitionedCall_1,^graph_convolution_1/StatefulPartitionedCall.^graph_convolution_1/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2V
)dgi_discriminator/StatefulPartitionedCall)dgi_discriminator/StatefulPartitionedCall2Z
+dgi_discriminator/StatefulPartitionedCall_1+dgi_discriminator/StatefulPartitionedCall_12B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout/StatefulPartitionedCall_1!dropout/StatefulPartitionedCall_12F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#dropout_1/StatefulPartitionedCall_1#dropout_1/StatefulPartitionedCall_12V
)graph_convolution/StatefulPartitionedCall)graph_convolution/StatefulPartitionedCall2Z
+graph_convolution/StatefulPartitionedCall_1+graph_convolution/StatefulPartitionedCall_12Z
+graph_convolution_1/StatefulPartitionedCall+graph_convolution_1/StatefulPartitionedCall2^
-graph_convolution_1/StatefulPartitionedCall_1-graph_convolution_1/StatefulPartitionedCall_1:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
�
$__inference_model_layer_call_fn_3269
inputs_0
inputs_1
inputs_2
inputs_3	
inputs_4
unknown:	�$ 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2901s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4
�6
�

__inference__traced_save_3958
file_prefix7
3savev2_graph_convolution_kernel_read_readvariableop5
1savev2_graph_convolution_bias_read_readvariableop9
5savev2_graph_convolution_1_kernel_read_readvariableop7
3savev2_graph_convolution_1_bias_read_readvariableop7
3savev2_dgi_discriminator_kernel_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop>
:savev2_adam_graph_convolution_kernel_m_read_readvariableop<
8savev2_adam_graph_convolution_bias_m_read_readvariableop@
<savev2_adam_graph_convolution_1_kernel_m_read_readvariableop>
:savev2_adam_graph_convolution_1_bias_m_read_readvariableop>
:savev2_adam_dgi_discriminator_kernel_m_read_readvariableop>
:savev2_adam_graph_convolution_kernel_v_read_readvariableop<
8savev2_adam_graph_convolution_bias_v_read_readvariableop@
<savev2_adam_graph_convolution_1_kernel_v_read_readvariableop>
:savev2_adam_graph_convolution_1_bias_v_read_readvariableop>
:savev2_adam_dgi_discriminator_kernel_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_graph_convolution_kernel_read_readvariableop1savev2_graph_convolution_bias_read_readvariableop5savev2_graph_convolution_1_kernel_read_readvariableop3savev2_graph_convolution_1_bias_read_readvariableop3savev2_dgi_discriminator_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop:savev2_adam_graph_convolution_kernel_m_read_readvariableop8savev2_adam_graph_convolution_bias_m_read_readvariableop<savev2_adam_graph_convolution_1_kernel_m_read_readvariableop:savev2_adam_graph_convolution_1_bias_m_read_readvariableop:savev2_adam_dgi_discriminator_kernel_m_read_readvariableop:savev2_adam_graph_convolution_kernel_v_read_readvariableop8savev2_adam_graph_convolution_bias_v_read_readvariableop<savev2_adam_graph_convolution_1_kernel_v_read_readvariableop:savev2_adam_graph_convolution_1_bias_v_read_readvariableop:savev2_adam_dgi_discriminator_kernel_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�$ : :  : :  : : : : : : : :	�$ : :  : :  :	�$ : :  : :  : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�$ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  :

_output_shapes
: :
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
: :

_output_shapes
: :%!

_output_shapes
:	�$ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  :%!

_output_shapes
:	�$ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  :

_output_shapes
: 
�F
�
?__inference_model_layer_call_and_return_conditional_losses_2901

inputs
inputs_1
inputs_2
inputs_3	
inputs_4)
graph_convolution_2790:	�$ $
graph_convolution_2792: *
graph_convolution_1_2843:  &
graph_convolution_1_2845: (
dgi_discriminator_2894:  
identity��)dgi_discriminator/StatefulPartitionedCall�+dgi_discriminator/StatefulPartitionedCall_1�)graph_convolution/StatefulPartitionedCall�+graph_convolution/StatefulPartitionedCall_1�+graph_convolution_1/StatefulPartitionedCall�-graph_convolution_1/StatefulPartitionedCall_1�
*squeezed_sparse_conversion/PartitionedCallPartitionedCallinputs_3inputs_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727�
dropout/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2736�
,squeezed_sparse_conversion_1/PartitionedCallPartitionedCallinputs_3inputs_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748�
dropout/PartitionedCall_1PartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2736�
)graph_convolution/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_2790graph_convolution_2792*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
+graph_convolution/StatefulPartitionedCall_1StatefulPartitionedCall"dropout/PartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_2790graph_convolution_2792*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
dropout_1/PartitionedCallPartitionedCall2graph_convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803�
dropout_1/PartitionedCall_1PartitionedCall4graph_convolution/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803�
+graph_convolution_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_1_2843graph_convolution_1_2845*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
-graph_convolution_1/StatefulPartitionedCall_1StatefulPartitionedCall$dropout_1/PartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_1_2843graph_convolution_1_2845*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
gather_indices/PartitionedCallPartitionedCall4graph_convolution_1/StatefulPartitionedCall:output:0inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858�
 gather_indices_1/PartitionedCallPartitionedCall6graph_convolution_1/StatefulPartitionedCall_1:output:0inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867�
dgi_readout/PartitionedCallPartitionedCall'gather_indices/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876�
)dgi_discriminator/StatefulPartitionedCallStatefulPartitionedCall'gather_indices/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_2894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
+dgi_discriminator/StatefulPartitionedCall_1StatefulPartitionedCall)gather_indices_1/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_2894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
tf.stack/stackPack2dgi_discriminator/StatefulPartitionedCall:output:04dgi_discriminator/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp*^dgi_discriminator/StatefulPartitionedCall,^dgi_discriminator/StatefulPartitionedCall_1*^graph_convolution/StatefulPartitionedCall,^graph_convolution/StatefulPartitionedCall_1,^graph_convolution_1/StatefulPartitionedCall.^graph_convolution_1/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2V
)dgi_discriminator/StatefulPartitionedCall)dgi_discriminator/StatefulPartitionedCall2Z
+dgi_discriminator/StatefulPartitionedCall_1+dgi_discriminator/StatefulPartitionedCall_12V
)graph_convolution/StatefulPartitionedCall)graph_convolution/StatefulPartitionedCall2Z
+graph_convolution/StatefulPartitionedCall_1+graph_convolution/StatefulPartitionedCall_12Z
+graph_convolution_1/StatefulPartitionedCall+graph_convolution_1/StatefulPartitionedCall2^
-graph_convolution_1/StatefulPartitionedCall_1-graph_convolution_1/StatefulPartitionedCall_1:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs:MI
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
`
A__inference_dropout_layer_call_and_return_conditional_losses_3641

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
dropout/MulMulinputsdropout/Const:output:0*
T0*%
_output_shapes
:Ư�$b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*%
_output_shapes
:Ư�$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*%
_output_shapes
:Ư�$m
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*%
_output_shapes
:Ư�$g
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*%
_output_shapes
:Ư�$W
IdentityIdentitydropout/Mul_1:z:0*
T0*%
_output_shapes
:Ư�$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�
�
0__inference_dgi_discriminator_layer_call_fn_3850
inputs_0
inputs_1
unknown:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:HD

_output_shapes

: 
"
_user_specified_name
inputs/1
�
r
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858

inputs
inputs_1
identityO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
GatherV2GatherV2inputsinputs_1GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims]
IdentityIdentityGatherV2:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_2976

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:��������� s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:��������� m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:��������� ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�F
�
?__inference_model_layer_call_and_return_conditional_losses_3180
input_5
input_1
input_2
input_3	
input_4)
graph_convolution_3152:	�$ $
graph_convolution_3154: *
graph_convolution_1_3162:  &
graph_convolution_1_3164: (
dgi_discriminator_3173:  
identity��)dgi_discriminator/StatefulPartitionedCall�+dgi_discriminator/StatefulPartitionedCall_1�)graph_convolution/StatefulPartitionedCall�+graph_convolution/StatefulPartitionedCall_1�+graph_convolution_1/StatefulPartitionedCall�-graph_convolution_1/StatefulPartitionedCall_1�
*squeezed_sparse_conversion/PartitionedCallPartitionedCallinput_3input_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_2727�
dropout/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2736�
,squeezed_sparse_conversion_1/PartitionedCallPartitionedCallinput_3input_4*
Tin
2	*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:���������:���������:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_2748�
dropout/PartitionedCall_1PartitionedCallinput_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_2736�
)graph_convolution/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_3152graph_convolution_3154*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
+graph_convolution/StatefulPartitionedCall_1StatefulPartitionedCall"dropout/PartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_3152graph_convolution_3154*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_graph_convolution_layer_call_and_return_conditional_losses_2789�
dropout_1/PartitionedCallPartitionedCall2graph_convolution/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803�
dropout_1/PartitionedCall_1PartitionedCall4graph_convolution/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803�
+graph_convolution_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:03squeezed_sparse_conversion/PartitionedCall:output:13squeezed_sparse_conversion/PartitionedCall:output:2graph_convolution_1_3162graph_convolution_1_3164*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
-graph_convolution_1/StatefulPartitionedCall_1StatefulPartitionedCall$dropout_1/PartitionedCall_1:output:05squeezed_sparse_conversion_1/PartitionedCall:output:05squeezed_sparse_conversion_1/PartitionedCall:output:15squeezed_sparse_conversion_1/PartitionedCall:output:2graph_convolution_1_3162graph_convolution_1_3164*
Tin

2		*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_2842�
gather_indices/PartitionedCallPartitionedCall4graph_convolution_1/StatefulPartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_gather_indices_layer_call_and_return_conditional_losses_2858�
 gather_indices_1/PartitionedCallPartitionedCall6graph_convolution_1/StatefulPartitionedCall_1:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867�
dgi_readout/PartitionedCallPartitionedCall'gather_indices/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dgi_readout_layer_call_and_return_conditional_losses_2876�
)dgi_discriminator/StatefulPartitionedCallStatefulPartitionedCall'gather_indices/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
+dgi_discriminator/StatefulPartitionedCall_1StatefulPartitionedCall)gather_indices_1/PartitionedCall:output:0$dgi_readout/PartitionedCall:output:0dgi_discriminator_3173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_2893�
tf.stack/stackPack2dgi_discriminator/StatefulPartitionedCall:output:04dgi_discriminator/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp*^dgi_discriminator/StatefulPartitionedCall,^dgi_discriminator/StatefulPartitionedCall_1*^graph_convolution/StatefulPartitionedCall,^graph_convolution/StatefulPartitionedCall_1,^graph_convolution_1/StatefulPartitionedCall.^graph_convolution_1/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2V
)dgi_discriminator/StatefulPartitionedCall)dgi_discriminator/StatefulPartitionedCall2Z
+dgi_discriminator/StatefulPartitionedCall_1+dgi_discriminator/StatefulPartitionedCall_12V
)graph_convolution/StatefulPartitionedCall)graph_convolution/StatefulPartitionedCall2Z
+graph_convolution/StatefulPartitionedCall_1+graph_convolution/StatefulPartitionedCall_12Z
+graph_convolution_1/StatefulPartitionedCall+graph_convolution_1/StatefulPartitionedCall2^
-graph_convolution_1/StatefulPartitionedCall_1-graph_convolution_1/StatefulPartitionedCall_1:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
[
/__inference_gather_indices_1_layer_call_fn_3835
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_2867d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:��������� :���������:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
$__inference_model_layer_call_fn_3137
input_5
input_1
input_2
input_3	
input_4
unknown:	�$ 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_1input_2input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_3105s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
�
$__inference_model_layer_call_fn_2914
input_5
input_1
input_2
input_3	
input_4
unknown:	�$ 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_1input_2input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2901s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
_
A__inference_dropout_layer_call_and_return_conditional_losses_2736

inputs

identity_1L
IdentityIdentityinputs*
T0*%
_output_shapes
:Ư�$Y

Identity_1IdentityIdentity:output:0*
T0*%
_output_shapes
:Ư�$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�
�
?__inference_model_layer_call_and_return_conditional_losses_3437
inputs_0
inputs_1
inputs_2
inputs_3	
inputs_4D
1graph_convolution_shape_1_readvariableop_resource:	�$ ;
-graph_convolution_add_readvariableop_resource: E
3graph_convolution_1_shape_1_readvariableop_resource:  =
/graph_convolution_1_add_readvariableop_resource: I
7dgi_discriminator_matvec_matmul_readvariableop_resource:  
identity��.dgi_discriminator/MatVec/MatMul/ReadVariableOp�0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp�$graph_convolution/add/ReadVariableOp�&graph_convolution/add_1/ReadVariableOp�*graph_convolution/transpose/ReadVariableOp�,graph_convolution/transpose_1/ReadVariableOp�&graph_convolution_1/add/ReadVariableOp�(graph_convolution_1/add_1/ReadVariableOp�,graph_convolution_1/transpose/ReadVariableOp�.graph_convolution_1/transpose_1/ReadVariableOp�
"squeezed_sparse_conversion/SqueezeSqueezeinputs_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 ~
$squeezed_sparse_conversion/Squeeze_1Squeezeinputs_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
3squeezed_sparse_conversion/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      V
dropout/IdentityIdentityinputs_1*
T0*%
_output_shapes
:Ư�$�
$squeezed_sparse_conversion_1/SqueezeSqueezeinputs_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 �
&squeezed_sparse_conversion_1/Squeeze_1Squeezeinputs_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
5squeezed_sparse_conversion_1/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      X
dropout/Identity_1Identityinputs_0*
T0*%
_output_shapes
:Ư�$�
graph_convolution/SqueezeSqueezedropout/Identity:output:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Agraph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul+squeezed_sparse_conversion/Squeeze:output:0-squeezed_sparse_conversion/Squeeze_1:output:0<squeezed_sparse_conversion/SparseTensor/dense_shape:output:0"graph_convolution/Squeeze:output:0*
T0*!
_output_shapes
:Ư�$b
 graph_convolution/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution/ExpandDims
ExpandDimsKgraph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0)graph_convolution/ExpandDims/dim:output:0*
T0*%
_output_shapes
:Ư�$l
graph_convolution/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  u
graph_convolution/unstackUnpack graph_convolution/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
(graph_convolution/Shape_1/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0j
graph_convolution/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"j      w
graph_convolution/unstack_1Unpack"graph_convolution/Shape_1:output:0*
T0*
_output_shapes
: : *	
nump
graph_convolution/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
graph_convolution/ReshapeReshape%graph_convolution/ExpandDims:output:0(graph_convolution/Reshape/shape:output:0*
T0*!
_output_shapes
:Ư�$�
*graph_convolution/transpose/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0q
 graph_convolution/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution/transpose	Transpose2graph_convolution/transpose/ReadVariableOp:value:0)graph_convolution/transpose/perm:output:0*
T0*
_output_shapes
:	�$ r
!graph_convolution/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
graph_convolution/Reshape_1Reshapegraph_convolution/transpose:y:0*graph_convolution/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�$ �
graph_convolution/MatMulMatMul"graph_convolution/Reshape:output:0$graph_convolution/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư v
!graph_convolution/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution/Reshape_2Reshape"graph_convolution/MatMul:product:0*graph_convolution/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
$graph_convolution/add/ReadVariableOpReadVariableOp-graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution/addAddV2$graph_convolution/Reshape_2:output:0,graph_convolution/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư h
graph_convolution/ReluRelugraph_convolution/add:z:0*
T0*$
_output_shapes
:Ư �
graph_convolution/Squeeze_1Squeezedropout/Identity_1:output:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Cgraph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul-squeezed_sparse_conversion_1/Squeeze:output:0/squeezed_sparse_conversion_1/Squeeze_1:output:0>squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0$graph_convolution/Squeeze_1:output:0*
T0*!
_output_shapes
:Ư�$d
"graph_convolution/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution/ExpandDims_1
ExpandDimsMgraph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0+graph_convolution/ExpandDims_1/dim:output:0*
T0*%
_output_shapes
:Ư�$n
graph_convolution/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W  j  y
graph_convolution/unstack_2Unpack"graph_convolution/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
(graph_convolution/Shape_3/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0j
graph_convolution/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"j      w
graph_convolution/unstack_3Unpack"graph_convolution/Shape_3:output:0*
T0*
_output_shapes
: : *	
numr
!graph_convolution/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
graph_convolution/Reshape_3Reshape'graph_convolution/ExpandDims_1:output:0*graph_convolution/Reshape_3/shape:output:0*
T0*!
_output_shapes
:Ư�$�
,graph_convolution/transpose_1/ReadVariableOpReadVariableOp1graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0s
"graph_convolution/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution/transpose_1	Transpose4graph_convolution/transpose_1/ReadVariableOp:value:0+graph_convolution/transpose_1/perm:output:0*
T0*
_output_shapes
:	�$ r
!graph_convolution/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
graph_convolution/Reshape_4Reshape!graph_convolution/transpose_1:y:0*graph_convolution/Reshape_4/shape:output:0*
T0*
_output_shapes
:	�$ �
graph_convolution/MatMul_1MatMul$graph_convolution/Reshape_3:output:0$graph_convolution/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư v
!graph_convolution/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution/Reshape_5Reshape$graph_convolution/MatMul_1:product:0*graph_convolution/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
&graph_convolution/add_1/ReadVariableOpReadVariableOp-graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution/add_1AddV2$graph_convolution/Reshape_5:output:0.graph_convolution/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư l
graph_convolution/Relu_1Relugraph_convolution/add_1:z:0*
T0*$
_output_shapes
:Ư s
dropout_1/IdentityIdentity$graph_convolution/Relu:activations:0*
T0*$
_output_shapes
:Ư w
dropout_1/Identity_1Identity&graph_convolution/Relu_1:activations:0*
T0*$
_output_shapes
:Ư �
graph_convolution_1/SqueezeSqueezedropout_1/Identity:output:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Cgraph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul+squeezed_sparse_conversion/Squeeze:output:0-squeezed_sparse_conversion/Squeeze_1:output:0<squeezed_sparse_conversion/SparseTensor/dense_shape:output:0$graph_convolution_1/Squeeze:output:0*
T0* 
_output_shapes
:
Ư d
"graph_convolution_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
graph_convolution_1/ExpandDims
ExpandDimsMgraph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0+graph_convolution_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:Ư n
graph_convolution_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      y
graph_convolution_1/unstackUnpack"graph_convolution_1/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
*graph_convolution_1/Shape_1/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0l
graph_convolution_1/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        {
graph_convolution_1/unstack_1Unpack$graph_convolution_1/Shape_1:output:0*
T0*
_output_shapes
: : *	
numr
!graph_convolution_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
graph_convolution_1/ReshapeReshape'graph_convolution_1/ExpandDims:output:0*graph_convolution_1/Reshape/shape:output:0*
T0* 
_output_shapes
:
Ư �
,graph_convolution_1/transpose/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0s
"graph_convolution_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution_1/transpose	Transpose4graph_convolution_1/transpose/ReadVariableOp:value:0+graph_convolution_1/transpose/perm:output:0*
T0*
_output_shapes

:  t
#graph_convolution_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
graph_convolution_1/Reshape_1Reshape!graph_convolution_1/transpose:y:0,graph_convolution_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:  �
graph_convolution_1/MatMulMatMul$graph_convolution_1/Reshape:output:0&graph_convolution_1/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư x
#graph_convolution_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution_1/Reshape_2Reshape$graph_convolution_1/MatMul:product:0,graph_convolution_1/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
&graph_convolution_1/add/ReadVariableOpReadVariableOp/graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution_1/addAddV2&graph_convolution_1/Reshape_2:output:0.graph_convolution_1/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư l
graph_convolution_1/ReluRelugraph_convolution_1/add:z:0*
T0*$
_output_shapes
:Ư �
graph_convolution_1/Squeeze_1Squeezedropout_1/Identity_1:output:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Egraph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul-squeezed_sparse_conversion_1/Squeeze:output:0/squeezed_sparse_conversion_1/Squeeze_1:output:0>squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0&graph_convolution_1/Squeeze_1:output:0*
T0* 
_output_shapes
:
Ư f
$graph_convolution_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
 graph_convolution_1/ExpandDims_1
ExpandDimsOgraph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0-graph_convolution_1/ExpandDims_1/dim:output:0*
T0*$
_output_shapes
:Ư p
graph_convolution_1/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W      }
graph_convolution_1/unstack_2Unpack$graph_convolution_1/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
*graph_convolution_1/Shape_3/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0l
graph_convolution_1/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"        {
graph_convolution_1/unstack_3Unpack$graph_convolution_1/Shape_3:output:0*
T0*
_output_shapes
: : *	
numt
#graph_convolution_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
graph_convolution_1/Reshape_3Reshape)graph_convolution_1/ExpandDims_1:output:0,graph_convolution_1/Reshape_3/shape:output:0*
T0* 
_output_shapes
:
Ư �
.graph_convolution_1/transpose_1/ReadVariableOpReadVariableOp3graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0u
$graph_convolution_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
graph_convolution_1/transpose_1	Transpose6graph_convolution_1/transpose_1/ReadVariableOp:value:0-graph_convolution_1/transpose_1/perm:output:0*
T0*
_output_shapes

:  t
#graph_convolution_1/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
graph_convolution_1/Reshape_4Reshape#graph_convolution_1/transpose_1:y:0,graph_convolution_1/Reshape_4/shape:output:0*
T0*
_output_shapes

:  �
graph_convolution_1/MatMul_1MatMul&graph_convolution_1/Reshape_3:output:0&graph_convolution_1/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư x
#graph_convolution_1/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
graph_convolution_1/Reshape_5Reshape&graph_convolution_1/MatMul_1:product:0,graph_convolution_1/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
(graph_convolution_1/add_1/ReadVariableOpReadVariableOp/graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
graph_convolution_1/add_1AddV2&graph_convolution_1/Reshape_5:output:00graph_convolution_1/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư p
graph_convolution_1/Relu_1Relugraph_convolution_1/add_1:z:0*
T0*$
_output_shapes
:Ư ^
gather_indices/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gather_indices/GatherV2GatherV2&graph_convolution_1/Relu:activations:0inputs_2%gather_indices/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dims`
gather_indices_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gather_indices_1/GatherV2GatherV2(graph_convolution_1/Relu_1:activations:0inputs_2'gather_indices_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dimsm
"dgi_readout/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
dgi_readout/MeanMean gather_indices/GatherV2:output:0+dgi_readout/Mean/reduction_indices:output:0*
T0*
_output_shapes

: b
dgi_readout/SigmoidSigmoiddgi_readout/Mean:output:0*
T0*
_output_shapes

: r
'dgi_discriminator/MatVec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
#dgi_discriminator/MatVec/ExpandDims
ExpandDimsdgi_readout/Sigmoid:y:00dgi_discriminator/MatVec/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
.dgi_discriminator/MatVec/MatMul/ReadVariableOpReadVariableOp7dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dgi_discriminator/MatVec/MatMulBatchMatMulV26dgi_discriminator/MatVec/MatMul/ReadVariableOp:value:0,dgi_discriminator/MatVec/ExpandDims:output:0*
T0*"
_output_shapes
: �
 dgi_discriminator/MatVec/SqueezeSqueeze(dgi_discriminator/MatVec/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������t
)dgi_discriminator/MatVec_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_1/ExpandDims
ExpandDims)dgi_discriminator/MatVec/Squeeze:output:02dgi_discriminator/MatVec_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
!dgi_discriminator/MatVec_1/MatMulBatchMatMulV2 gather_indices/GatherV2:output:0.dgi_discriminator/MatVec_1/ExpandDims:output:0*
T0*+
_output_shapes
:����������
"dgi_discriminator/MatVec_1/SqueezeSqueeze*dgi_discriminator/MatVec_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������t
)dgi_discriminator/MatVec_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_2/ExpandDims
ExpandDimsdgi_readout/Sigmoid:y:02dgi_discriminator/MatVec_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
0dgi_discriminator/MatVec_2/MatMul/ReadVariableOpReadVariableOp7dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
!dgi_discriminator/MatVec_2/MatMulBatchMatMulV28dgi_discriminator/MatVec_2/MatMul/ReadVariableOp:value:0.dgi_discriminator/MatVec_2/ExpandDims:output:0*
T0*"
_output_shapes
: �
"dgi_discriminator/MatVec_2/SqueezeSqueeze*dgi_discriminator/MatVec_2/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������t
)dgi_discriminator/MatVec_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%dgi_discriminator/MatVec_3/ExpandDims
ExpandDims+dgi_discriminator/MatVec_2/Squeeze:output:02dgi_discriminator/MatVec_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
!dgi_discriminator/MatVec_3/MatMulBatchMatMulV2"gather_indices_1/GatherV2:output:0.dgi_discriminator/MatVec_3/ExpandDims:output:0*
T0*+
_output_shapes
:����������
"dgi_discriminator/MatVec_3/SqueezeSqueeze*dgi_discriminator/MatVec_3/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
tf.stack/stackPack+dgi_discriminator/MatVec_1/Squeeze:output:0+dgi_discriminator/MatVec_3/Squeeze:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������j
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^dgi_discriminator/MatVec/MatMul/ReadVariableOp1^dgi_discriminator/MatVec_2/MatMul/ReadVariableOp%^graph_convolution/add/ReadVariableOp'^graph_convolution/add_1/ReadVariableOp+^graph_convolution/transpose/ReadVariableOp-^graph_convolution/transpose_1/ReadVariableOp'^graph_convolution_1/add/ReadVariableOp)^graph_convolution_1/add_1/ReadVariableOp-^graph_convolution_1/transpose/ReadVariableOp/^graph_convolution_1/transpose_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2`
.dgi_discriminator/MatVec/MatMul/ReadVariableOp.dgi_discriminator/MatVec/MatMul/ReadVariableOp2d
0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp0dgi_discriminator/MatVec_2/MatMul/ReadVariableOp2L
$graph_convolution/add/ReadVariableOp$graph_convolution/add/ReadVariableOp2P
&graph_convolution/add_1/ReadVariableOp&graph_convolution/add_1/ReadVariableOp2X
*graph_convolution/transpose/ReadVariableOp*graph_convolution/transpose/ReadVariableOp2\
,graph_convolution/transpose_1/ReadVariableOp,graph_convolution/transpose_1/ReadVariableOp2P
&graph_convolution_1/add/ReadVariableOp&graph_convolution_1/add/ReadVariableOp2T
(graph_convolution_1/add_1/ReadVariableOp(graph_convolution_1/add_1/ReadVariableOp2\
,graph_convolution_1/transpose/ReadVariableOp,graph_convolution_1/transpose/ReadVariableOp2`
.graph_convolution_1/transpose_1/ReadVariableOp.graph_convolution_1/transpose_1/ReadVariableOp:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4
�
_
&__inference_dropout_layer_call_fn_3624

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *%
_output_shapes
:Ư�$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_3012m
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*%
_output_shapes
:Ư�$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:Ư�$22
StatefulPartitionedCallStatefulPartitionedCall:M I
%
_output_shapes
:Ư�$
 
_user_specified_nameinputs
�
�
__inference__wrapped_model_2702
input_5
input_1
input_2
input_3	
input_4J
7model_graph_convolution_shape_1_readvariableop_resource:	�$ A
3model_graph_convolution_add_readvariableop_resource: K
9model_graph_convolution_1_shape_1_readvariableop_resource:  C
5model_graph_convolution_1_add_readvariableop_resource: O
=model_dgi_discriminator_matvec_matmul_readvariableop_resource:  
identity��4model/dgi_discriminator/MatVec/MatMul/ReadVariableOp�6model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOp�*model/graph_convolution/add/ReadVariableOp�,model/graph_convolution/add_1/ReadVariableOp�0model/graph_convolution/transpose/ReadVariableOp�2model/graph_convolution/transpose_1/ReadVariableOp�,model/graph_convolution_1/add/ReadVariableOp�.model/graph_convolution_1/add_1/ReadVariableOp�2model/graph_convolution_1/transpose/ReadVariableOp�4model/graph_convolution_1/transpose_1/ReadVariableOp�
(model/squeezed_sparse_conversion/SqueezeSqueezeinput_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 �
*model/squeezed_sparse_conversion/Squeeze_1Squeezeinput_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
9model/squeezed_sparse_conversion/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      [
model/dropout/IdentityIdentityinput_1*
T0*%
_output_shapes
:Ư�$�
*model/squeezed_sparse_conversion_1/SqueezeSqueezeinput_3*
T0	*'
_output_shapes
:���������*
squeeze_dims
 �
,model/squeezed_sparse_conversion_1/Squeeze_1Squeezeinput_4*
T0*#
_output_shapes
:���������*
squeeze_dims
 �
;model/squeezed_sparse_conversion_1/SparseTensor/dense_shapeConst*
_output_shapes
:*
dtype0	*%
valueB	"�W      �W      ]
model/dropout/Identity_1Identityinput_5*
T0*%
_output_shapes
:Ư�$�
model/graph_convolution/SqueezeSqueezemodel/dropout/Identity:output:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Gmodel/graph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul1model/squeezed_sparse_conversion/Squeeze:output:03model/squeezed_sparse_conversion/Squeeze_1:output:0Bmodel/squeezed_sparse_conversion/SparseTensor/dense_shape:output:0(model/graph_convolution/Squeeze:output:0*
T0*!
_output_shapes
:Ư�$h
&model/graph_convolution/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
"model/graph_convolution/ExpandDims
ExpandDimsQmodel/graph_convolution/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0/model/graph_convolution/ExpandDims/dim:output:0*
T0*%
_output_shapes
:Ư�$r
model/graph_convolution/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
model/graph_convolution/unstackUnpack&model/graph_convolution/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
.model/graph_convolution/Shape_1/ReadVariableOpReadVariableOp7model_graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0p
model/graph_convolution/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"j      �
!model/graph_convolution/unstack_1Unpack(model/graph_convolution/Shape_1:output:0*
T0*
_output_shapes
: : *	
numv
%model/graph_convolution/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
model/graph_convolution/ReshapeReshape+model/graph_convolution/ExpandDims:output:0.model/graph_convolution/Reshape/shape:output:0*
T0*!
_output_shapes
:Ư�$�
0model/graph_convolution/transpose/ReadVariableOpReadVariableOp7model_graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0w
&model/graph_convolution/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
!model/graph_convolution/transpose	Transpose8model/graph_convolution/transpose/ReadVariableOp:value:0/model/graph_convolution/transpose/perm:output:0*
T0*
_output_shapes
:	�$ x
'model/graph_convolution/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
!model/graph_convolution/Reshape_1Reshape%model/graph_convolution/transpose:y:00model/graph_convolution/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�$ �
model/graph_convolution/MatMulMatMul(model/graph_convolution/Reshape:output:0*model/graph_convolution/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư |
'model/graph_convolution/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
!model/graph_convolution/Reshape_2Reshape(model/graph_convolution/MatMul:product:00model/graph_convolution/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
*model/graph_convolution/add/ReadVariableOpReadVariableOp3model_graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
model/graph_convolution/addAddV2*model/graph_convolution/Reshape_2:output:02model/graph_convolution/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư t
model/graph_convolution/ReluRelumodel/graph_convolution/add:z:0*
T0*$
_output_shapes
:Ư �
!model/graph_convolution/Squeeze_1Squeeze!model/dropout/Identity_1:output:0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
Imodel/graph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul3model/squeezed_sparse_conversion_1/Squeeze:output:05model/squeezed_sparse_conversion_1/Squeeze_1:output:0Dmodel/squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0*model/graph_convolution/Squeeze_1:output:0*
T0*!
_output_shapes
:Ư�$j
(model/graph_convolution/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
$model/graph_convolution/ExpandDims_1
ExpandDimsSmodel/graph_convolution/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:01model/graph_convolution/ExpandDims_1/dim:output:0*
T0*%
_output_shapes
:Ư�$t
model/graph_convolution/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W  j  �
!model/graph_convolution/unstack_2Unpack(model/graph_convolution/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
.model/graph_convolution/Shape_3/ReadVariableOpReadVariableOp7model_graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0p
model/graph_convolution/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"j      �
!model/graph_convolution/unstack_3Unpack(model/graph_convolution/Shape_3:output:0*
T0*
_output_shapes
: : *	
numx
'model/graph_convolution/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  �
!model/graph_convolution/Reshape_3Reshape-model/graph_convolution/ExpandDims_1:output:00model/graph_convolution/Reshape_3/shape:output:0*
T0*!
_output_shapes
:Ư�$�
2model/graph_convolution/transpose_1/ReadVariableOpReadVariableOp7model_graph_convolution_shape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0y
(model/graph_convolution/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
#model/graph_convolution/transpose_1	Transpose:model/graph_convolution/transpose_1/ReadVariableOp:value:01model/graph_convolution/transpose_1/perm:output:0*
T0*
_output_shapes
:	�$ x
'model/graph_convolution/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  �����
!model/graph_convolution/Reshape_4Reshape'model/graph_convolution/transpose_1:y:00model/graph_convolution/Reshape_4/shape:output:0*
T0*
_output_shapes
:	�$ �
 model/graph_convolution/MatMul_1MatMul*model/graph_convolution/Reshape_3:output:0*model/graph_convolution/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư |
'model/graph_convolution/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
!model/graph_convolution/Reshape_5Reshape*model/graph_convolution/MatMul_1:product:00model/graph_convolution/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
,model/graph_convolution/add_1/ReadVariableOpReadVariableOp3model_graph_convolution_add_readvariableop_resource*
_output_shapes
: *
dtype0�
model/graph_convolution/add_1AddV2*model/graph_convolution/Reshape_5:output:04model/graph_convolution/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư x
model/graph_convolution/Relu_1Relu!model/graph_convolution/add_1:z:0*
T0*$
_output_shapes
:Ư 
model/dropout_1/IdentityIdentity*model/graph_convolution/Relu:activations:0*
T0*$
_output_shapes
:Ư �
model/dropout_1/Identity_1Identity,model/graph_convolution/Relu_1:activations:0*
T0*$
_output_shapes
:Ư �
!model/graph_convolution_1/SqueezeSqueeze!model/dropout_1/Identity:output:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Imodel/graph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMul1model/squeezed_sparse_conversion/Squeeze:output:03model/squeezed_sparse_conversion/Squeeze_1:output:0Bmodel/squeezed_sparse_conversion/SparseTensor/dense_shape:output:0*model/graph_convolution_1/Squeeze:output:0*
T0* 
_output_shapes
:
Ư j
(model/graph_convolution_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
$model/graph_convolution_1/ExpandDims
ExpandDimsSmodel/graph_convolution_1/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:01model/graph_convolution_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:Ư t
model/graph_convolution_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
!model/graph_convolution_1/unstackUnpack(model/graph_convolution_1/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
0model/graph_convolution_1/Shape_1/ReadVariableOpReadVariableOp9model_graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0r
!model/graph_convolution_1/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"        �
#model/graph_convolution_1/unstack_1Unpack*model/graph_convolution_1/Shape_1:output:0*
T0*
_output_shapes
: : *	
numx
'model/graph_convolution_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
!model/graph_convolution_1/ReshapeReshape-model/graph_convolution_1/ExpandDims:output:00model/graph_convolution_1/Reshape/shape:output:0*
T0* 
_output_shapes
:
Ư �
2model/graph_convolution_1/transpose/ReadVariableOpReadVariableOp9model_graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0y
(model/graph_convolution_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
#model/graph_convolution_1/transpose	Transpose:model/graph_convolution_1/transpose/ReadVariableOp:value:01model/graph_convolution_1/transpose/perm:output:0*
T0*
_output_shapes

:  z
)model/graph_convolution_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
#model/graph_convolution_1/Reshape_1Reshape'model/graph_convolution_1/transpose:y:02model/graph_convolution_1/Reshape_1/shape:output:0*
T0*
_output_shapes

:  �
 model/graph_convolution_1/MatMulMatMul*model/graph_convolution_1/Reshape:output:0,model/graph_convolution_1/Reshape_1:output:0*
T0* 
_output_shapes
:
Ư ~
)model/graph_convolution_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
#model/graph_convolution_1/Reshape_2Reshape*model/graph_convolution_1/MatMul:product:02model/graph_convolution_1/Reshape_2/shape:output:0*
T0*$
_output_shapes
:Ư �
,model/graph_convolution_1/add/ReadVariableOpReadVariableOp5model_graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
model/graph_convolution_1/addAddV2,model/graph_convolution_1/Reshape_2:output:04model/graph_convolution_1/add/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư x
model/graph_convolution_1/ReluRelu!model/graph_convolution_1/add:z:0*
T0*$
_output_shapes
:Ư �
#model/graph_convolution_1/Squeeze_1Squeeze#model/dropout_1/Identity_1:output:0*
T0* 
_output_shapes
:
Ư *
squeeze_dims
 �
Kmodel/graph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMul3model/squeezed_sparse_conversion_1/Squeeze:output:05model/squeezed_sparse_conversion_1/Squeeze_1:output:0Dmodel/squeezed_sparse_conversion_1/SparseTensor/dense_shape:output:0,model/graph_convolution_1/Squeeze_1:output:0*
T0* 
_output_shapes
:
Ư l
*model/graph_convolution_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
&model/graph_convolution_1/ExpandDims_1
ExpandDimsUmodel/graph_convolution_1/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:03model/graph_convolution_1/ExpandDims_1/dim:output:0*
T0*$
_output_shapes
:Ư v
!model/graph_convolution_1/Shape_2Const*
_output_shapes
:*
dtype0*!
valueB"   �W      �
#model/graph_convolution_1/unstack_2Unpack*model/graph_convolution_1/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
0model/graph_convolution_1/Shape_3/ReadVariableOpReadVariableOp9model_graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0r
!model/graph_convolution_1/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"        �
#model/graph_convolution_1/unstack_3Unpack*model/graph_convolution_1/Shape_3:output:0*
T0*
_output_shapes
: : *	
numz
)model/graph_convolution_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
#model/graph_convolution_1/Reshape_3Reshape/model/graph_convolution_1/ExpandDims_1:output:02model/graph_convolution_1/Reshape_3/shape:output:0*
T0* 
_output_shapes
:
Ư �
4model/graph_convolution_1/transpose_1/ReadVariableOpReadVariableOp9model_graph_convolution_1_shape_1_readvariableop_resource*
_output_shapes

:  *
dtype0{
*model/graph_convolution_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
%model/graph_convolution_1/transpose_1	Transpose<model/graph_convolution_1/transpose_1/ReadVariableOp:value:03model/graph_convolution_1/transpose_1/perm:output:0*
T0*
_output_shapes

:  z
)model/graph_convolution_1/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"    �����
#model/graph_convolution_1/Reshape_4Reshape)model/graph_convolution_1/transpose_1:y:02model/graph_convolution_1/Reshape_4/shape:output:0*
T0*
_output_shapes

:  �
"model/graph_convolution_1/MatMul_1MatMul,model/graph_convolution_1/Reshape_3:output:0,model/graph_convolution_1/Reshape_4:output:0*
T0* 
_output_shapes
:
Ư ~
)model/graph_convolution_1/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   �W      �
#model/graph_convolution_1/Reshape_5Reshape,model/graph_convolution_1/MatMul_1:product:02model/graph_convolution_1/Reshape_5/shape:output:0*
T0*$
_output_shapes
:Ư �
.model/graph_convolution_1/add_1/ReadVariableOpReadVariableOp5model_graph_convolution_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
model/graph_convolution_1/add_1AddV2,model/graph_convolution_1/Reshape_5:output:06model/graph_convolution_1/add_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:Ư |
 model/graph_convolution_1/Relu_1Relu#model/graph_convolution_1/add_1:z:0*
T0*$
_output_shapes
:Ư d
"model/gather_indices/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/gather_indices/GatherV2GatherV2,model/graph_convolution_1/Relu:activations:0input_2+model/gather_indices/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dimsf
$model/gather_indices_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/gather_indices_1/GatherV2GatherV2.model/graph_convolution_1/Relu_1:activations:0input_2-model/gather_indices_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:��������� *

batch_dimss
(model/dgi_readout/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/dgi_readout/MeanMean&model/gather_indices/GatherV2:output:01model/dgi_readout/Mean/reduction_indices:output:0*
T0*
_output_shapes

: n
model/dgi_readout/SigmoidSigmoidmodel/dgi_readout/Mean:output:0*
T0*
_output_shapes

: x
-model/dgi_discriminator/MatVec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
)model/dgi_discriminator/MatVec/ExpandDims
ExpandDimsmodel/dgi_readout/Sigmoid:y:06model/dgi_discriminator/MatVec/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
4model/dgi_discriminator/MatVec/MatMul/ReadVariableOpReadVariableOp=model_dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
%model/dgi_discriminator/MatVec/MatMulBatchMatMulV2<model/dgi_discriminator/MatVec/MatMul/ReadVariableOp:value:02model/dgi_discriminator/MatVec/ExpandDims:output:0*
T0*"
_output_shapes
: �
&model/dgi_discriminator/MatVec/SqueezeSqueeze.model/dgi_discriminator/MatVec/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������z
/model/dgi_discriminator/MatVec_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
+model/dgi_discriminator/MatVec_1/ExpandDims
ExpandDims/model/dgi_discriminator/MatVec/Squeeze:output:08model/dgi_discriminator/MatVec_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
'model/dgi_discriminator/MatVec_1/MatMulBatchMatMulV2&model/gather_indices/GatherV2:output:04model/dgi_discriminator/MatVec_1/ExpandDims:output:0*
T0*+
_output_shapes
:����������
(model/dgi_discriminator/MatVec_1/SqueezeSqueeze0model/dgi_discriminator/MatVec_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������z
/model/dgi_discriminator/MatVec_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
+model/dgi_discriminator/MatVec_2/ExpandDims
ExpandDimsmodel/dgi_readout/Sigmoid:y:08model/dgi_discriminator/MatVec_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
6model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOpReadVariableOp=model_dgi_discriminator_matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
'model/dgi_discriminator/MatVec_2/MatMulBatchMatMulV2>model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOp:value:04model/dgi_discriminator/MatVec_2/ExpandDims:output:0*
T0*"
_output_shapes
: �
(model/dgi_discriminator/MatVec_2/SqueezeSqueeze0model/dgi_discriminator/MatVec_2/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������z
/model/dgi_discriminator/MatVec_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
+model/dgi_discriminator/MatVec_3/ExpandDims
ExpandDims1model/dgi_discriminator/MatVec_2/Squeeze:output:08model/dgi_discriminator/MatVec_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
'model/dgi_discriminator/MatVec_3/MatMulBatchMatMulV2(model/gather_indices_1/GatherV2:output:04model/dgi_discriminator/MatVec_3/ExpandDims:output:0*
T0*+
_output_shapes
:����������
(model/dgi_discriminator/MatVec_3/SqueezeSqueeze0model/dgi_discriminator/MatVec_3/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
model/tf.stack/stackPack1model/dgi_discriminator/MatVec_1/Squeeze:output:01model/dgi_discriminator/MatVec_3/Squeeze:output:0*
N*
T0*+
_output_shapes
:���������*
axis���������p
IdentityIdentitymodel/tf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp5^model/dgi_discriminator/MatVec/MatMul/ReadVariableOp7^model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOp+^model/graph_convolution/add/ReadVariableOp-^model/graph_convolution/add_1/ReadVariableOp1^model/graph_convolution/transpose/ReadVariableOp3^model/graph_convolution/transpose_1/ReadVariableOp-^model/graph_convolution_1/add/ReadVariableOp/^model/graph_convolution_1/add_1/ReadVariableOp3^model/graph_convolution_1/transpose/ReadVariableOp5^model/graph_convolution_1/transpose_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 2l
4model/dgi_discriminator/MatVec/MatMul/ReadVariableOp4model/dgi_discriminator/MatVec/MatMul/ReadVariableOp2p
6model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOp6model/dgi_discriminator/MatVec_2/MatMul/ReadVariableOp2X
*model/graph_convolution/add/ReadVariableOp*model/graph_convolution/add/ReadVariableOp2\
,model/graph_convolution/add_1/ReadVariableOp,model/graph_convolution/add_1/ReadVariableOp2d
0model/graph_convolution/transpose/ReadVariableOp0model/graph_convolution/transpose/ReadVariableOp2h
2model/graph_convolution/transpose_1/ReadVariableOp2model/graph_convolution/transpose_1/ReadVariableOp2\
,model/graph_convolution_1/add/ReadVariableOp,model/graph_convolution_1/add/ReadVariableOp2`
.model/graph_convolution_1/add_1/ReadVariableOp.model/graph_convolution_1/add_1/ReadVariableOp2h
2model/graph_convolution_1/transpose/ReadVariableOp2model/graph_convolution_1/transpose/ReadVariableOp2l
4model/graph_convolution_1/transpose_1/ReadVariableOp4model/graph_convolution_1/transpose_1/ReadVariableOp:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:��������� _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_3288
inputs_0
inputs_1
inputs_2
inputs_3	
inputs_4
unknown:	�$ 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_3105s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:Ư�$:���������:���������:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/4
�
�
"__inference_signature_wrapper_3250
input_1
input_2
input_3	
input_4
input_5
unknown:	�$ 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_1input_2input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
	*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_2702s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:Ư�$:���������:���������:���������:Ư�$: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
%
_output_shapes
:Ư�$
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:TP
+
_output_shapes
:���������
!
_user_specified_name	input_3:PL
'
_output_shapes
:���������
!
_user_specified_name	input_4:NJ
%
_output_shapes
:Ư�$
!
_user_specified_name	input_5
�
D
(__inference_dropout_1_layer_call_fn_3734

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_2803d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� :S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
K__inference_graph_convolution_layer_call_and_return_conditional_losses_3709
inputs_0

inputs	
inputs_1
inputs_2	2
shape_1_readvariableop_resource:	�$ )
add_readvariableop_resource: 
identity��add/ReadVariableOp�transpose/ReadVariableOp_
SqueezeSqueezeinputs_0*
T0*!
_output_shapes
:Ư�$*
squeeze_dims
 �
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2Squeeze:output:0*
T0*(
_output_shapes
:����������$P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:����������$H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numw
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"j      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����j  r
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:����������$y
transpose/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes
:	�$ *
dtype0_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       {
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*
_output_shapes
:	�$ `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"j  ����g
	Reshape_1Reshapetranspose:y:0Reshape_1/shape:output:0*
T0*
_output_shapes
:	�$ h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:��������� S
Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape_2/shapePackReshape_2/shape/0:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0r
addAddV2Reshape_2:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� K
ReluReluadd:z:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� v
NoOpNoOp^add/ReadVariableOp^transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:Ư�$:���������:���������:: : 2(
add/ReadVariableOpadd/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp:O K
%
_output_shapes
:Ư�$
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
�
�
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_3865
inputs_0
inputs_17
%matvec_matmul_readvariableop_resource:  
identity��MatVec/MatMul/ReadVariableOp`
MatVec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������v
MatVec/ExpandDims
ExpandDimsinputs_1MatVec/ExpandDims/dim:output:0*
T0*"
_output_shapes
: �
MatVec/MatMul/ReadVariableOpReadVariableOp%matvec_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
MatVec/MatMulBatchMatMulV2$MatVec/MatMul/ReadVariableOp:value:0MatVec/ExpandDims:output:0*
T0*"
_output_shapes
: z
MatVec/SqueezeSqueezeMatVec/MatMul:output:0*
T0*
_output_shapes

: *
squeeze_dims

���������b
MatVec_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
MatVec_1/ExpandDims
ExpandDimsMatVec/Squeeze:output:0 MatVec_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
: ~
MatVec_1/MatMulBatchMatMulV2inputs_0MatVec_1/ExpandDims:output:0*
T0*+
_output_shapes
:����������
MatVec_1/SqueezeSqueezeMatVec_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������h
IdentityIdentityMatVec_1/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:���������e
NoOpNoOp^MatVec/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : 2<
MatVec/MatMul/ReadVariableOpMatVec/MatMul/ReadVariableOp:U Q
+
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:HD

_output_shapes

: 
"
_user_specified_name
inputs/1"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
input_1.
serving_default_input_1:0Ư�$
;
input_20
serving_default_input_2:0���������
?
input_34
serving_default_input_3:0	���������
;
input_40
serving_default_input_4:0���������
9
input_5.
serving_default_input_5:0Ư�$@
tf.stack4
StatefulPartitionedCall:0���������tensorflow/serving/predict:щ
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer-7
	layer-8

layer_with_weights-1

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-2
layer-14
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _random_generator"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
"
_tf_keras_input_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel"
_tf_keras_layer
(
]	keras_api"
_tf_keras_layer
C
-0
.1
B2
C3
\4"
trackable_list_wrapper
C
-0
.1
B2
C3
\4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_0
dtrace_1
etrace_2
ftrace_32�
$__inference_model_layer_call_fn_2914
$__inference_model_layer_call_fn_3269
$__inference_model_layer_call_fn_3288
$__inference_model_layer_call_fn_3137�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0zdtrace_1zetrace_2zftrace_3
�
gtrace_0
htrace_1
itrace_2
jtrace_32�
?__inference_model_layer_call_and_return_conditional_losses_3437
?__inference_model_layer_call_and_return_conditional_losses_3614
?__inference_model_layer_call_and_return_conditional_losses_3180
?__inference_model_layer_call_and_return_conditional_losses_3223�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0zhtrace_1zitrace_2zjtrace_3
�B�
__inference__wrapped_model_2702input_5input_1input_2input_3input_4"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
kiter

lbeta_1

mbeta_2
	ndecay
olearning_rate-m�.m�Bm�Cm�\m�-v�.v�Bv�Cv�\v�"
	optimizer
,
pserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
vtrace_0
wtrace_12�
&__inference_dropout_layer_call_fn_3619
&__inference_dropout_layer_call_fn_3624�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0zwtrace_1
�
xtrace_0
ytrace_12�
A__inference_dropout_layer_call_and_return_conditional_losses_3629
A__inference_dropout_layer_call_and_return_conditional_losses_3641�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0zytrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
9__inference_squeezed_sparse_conversion_layer_call_fn_3651�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
�trace_02�
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_3661�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_graph_convolution_layer_call_fn_3673�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_graph_convolution_layer_call_and_return_conditional_losses_3709�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)	�$ 2graph_convolution/kernel
$:" 2graph_convolution/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_squeezed_sparse_conversion_1_layer_call_fn_3719�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_3729�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_1_layer_call_fn_3734
(__inference_dropout_1_layer_call_fn_3739�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_1_layer_call_and_return_conditional_losses_3744
C__inference_dropout_1_layer_call_and_return_conditional_losses_3756�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_graph_convolution_1_layer_call_fn_3768�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_3804�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*  2graph_convolution_1/kernel
&:$ 2graph_convolution_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_gather_indices_layer_call_fn_3810�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_gather_indices_layer_call_and_return_conditional_losses_3817�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dgi_readout_layer_call_fn_3822�
���
FullArgSpec!
args�
jself
j
node_feats
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dgi_readout_layer_call_and_return_conditional_losses_3829�
���
FullArgSpec!
args�
jself
j
node_feats
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_gather_indices_1_layer_call_fn_3835�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_3842�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
'
\0"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_dgi_discriminator_layer_call_fn_3850�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_3865�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(  2dgi_discriminator/kernel
"
_generic_user_object
 "
trackable_list_wrapper
�
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
15"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_model_layer_call_fn_2914input_5input_1input_2input_3input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_model_layer_call_fn_3269inputs/0inputs/1inputs/2inputs/3inputs/4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_model_layer_call_fn_3288inputs/0inputs/1inputs/2inputs/3inputs/4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_model_layer_call_fn_3137input_5input_1input_2input_3input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_3437inputs/0inputs/1inputs/2inputs/3inputs/4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_3614inputs/0inputs/1inputs/2inputs/3inputs/4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_3180input_5input_1input_2input_3input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_model_layer_call_and_return_conditional_losses_3223input_5input_1input_2input_3input_4"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
"__inference_signature_wrapper_3250input_1input_2input_3input_4input_5"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
&__inference_dropout_layer_call_fn_3619inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_dropout_layer_call_fn_3624inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dropout_layer_call_and_return_conditional_losses_3629inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dropout_layer_call_and_return_conditional_losses_3641inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
9__inference_squeezed_sparse_conversion_layer_call_fn_3651inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_3661inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_graph_convolution_layer_call_fn_3673inputs/0inputsinputs_1inputs_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_graph_convolution_layer_call_and_return_conditional_losses_3709inputs/0inputsinputs_1inputs_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
;__inference_squeezed_sparse_conversion_1_layer_call_fn_3719inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_3729inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dropout_1_layer_call_fn_3734inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_dropout_1_layer_call_fn_3739inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_1_layer_call_and_return_conditional_losses_3744inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_1_layer_call_and_return_conditional_losses_3756inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
2__inference_graph_convolution_1_layer_call_fn_3768inputs/0inputsinputs_1inputs_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_3804inputs/0inputsinputs_1inputs_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_gather_indices_layer_call_fn_3810inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_gather_indices_layer_call_and_return_conditional_losses_3817inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_dgi_readout_layer_call_fn_3822
node_feats"�
���
FullArgSpec!
args�
jself
j
node_feats
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dgi_readout_layer_call_and_return_conditional_losses_3829
node_feats"�
���
FullArgSpec!
args�
jself
j
node_feats
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_gather_indices_1_layer_call_fn_3835inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_3842inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_dgi_discriminator_layer_call_fn_3850inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_3865inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0:.	�$ 2Adam/graph_convolution/kernel/m
):' 2Adam/graph_convolution/bias/m
1:/  2!Adam/graph_convolution_1/kernel/m
+:) 2Adam/graph_convolution_1/bias/m
/:-  2Adam/dgi_discriminator/kernel/m
0:.	�$ 2Adam/graph_convolution/kernel/v
):' 2Adam/graph_convolution/bias/v
1:/  2!Adam/graph_convolution_1/kernel/v
+:) 2Adam/graph_convolution_1/bias/v
/:-  2Adam/dgi_discriminator/kernel/v�
__inference__wrapped_model_2702�-.BC\���
���
���
�
input_5Ư�$
�
input_1Ư�$
!�
input_2���������
%�"
input_3���������	
!�
input_4���������
� "7�4
2
tf.stack&�#
tf.stack����������
K__inference_dgi_discriminator_layer_call_and_return_conditional_losses_3865�\U�R
K�H
F�C
&�#
inputs/0��������� 
�
inputs/1 
� "%�"
�
0���������
� �
0__inference_dgi_discriminator_layer_call_fn_3850t\U�R
K�H
F�C
&�#
inputs/0��������� 
�
inputs/1 
� "�����������
E__inference_dgi_readout_layer_call_and_return_conditional_losses_3829W7�4
-�*
(�%

node_feats��������� 
� "�
�
0 
� x
*__inference_dgi_readout_layer_call_fn_3822J7�4
-�*
(�%

node_feats��������� 
� "� �
C__inference_dropout_1_layer_call_and_return_conditional_losses_3744d7�4
-�*
$�!
inputs��������� 
p 
� ")�&
�
0��������� 
� �
C__inference_dropout_1_layer_call_and_return_conditional_losses_3756d7�4
-�*
$�!
inputs��������� 
p
� ")�&
�
0��������� 
� �
(__inference_dropout_1_layer_call_fn_3734W7�4
-�*
$�!
inputs��������� 
p 
� "���������� �
(__inference_dropout_1_layer_call_fn_3739W7�4
-�*
$�!
inputs��������� 
p
� "���������� �
A__inference_dropout_layer_call_and_return_conditional_losses_3629X1�.
'�$
�
inputsƯ�$
p 
� "#� 
�
0Ư�$
� �
A__inference_dropout_layer_call_and_return_conditional_losses_3641X1�.
'�$
�
inputsƯ�$
p
� "#� 
�
0Ư�$
� u
&__inference_dropout_layer_call_fn_3619K1�.
'�$
�
inputsƯ�$
p 
� "�Ư�$u
&__inference_dropout_layer_call_fn_3624K1�.
'�$
�
inputsƯ�$
p
� "�Ư�$�
J__inference_gather_indices_1_layer_call_and_return_conditional_losses_3842�^�[
T�Q
O�L
&�#
inputs/0��������� 
"�
inputs/1���������
� ")�&
�
0��������� 
� �
/__inference_gather_indices_1_layer_call_fn_3835~^�[
T�Q
O�L
&�#
inputs/0��������� 
"�
inputs/1���������
� "���������� �
H__inference_gather_indices_layer_call_and_return_conditional_losses_3817�^�[
T�Q
O�L
&�#
inputs/0��������� 
"�
inputs/1���������
� ")�&
�
0��������� 
� �
-__inference_gather_indices_layer_call_fn_3810~^�[
T�Q
O�L
&�#
inputs/0��������� 
"�
inputs/1���������
� "���������� �
M__inference_graph_convolution_1_layer_call_and_return_conditional_losses_3804�BC~�{
t�q
o�l
&�#
inputs/0��������� 
B�?'�$
�������������������
�SparseTensorSpec 
� ")�&
�
0��������� 
� �
2__inference_graph_convolution_1_layer_call_fn_3768�BC~�{
t�q
o�l
&�#
inputs/0��������� 
B�?'�$
�������������������
�SparseTensorSpec 
� "���������� �
K__inference_graph_convolution_layer_call_and_return_conditional_losses_3709�-.x�u
n�k
i�f
 �
inputs/0Ư�$
B�?'�$
�������������������
�SparseTensorSpec 
� ")�&
�
0��������� 
� �
0__inference_graph_convolution_layer_call_fn_3673�-.x�u
n�k
i�f
 �
inputs/0Ư�$
B�?'�$
�������������������
�SparseTensorSpec 
� "���������� �
?__inference_model_layer_call_and_return_conditional_losses_3180�-.BC\���
���
���
�
input_5Ư�$
�
input_1Ư�$
!�
input_2���������
%�"
input_3���������	
!�
input_4���������
p 

 
� ")�&
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_3223�-.BC\���
���
���
�
input_5Ư�$
�
input_1Ư�$
!�
input_2���������
%�"
input_3���������	
!�
input_4���������
p

 
� ")�&
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_3437�-.BC\���
���
���
 �
inputs/0Ư�$
 �
inputs/1Ư�$
"�
inputs/2���������
&�#
inputs/3���������	
"�
inputs/4���������
p 

 
� ")�&
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_3614�-.BC\���
���
���
 �
inputs/0Ư�$
 �
inputs/1Ư�$
"�
inputs/2���������
&�#
inputs/3���������	
"�
inputs/4���������
p

 
� ")�&
�
0���������
� �
$__inference_model_layer_call_fn_2914�-.BC\���
���
���
�
input_5Ư�$
�
input_1Ư�$
!�
input_2���������
%�"
input_3���������	
!�
input_4���������
p 

 
� "�����������
$__inference_model_layer_call_fn_3137�-.BC\���
���
���
�
input_5Ư�$
�
input_1Ư�$
!�
input_2���������
%�"
input_3���������	
!�
input_4���������
p

 
� "�����������
$__inference_model_layer_call_fn_3269�-.BC\���
���
���
 �
inputs/0Ư�$
 �
inputs/1Ư�$
"�
inputs/2���������
&�#
inputs/3���������	
"�
inputs/4���������
p 

 
� "�����������
$__inference_model_layer_call_fn_3288�-.BC\���
���
���
 �
inputs/0Ư�$
 �
inputs/1Ư�$
"�
inputs/2���������
&�#
inputs/3���������	
"�
inputs/4���������
p

 
� "�����������
"__inference_signature_wrapper_3250�-.BC\���
� 
���
*
input_1�
input_1Ư�$
,
input_2!�
input_2���������
0
input_3%�"
input_3���������	
,
input_4!�
input_4���������
*
input_5�
input_5Ư�$"7�4
2
tf.stack&�#
tf.stack����������
V__inference_squeezed_sparse_conversion_1_layer_call_and_return_conditional_losses_3729�^�[
T�Q
O�L
&�#
inputs/0���������	
"�
inputs/1���������
� ">�;
4�1�
�ƯƯ
�SparseTensorSpec 
� �
;__inference_squeezed_sparse_conversion_1_layer_call_fn_3719�^�[
T�Q
O�L
&�#
inputs/0���������	
"�
inputs/1���������
� "B�?'�$
�������������������
�SparseTensorSpec �
T__inference_squeezed_sparse_conversion_layer_call_and_return_conditional_losses_3661�^�[
T�Q
O�L
&�#
inputs/0���������	
"�
inputs/1���������
� ">�;
4�1�
�ƯƯ
�SparseTensorSpec 
� �
9__inference_squeezed_sparse_conversion_layer_call_fn_3651�^�[
T�Q
O�L
&�#
inputs/0���������	
"�
inputs/1���������
� "B�?'�$
�������������������
�SparseTensorSpec 