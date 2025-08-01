��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
�
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
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.22v2.16.1-19-g810f233968c8��
�
sequential_3/dense_5/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_3/dense_5/bias/*
dtype0*
shape:&**
shared_namesequential_3/dense_5/bias
�
-sequential_3/dense_5/bias/Read/ReadVariableOpReadVariableOpsequential_3/dense_5/bias*
_output_shapes
:&*
dtype0
�
sequential_3/dense_4/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_3/dense_4/kernel/*
dtype0*
shape:���*,
shared_namesequential_3/dense_4/kernel
�
/sequential_3/dense_4/kernel/Read/ReadVariableOpReadVariableOpsequential_3/dense_4/kernel*!
_output_shapes
:���*
dtype0
�
sequential_3/conv2d_6/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_3/conv2d_6/bias/*
dtype0*
shape: *+
shared_namesequential_3/conv2d_6/bias
�
.sequential_3/conv2d_6/bias/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_6/bias*
_output_shapes
: *
dtype0
�
sequential_3/conv2d_7/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_3/conv2d_7/bias/*
dtype0*
shape:@*+
shared_namesequential_3/conv2d_7/bias
�
.sequential_3/conv2d_7/bias/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_7/bias*
_output_shapes
:@*
dtype0
�
sequential_3/conv2d_8/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_8/kernel/*
dtype0*
shape:@�*-
shared_namesequential_3/conv2d_8/kernel
�
0sequential_3/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_8/kernel*'
_output_shapes
:@�*
dtype0
�
sequential_3/dense_5/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_3/dense_5/kernel/*
dtype0*
shape:	�&*,
shared_namesequential_3/dense_5/kernel
�
/sequential_3/dense_5/kernel/Read/ReadVariableOpReadVariableOpsequential_3/dense_5/kernel*
_output_shapes
:	�&*
dtype0
�
sequential_3/dense_4/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_3/dense_4/bias/*
dtype0*
shape:�**
shared_namesequential_3/dense_4/bias
�
-sequential_3/dense_4/bias/Read/ReadVariableOpReadVariableOpsequential_3/dense_4/bias*
_output_shapes	
:�*
dtype0
�
sequential_3/conv2d_8/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_3/conv2d_8/bias/*
dtype0*
shape:�*+
shared_namesequential_3/conv2d_8/bias
�
.sequential_3/conv2d_8/bias/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_8/bias*
_output_shapes	
:�*
dtype0
�
sequential_3/conv2d_7/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_7/kernel/*
dtype0*
shape: @*-
shared_namesequential_3/conv2d_7/kernel
�
0sequential_3/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_7/kernel*&
_output_shapes
: @*
dtype0
�
sequential_3/conv2d_6/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_6/kernel/*
dtype0*
shape: *-
shared_namesequential_3/conv2d_6/kernel
�
0sequential_3/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_6/kernel*&
_output_shapes
: *
dtype0
�
sequential_3/dense_5/bias_1VarHandleOp*
_output_shapes
: *,

debug_namesequential_3/dense_5/bias_1/*
dtype0*
shape:&*,
shared_namesequential_3/dense_5/bias_1
�
/sequential_3/dense_5/bias_1/Read/ReadVariableOpReadVariableOpsequential_3/dense_5/bias_1*
_output_shapes
:&*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_5/bias_1*
_class
loc:@Variable*
_output_shapes
:&*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:&*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:&*
dtype0
�
sequential_3/dense_5/kernel_1VarHandleOp*
_output_shapes
: *.

debug_name sequential_3/dense_5/kernel_1/*
dtype0*
shape:	�&*.
shared_namesequential_3/dense_5/kernel_1
�
1sequential_3/dense_5/kernel_1/Read/ReadVariableOpReadVariableOpsequential_3/dense_5/kernel_1*
_output_shapes
:	�&*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_5/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	�&*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�&*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�&*
dtype0
�
#seed_generator/seed_generator_stateVarHandleOp*
_output_shapes
: *4

debug_name&$seed_generator/seed_generator_state/*
dtype0	*
shape:*4
shared_name%#seed_generator/seed_generator_state
�
7seed_generator/seed_generator_state/Read/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0	
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0	*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0	
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
�
sequential_3/dense_4/bias_1VarHandleOp*
_output_shapes
: *,

debug_namesequential_3/dense_4/bias_1/*
dtype0*
shape:�*,
shared_namesequential_3/dense_4/bias_1
�
/sequential_3/dense_4/bias_1/Read/ReadVariableOpReadVariableOpsequential_3/dense_4/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_4/bias_1*
_class
loc:@Variable_3*
_output_shapes	
:�*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:�*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
f
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes	
:�*
dtype0
�
sequential_3/dense_4/kernel_1VarHandleOp*
_output_shapes
: *.

debug_name sequential_3/dense_4/kernel_1/*
dtype0*
shape:���*.
shared_namesequential_3/dense_4/kernel_1
�
1sequential_3/dense_4/kernel_1/Read/ReadVariableOpReadVariableOpsequential_3/dense_4/kernel_1*!
_output_shapes
:���*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_4/kernel_1*
_class
loc:@Variable_4*!
_output_shapes
:���*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:���*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
l
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*!
_output_shapes
:���*
dtype0
�
sequential_3/conv2d_8/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_8/bias_1/*
dtype0*
shape:�*-
shared_namesequential_3/conv2d_8/bias_1
�
0sequential_3/conv2d_8/bias_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_8/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_8/bias_1*
_class
loc:@Variable_5*
_output_shapes	
:�*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:�*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
f
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes	
:�*
dtype0
�
sequential_3/conv2d_8/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_3/conv2d_8/kernel_1/*
dtype0*
shape:@�*/
shared_name sequential_3/conv2d_8/kernel_1
�
2sequential_3/conv2d_8/kernel_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_8/kernel_1*'
_output_shapes
:@�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_8/kernel_1*
_class
loc:@Variable_6*'
_output_shapes
:@�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:@�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
r
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*'
_output_shapes
:@�*
dtype0
�
sequential_3/conv2d_7/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_7/bias_1/*
dtype0*
shape:@*-
shared_namesequential_3/conv2d_7/bias_1
�
0sequential_3/conv2d_7/bias_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_7/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_7/bias_1*
_class
loc:@Variable_7*
_output_shapes
:@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:@*
dtype0
�
sequential_3/conv2d_7/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_3/conv2d_7/kernel_1/*
dtype0*
shape: @*/
shared_name sequential_3/conv2d_7/kernel_1
�
2sequential_3/conv2d_7/kernel_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_7/kernel_1*&
_output_shapes
: @*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_7/kernel_1*
_class
loc:@Variable_8*&
_output_shapes
: @*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape: @*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
q
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*&
_output_shapes
: @*
dtype0
�
sequential_3/conv2d_6/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_3/conv2d_6/bias_1/*
dtype0*
shape: *-
shared_namesequential_3/conv2d_6/bias_1
�
0sequential_3/conv2d_6/bias_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_6/bias_1*
_output_shapes
: *
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_6/bias_1*
_class
loc:@Variable_9*
_output_shapes
: *
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape: *
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
: *
dtype0
�
sequential_3/conv2d_6/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_3/conv2d_6/kernel_1/*
dtype0*
shape: */
shared_name sequential_3/conv2d_6/kernel_1
�
2sequential_3/conv2d_6/kernel_1/Read/ReadVariableOpReadVariableOpsequential_3/conv2d_6/kernel_1*&
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential_3/conv2d_6/kernel_1*
_class
loc:@Variable_10*&
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
s
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*&
_output_shapes
: *
dtype0
�
serve_input_layer_3Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_layer_3sequential_3/conv2d_6/kernel_1sequential_3/conv2d_6/bias_1sequential_3/conv2d_7/kernel_1sequential_3/conv2d_7/bias_1sequential_3/conv2d_8/kernel_1sequential_3/conv2d_8/bias_1sequential_3/dense_4/kernel_1sequential_3/dense_4/bias_1sequential_3/dense_5/kernel_1sequential_3/dense_5/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������&*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *3
f.R,
*__inference_signature_wrapper___call___275
�
serving_default_input_layer_3Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_layer_3sequential_3/conv2d_6/kernel_1sequential_3/conv2d_6/bias_1sequential_3/conv2d_7/kernel_1sequential_3/conv2d_7/bias_1sequential_3/conv2d_8/kernel_1sequential_3/conv2d_8/bias_1sequential_3/dense_4/kernel_1sequential_3/dense_4/bias_1sequential_3/dense_5/kernel_1sequential_3/dense_5/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������&*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *3
f.R,
*__inference_signature_wrapper___call___300

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
R
0
	1

2
3
4
5
6
7
8
9
10*
J
0
	1

2
3
4
5
6
7
8
9*

0*
J
0
1
2
3
4
5
6
7
8
9*
* 

trace_0* 
"
	serve
serving_default* 
KE
VARIABLE_VALUEVariable_10&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_1&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_3/conv2d_6/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_3/conv2d_7/kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_3/conv2d_8/bias_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential_3/dense_4/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEsequential_3/dense_5/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_3/conv2d_8/kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_3/conv2d_7/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_3/conv2d_6/bias_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEsequential_3/dense_4/kernel_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential_3/dense_5/bias_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablesequential_3/conv2d_6/kernel_1sequential_3/conv2d_7/kernel_1sequential_3/conv2d_8/bias_1sequential_3/dense_4/bias_1sequential_3/dense_5/kernel_1sequential_3/conv2d_8/kernel_1sequential_3/conv2d_7/bias_1sequential_3/conv2d_6/bias_1sequential_3/dense_4/kernel_1sequential_3/dense_5/bias_1Const*"
Tin
2*
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
GPU2*0J 8� *%
f R
__inference__traced_save_494
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablesequential_3/conv2d_6/kernel_1sequential_3/conv2d_7/kernel_1sequential_3/conv2d_8/bias_1sequential_3/dense_4/bias_1sequential_3/dense_5/kernel_1sequential_3/conv2d_8/kernel_1sequential_3/conv2d_7/bias_1sequential_3/conv2d_6/bias_1sequential_3/dense_4/kernel_1sequential_3/dense_5/bias_1*!
Tin
2*
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
GPU2*0J 8� *(
f#R!
__inference__traced_restore_566��
�c
�
__inference__traced_restore_566
file_prefix6
assignvariableop_variable_10: +
assignvariableop_1_variable_9: 7
assignvariableop_2_variable_8: @+
assignvariableop_3_variable_7:@8
assignvariableop_4_variable_6:@�,
assignvariableop_5_variable_5:	�2
assignvariableop_6_variable_4:���,
assignvariableop_7_variable_3:	�+
assignvariableop_8_variable_2:	0
assignvariableop_9_variable_1:	�&*
assignvariableop_10_variable:&L
2assignvariableop_11_sequential_3_conv2d_6_kernel_1: L
2assignvariableop_12_sequential_3_conv2d_7_kernel_1: @?
0assignvariableop_13_sequential_3_conv2d_8_bias_1:	�>
/assignvariableop_14_sequential_3_dense_4_bias_1:	�D
1assignvariableop_15_sequential_3_dense_5_kernel_1:	�&M
2assignvariableop_16_sequential_3_conv2d_8_kernel_1:@�>
0assignvariableop_17_sequential_3_conv2d_7_bias_1:@>
0assignvariableop_18_sequential_3_conv2d_6_bias_1: F
1assignvariableop_19_sequential_3_dense_4_kernel_1:���=
/assignvariableop_20_sequential_3_dense_5_bias_1:&
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_10Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_9Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_8Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_7Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_6Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_4Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_3Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variableIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp2assignvariableop_11_sequential_3_conv2d_6_kernel_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp2assignvariableop_12_sequential_3_conv2d_7_kernel_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp0assignvariableop_13_sequential_3_conv2d_8_bias_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_sequential_3_dense_4_bias_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp1assignvariableop_15_sequential_3_dense_5_kernel_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp2assignvariableop_16_sequential_3_conv2d_8_kernel_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp0assignvariableop_17_sequential_3_conv2d_7_bias_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp0assignvariableop_18_sequential_3_conv2d_6_bias_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp1assignvariableop_19_sequential_3_dense_4_kernel_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_sequential_3_dense_5_bias_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_22Identity_22:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:;7
5
_user_specified_namesequential_3/dense_5/bias_1:=9
7
_user_specified_namesequential_3/dense_4/kernel_1:<8
6
_user_specified_namesequential_3/conv2d_6/bias_1:<8
6
_user_specified_namesequential_3/conv2d_7/bias_1:>:
8
_user_specified_name sequential_3/conv2d_8/kernel_1:=9
7
_user_specified_namesequential_3/dense_5/kernel_1:;7
5
_user_specified_namesequential_3/dense_4/bias_1:<8
6
_user_specified_namesequential_3/conv2d_8/bias_1:>:
8
_user_specified_name sequential_3/conv2d_7/kernel_1:>:
8
_user_specified_name sequential_3/conv2d_6/kernel_1:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_signature_wrapper___call___300
input_layer_3!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:���
	unknown_6:	�
	unknown_7:	�&
	unknown_8:&
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layer_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������&*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *!
fR
__inference___call___249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������&<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#


_user_specified_name296:#	

_user_specified_name294:#

_user_specified_name292:#

_user_specified_name290:#

_user_specified_name288:#

_user_specified_name286:#

_user_specified_name284:#

_user_specified_name282:#

_user_specified_name280:#

_user_specified_name278:` \
1
_output_shapes
:�����������
'
_user_specified_nameinput_layer_3
�S
�

__inference___call___249
input_layer_3W
=sequential_3_1_conv2d_6_1_convolution_readvariableop_resource: G
9sequential_3_1_conv2d_6_1_reshape_readvariableop_resource: W
=sequential_3_1_conv2d_7_1_convolution_readvariableop_resource: @G
9sequential_3_1_conv2d_7_1_reshape_readvariableop_resource:@X
=sequential_3_1_conv2d_8_1_convolution_readvariableop_resource:@�H
9sequential_3_1_conv2d_8_1_reshape_readvariableop_resource:	�J
5sequential_3_1_dense_4_1_cast_readvariableop_resource:���G
8sequential_3_1_dense_4_1_biasadd_readvariableop_resource:	�H
5sequential_3_1_dense_5_1_cast_readvariableop_resource:	�&F
8sequential_3_1_dense_5_1_biasadd_readvariableop_resource:&
identity��0sequential_3_1/conv2d_6_1/Reshape/ReadVariableOp�4sequential_3_1/conv2d_6_1/convolution/ReadVariableOp�0sequential_3_1/conv2d_7_1/Reshape/ReadVariableOp�4sequential_3_1/conv2d_7_1/convolution/ReadVariableOp�0sequential_3_1/conv2d_8_1/Reshape/ReadVariableOp�4sequential_3_1/conv2d_8_1/convolution/ReadVariableOp�/sequential_3_1/dense_4_1/BiasAdd/ReadVariableOp�,sequential_3_1/dense_4_1/Cast/ReadVariableOp�/sequential_3_1/dense_5_1/BiasAdd/ReadVariableOp�,sequential_3_1/dense_5_1/Cast/ReadVariableOp�
4sequential_3_1/conv2d_6_1/convolution/ReadVariableOpReadVariableOp=sequential_3_1_conv2d_6_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
%sequential_3_1/conv2d_6_1/convolutionConv2Dinput_layer_3<sequential_3_1/conv2d_6_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
0sequential_3_1/conv2d_6_1/Reshape/ReadVariableOpReadVariableOp9sequential_3_1_conv2d_6_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
'sequential_3_1/conv2d_6_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
!sequential_3_1/conv2d_6_1/ReshapeReshape8sequential_3_1/conv2d_6_1/Reshape/ReadVariableOp:value:00sequential_3_1/conv2d_6_1/Reshape/shape:output:0*
T0*&
_output_shapes
: }
!sequential_3_1/conv2d_6_1/SqueezeSqueeze*sequential_3_1/conv2d_6_1/Reshape:output:0*
T0*
_output_shapes
: �
!sequential_3_1/conv2d_6_1/BiasAddBiasAdd.sequential_3_1/conv2d_6_1/convolution:output:0*sequential_3_1/conv2d_6_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
sequential_3_1/conv2d_6_1/ReluRelu*sequential_3_1/conv2d_6_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
*sequential_3_1/max_pooling2d_6_1/MaxPool2dMaxPool,sequential_3_1/conv2d_6_1/Relu:activations:0*/
_output_shapes
:���������YY *
ksize
*
paddingVALID*
strides
�
4sequential_3_1/conv2d_7_1/convolution/ReadVariableOpReadVariableOp=sequential_3_1_conv2d_7_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
%sequential_3_1/conv2d_7_1/convolutionConv2D3sequential_3_1/max_pooling2d_6_1/MaxPool2d:output:0<sequential_3_1/conv2d_7_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������WW@*
paddingVALID*
strides
�
0sequential_3_1/conv2d_7_1/Reshape/ReadVariableOpReadVariableOp9sequential_3_1_conv2d_7_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_3_1/conv2d_7_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
!sequential_3_1/conv2d_7_1/ReshapeReshape8sequential_3_1/conv2d_7_1/Reshape/ReadVariableOp:value:00sequential_3_1/conv2d_7_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@}
!sequential_3_1/conv2d_7_1/SqueezeSqueeze*sequential_3_1/conv2d_7_1/Reshape:output:0*
T0*
_output_shapes
:@�
!sequential_3_1/conv2d_7_1/BiasAddBiasAdd.sequential_3_1/conv2d_7_1/convolution:output:0*sequential_3_1/conv2d_7_1/Squeeze:output:0*
T0*/
_output_shapes
:���������WW@�
sequential_3_1/conv2d_7_1/ReluRelu*sequential_3_1/conv2d_7_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������WW@�
*sequential_3_1/max_pooling2d_7_1/MaxPool2dMaxPool,sequential_3_1/conv2d_7_1/Relu:activations:0*/
_output_shapes
:���������++@*
ksize
*
paddingVALID*
strides
�
4sequential_3_1/conv2d_8_1/convolution/ReadVariableOpReadVariableOp=sequential_3_1_conv2d_8_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
%sequential_3_1/conv2d_8_1/convolutionConv2D3sequential_3_1/max_pooling2d_7_1/MaxPool2d:output:0<sequential_3_1/conv2d_8_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������))�*
paddingVALID*
strides
�
0sequential_3_1/conv2d_8_1/Reshape/ReadVariableOpReadVariableOp9sequential_3_1_conv2d_8_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'sequential_3_1/conv2d_8_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
!sequential_3_1/conv2d_8_1/ReshapeReshape8sequential_3_1/conv2d_8_1/Reshape/ReadVariableOp:value:00sequential_3_1/conv2d_8_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�~
!sequential_3_1/conv2d_8_1/SqueezeSqueeze*sequential_3_1/conv2d_8_1/Reshape:output:0*
T0*
_output_shapes	
:��
!sequential_3_1/conv2d_8_1/BiasAddBiasAdd.sequential_3_1/conv2d_8_1/convolution:output:0*sequential_3_1/conv2d_8_1/Squeeze:output:0*
T0*0
_output_shapes
:���������))��
sequential_3_1/conv2d_8_1/ReluRelu*sequential_3_1/conv2d_8_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������))��
*sequential_3_1/max_pooling2d_8_1/MaxPool2dMaxPool,sequential_3_1/conv2d_8_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
y
(sequential_3_1/flatten_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
"sequential_3_1/flatten_2_1/ReshapeReshape3sequential_3_1/max_pooling2d_8_1/MaxPool2d:output:01sequential_3_1/flatten_2_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
,sequential_3_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5sequential_3_1_dense_4_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
sequential_3_1/dense_4_1/MatMulMatMul+sequential_3_1/flatten_2_1/Reshape:output:04sequential_3_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential_3_1/dense_4_1/BiasAdd/ReadVariableOpReadVariableOp8sequential_3_1_dense_4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 sequential_3_1/dense_4_1/BiasAddBiasAdd)sequential_3_1/dense_4_1/MatMul:product:07sequential_3_1/dense_4_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
sequential_3_1/dense_4_1/ReluRelu)sequential_3_1/dense_4_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,sequential_3_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5sequential_3_1_dense_5_1_cast_readvariableop_resource*
_output_shapes
:	�&*
dtype0�
sequential_3_1/dense_5_1/MatMulMatMul+sequential_3_1/dense_4_1/Relu:activations:04sequential_3_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������&�
/sequential_3_1/dense_5_1/BiasAdd/ReadVariableOpReadVariableOp8sequential_3_1_dense_5_1_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0�
 sequential_3_1/dense_5_1/BiasAddBiasAdd)sequential_3_1/dense_5_1/MatMul:product:07sequential_3_1/dense_5_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������&�
 sequential_3_1/dense_5_1/SoftmaxSoftmax)sequential_3_1/dense_5_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������&y
IdentityIdentity*sequential_3_1/dense_5_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������&�
NoOpNoOp1^sequential_3_1/conv2d_6_1/Reshape/ReadVariableOp5^sequential_3_1/conv2d_6_1/convolution/ReadVariableOp1^sequential_3_1/conv2d_7_1/Reshape/ReadVariableOp5^sequential_3_1/conv2d_7_1/convolution/ReadVariableOp1^sequential_3_1/conv2d_8_1/Reshape/ReadVariableOp5^sequential_3_1/conv2d_8_1/convolution/ReadVariableOp0^sequential_3_1/dense_4_1/BiasAdd/ReadVariableOp-^sequential_3_1/dense_4_1/Cast/ReadVariableOp0^sequential_3_1/dense_5_1/BiasAdd/ReadVariableOp-^sequential_3_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2d
0sequential_3_1/conv2d_6_1/Reshape/ReadVariableOp0sequential_3_1/conv2d_6_1/Reshape/ReadVariableOp2l
4sequential_3_1/conv2d_6_1/convolution/ReadVariableOp4sequential_3_1/conv2d_6_1/convolution/ReadVariableOp2d
0sequential_3_1/conv2d_7_1/Reshape/ReadVariableOp0sequential_3_1/conv2d_7_1/Reshape/ReadVariableOp2l
4sequential_3_1/conv2d_7_1/convolution/ReadVariableOp4sequential_3_1/conv2d_7_1/convolution/ReadVariableOp2d
0sequential_3_1/conv2d_8_1/Reshape/ReadVariableOp0sequential_3_1/conv2d_8_1/Reshape/ReadVariableOp2l
4sequential_3_1/conv2d_8_1/convolution/ReadVariableOp4sequential_3_1/conv2d_8_1/convolution/ReadVariableOp2b
/sequential_3_1/dense_4_1/BiasAdd/ReadVariableOp/sequential_3_1/dense_4_1/BiasAdd/ReadVariableOp2\
,sequential_3_1/dense_4_1/Cast/ReadVariableOp,sequential_3_1/dense_4_1/Cast/ReadVariableOp2b
/sequential_3_1/dense_5_1/BiasAdd/ReadVariableOp/sequential_3_1/dense_5_1/BiasAdd/ReadVariableOp2\
,sequential_3_1/dense_5_1/Cast/ReadVariableOp,sequential_3_1/dense_5_1/Cast/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:` \
1
_output_shapes
:�����������
'
_user_specified_nameinput_layer_3
�
�
*__inference_signature_wrapper___call___275
input_layer_3!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:���
	unknown_6:	�
	unknown_7:	�&
	unknown_8:&
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layer_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������&*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *!
fR
__inference___call___249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������&<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#


_user_specified_name271:#	

_user_specified_name269:#

_user_specified_name267:#

_user_specified_name265:#

_user_specified_name263:#

_user_specified_name261:#

_user_specified_name259:#

_user_specified_name257:#

_user_specified_name255:#

_user_specified_name253:` \
1
_output_shapes
:�����������
'
_user_specified_nameinput_layer_3
��
�
__inference__traced_save_494
file_prefix<
"read_disablecopyonread_variable_10: 1
#read_1_disablecopyonread_variable_9: =
#read_2_disablecopyonread_variable_8: @1
#read_3_disablecopyonread_variable_7:@>
#read_4_disablecopyonread_variable_6:@�2
#read_5_disablecopyonread_variable_5:	�8
#read_6_disablecopyonread_variable_4:���2
#read_7_disablecopyonread_variable_3:	�1
#read_8_disablecopyonread_variable_2:	6
#read_9_disablecopyonread_variable_1:	�&0
"read_10_disablecopyonread_variable:&R
8read_11_disablecopyonread_sequential_3_conv2d_6_kernel_1: R
8read_12_disablecopyonread_sequential_3_conv2d_7_kernel_1: @E
6read_13_disablecopyonread_sequential_3_conv2d_8_bias_1:	�D
5read_14_disablecopyonread_sequential_3_dense_4_bias_1:	�J
7read_15_disablecopyonread_sequential_3_dense_5_kernel_1:	�&S
8read_16_disablecopyonread_sequential_3_conv2d_8_kernel_1:@�D
6read_17_disablecopyonread_sequential_3_conv2d_7_bias_1:@D
6read_18_disablecopyonread_sequential_3_conv2d_6_bias_1: L
7read_19_disablecopyonread_sequential_3_dense_4_kernel_1:���C
5read_20_disablecopyonread_sequential_3_dense_5_bias_1:&
savev2_const
identity_43��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_10*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_10^Read/DisableCopyOnRead*&
_output_shapes
: *
dtype0b
IdentityIdentityRead/ReadVariableOp:value:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_9*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_9^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_8*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_8^Read_2/DisableCopyOnRead*&
_output_shapes
: @*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_7*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_7^Read_3/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_6*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_6^Read_4/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0g

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�l

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_5*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_5^Read_5/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_4*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_4^Read_6/DisableCopyOnRead*!
_output_shapes
:���*
dtype0b
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_3*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_3^Read_7/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_2*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_2^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0	[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
:h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_1^Read_9/DisableCopyOnRead*
_output_shapes
:	�&*
dtype0`
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:	�&f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	�&h
Read_10/DisableCopyOnReadDisableCopyOnRead"read_10_disablecopyonread_variable*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp"read_10_disablecopyonread_variable^Read_10/DisableCopyOnRead*
_output_shapes
:&*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:&a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:&~
Read_11/DisableCopyOnReadDisableCopyOnRead8read_11_disablecopyonread_sequential_3_conv2d_6_kernel_1*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp8read_11_disablecopyonread_sequential_3_conv2d_6_kernel_1^Read_11/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
: ~
Read_12/DisableCopyOnReadDisableCopyOnRead8read_12_disablecopyonread_sequential_3_conv2d_7_kernel_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp8read_12_disablecopyonread_sequential_3_conv2d_7_kernel_1^Read_12/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: @|
Read_13/DisableCopyOnReadDisableCopyOnRead6read_13_disablecopyonread_sequential_3_conv2d_8_bias_1*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp6read_13_disablecopyonread_sequential_3_conv2d_8_bias_1^Read_13/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_sequential_3_dense_4_bias_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_sequential_3_dense_4_bias_1^Read_14/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_15/DisableCopyOnReadDisableCopyOnRead7read_15_disablecopyonread_sequential_3_dense_5_kernel_1*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp7read_15_disablecopyonread_sequential_3_dense_5_kernel_1^Read_15/DisableCopyOnRead*
_output_shapes
:	�&*
dtype0a
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:	�&f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	�&~
Read_16/DisableCopyOnReadDisableCopyOnRead8read_16_disablecopyonread_sequential_3_conv2d_8_kernel_1*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp8read_16_disablecopyonread_sequential_3_conv2d_8_kernel_1^Read_16/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�|
Read_17/DisableCopyOnReadDisableCopyOnRead6read_17_disablecopyonread_sequential_3_conv2d_7_bias_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp6read_17_disablecopyonread_sequential_3_conv2d_7_bias_1^Read_17/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_sequential_3_conv2d_6_bias_1*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_sequential_3_conv2d_6_bias_1^Read_18/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_19/DisableCopyOnReadDisableCopyOnRead7read_19_disablecopyonread_sequential_3_dense_4_kernel_1*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp7read_19_disablecopyonread_sequential_3_dense_4_kernel_1^Read_19/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*!
_output_shapes
:���{
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_sequential_3_dense_5_bias_1*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_sequential_3_dense_5_bias_1^Read_20/DisableCopyOnRead*
_output_shapes
:&*
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
:&a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:&L

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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *$
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_42Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_43IdentityIdentity_42:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_20/ReadVariableOpRead_20/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:;7
5
_user_specified_namesequential_3/dense_5/bias_1:=9
7
_user_specified_namesequential_3/dense_4/kernel_1:<8
6
_user_specified_namesequential_3/conv2d_6/bias_1:<8
6
_user_specified_namesequential_3/conv2d_7/bias_1:>:
8
_user_specified_name sequential_3/conv2d_8/kernel_1:=9
7
_user_specified_namesequential_3/dense_5/kernel_1:;7
5
_user_specified_namesequential_3/dense_4/bias_1:<8
6
_user_specified_namesequential_3/conv2d_8/bias_1:>:
8
_user_specified_name sequential_3/conv2d_7/kernel_1:>:
8
_user_specified_name sequential_3/conv2d_6/kernel_1:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
G
input_layer_36
serve_input_layer_3:0�����������<
output_00
StatefulPartitionedCall:0���������&tensorflow/serving/predict*�
serving_default�
Q
input_layer_3@
serving_default_input_layer_3:0�����������>
output_02
StatefulPartitionedCall_1:0���������&tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
n
0
	1

2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
f
0
	1

2
3
4
5
6
7
8
9"
trackable_list_wrapper
'
0"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
trace_02�
__inference___call___249�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *6�3
1�.
input_layer_3�����������ztrace_0
7
	serve
serving_default"
signature_map
6:4 2sequential_3/conv2d_6/kernel
(:& 2sequential_3/conv2d_6/bias
6:4 @2sequential_3/conv2d_7/kernel
(:&@2sequential_3/conv2d_7/bias
7:5@�2sequential_3/conv2d_8/kernel
):'�2sequential_3/conv2d_8/bias
0:.���2sequential_3/dense_4/kernel
(:&�2sequential_3/dense_4/bias
/:-	2#seed_generator/seed_generator_state
.:,	�&2sequential_3/dense_5/kernel
':%&2sequential_3/dense_5/bias
6:4 2sequential_3/conv2d_6/kernel
6:4 @2sequential_3/conv2d_7/kernel
):'�2sequential_3/conv2d_8/bias
(:&�2sequential_3/dense_4/bias
.:,	�&2sequential_3/dense_5/kernel
7:5@�2sequential_3/conv2d_8/kernel
(:&@2sequential_3/conv2d_7/bias
(:& 2sequential_3/conv2d_6/bias
0:.���2sequential_3/dense_4/kernel
':%&2sequential_3/dense_5/bias
�B�
__inference___call___249input_layer_3"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_signature_wrapper___call___275input_layer_3"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 "

kwonlyargs�
jinput_layer_3
kwonlydefaults
 
annotations� *
 
�B�
*__inference_signature_wrapper___call___300input_layer_3"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 "

kwonlyargs�
jinput_layer_3
kwonlydefaults
 
annotations� *
 �
__inference___call___249q
	
@�=
6�3
1�.
input_layer_3�����������
� "!�
unknown���������&�
*__inference_signature_wrapper___call___275�
	
Q�N
� 
G�D
B
input_layer_31�.
input_layer_3�����������"3�0
.
output_0"�
output_0���������&�
*__inference_signature_wrapper___call___300�
	
Q�N
� 
G�D
B
input_layer_31�.
input_layer_3�����������"3�0
.
output_0"�
output_0���������&