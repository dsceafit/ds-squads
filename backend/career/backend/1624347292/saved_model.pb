??
?%?$
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
?
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.13.22b'v1.13.2-5-g04256c8'8??

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: 
?
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
_output_shapes
: *
valueB *
dtype0
W
ParseExample/Const_6Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
t
&ParseExample/ParseExample/dense_keys_0Const*
valueB Bpunt_biologia*
dtype0*
_output_shapes
: 
}
&ParseExample/ParseExample/dense_keys_1Const*
_output_shapes
: *'
valueB Bpunt_ciencias_sociales*
dtype0
u
&ParseExample/ParseExample/dense_keys_2Const*
valueB Bpunt_filosofia*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_3Const*
valueB Bpunt_fisica*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_4Const*
valueB Bpunt_ingles*
dtype0*
_output_shapes
: 
t
&ParseExample/ParseExample/dense_keys_5Const*
dtype0*
_output_shapes
: *
valueB Bpunt_lenguaje
w
&ParseExample/ParseExample/dense_keys_6Const*!
valueB Bpunt_matematicas*
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_7Const*
valueB Bpunt_quimica*
dtype0*
_output_shapes
: 
?
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7*
Tdense

2*
Ndense*?
_output_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????*
Nsparse *
sparse_types
 *B
dense_shapes2
0::::::::
?
>dnn/input_from_feature_columns/input_layer/punt_biologia/ShapeShapeParseExample/ParseExample*
T0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Fdnn/input_from_feature_columns/input_layer/punt_biologia/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/punt_biologia/ShapeLdnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stackNdnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/punt_biologia/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
Hdnn/input_from_feature_columns/input_layer/punt_biologia/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
?
Fdnn/input_from_feature_columns/input_layer/punt_biologia/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/punt_biologia/strided_sliceHdnn/input_from_feature_columns/input_layer/punt_biologia/Reshape/shape/1*
N*
_output_shapes
:*
T0
?
@dnn/input_from_feature_columns/input_layer/punt_biologia/ReshapeReshapeParseExample/ParseExampleFdnn/input_from_feature_columns/input_layer/punt_biologia/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Gdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/ShapeShapeParseExample/ParseExample:1*
T0*
_output_shapes
:
?
Udnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Wdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Wdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Odnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_sliceStridedSliceGdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/ShapeUdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stackWdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stack_1Wdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
?
Qdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
?
Odnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/Reshape/shapePackOdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/strided_sliceQdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/Reshape/shape/1*
T0*
N*
_output_shapes
:
?
Idnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/ReshapeReshapeParseExample/ParseExample:1Odnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/Reshape/shape*'
_output_shapes
:?????????*
T0
?
?dnn/input_from_feature_columns/input_layer/punt_filosofia/ShapeShapeParseExample/ParseExample:2*
_output_shapes
:*
T0
?
Mdnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Odnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
Odnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Gdnn/input_from_feature_columns/input_layer/punt_filosofia/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/punt_filosofia/ShapeMdnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stackOdnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/punt_filosofia/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
?
Idnn/input_from_feature_columns/input_layer/punt_filosofia/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Gdnn/input_from_feature_columns/input_layer/punt_filosofia/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/punt_filosofia/strided_sliceIdnn/input_from_feature_columns/input_layer/punt_filosofia/Reshape/shape/1*
_output_shapes
:*
T0*
N
?
Adnn/input_from_feature_columns/input_layer/punt_filosofia/ReshapeReshapeParseExample/ParseExample:2Gdnn/input_from_feature_columns/input_layer/punt_filosofia/Reshape/shape*'
_output_shapes
:?????????*
T0
?
<dnn/input_from_feature_columns/input_layer/punt_fisica/ShapeShapeParseExample/ParseExample:3*
_output_shapes
:*
T0
?
Jdnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Ddnn/input_from_feature_columns/input_layer/punt_fisica/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/punt_fisica/ShapeJdnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stackLdnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/punt_fisica/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
?
Fdnn/input_from_feature_columns/input_layer/punt_fisica/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Ddnn/input_from_feature_columns/input_layer/punt_fisica/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/punt_fisica/strided_sliceFdnn/input_from_feature_columns/input_layer/punt_fisica/Reshape/shape/1*
N*
_output_shapes
:*
T0
?
>dnn/input_from_feature_columns/input_layer/punt_fisica/ReshapeReshapeParseExample/ParseExample:3Ddnn/input_from_feature_columns/input_layer/punt_fisica/Reshape/shape*
T0*'
_output_shapes
:?????????
?
<dnn/input_from_feature_columns/input_layer/punt_ingles/ShapeShapeParseExample/ParseExample:4*
_output_shapes
:*
T0
?
Jdnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Ddnn/input_from_feature_columns/input_layer/punt_ingles/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/punt_ingles/ShapeJdnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stackLdnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/punt_ingles/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Fdnn/input_from_feature_columns/input_layer/punt_ingles/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Ddnn/input_from_feature_columns/input_layer/punt_ingles/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/punt_ingles/strided_sliceFdnn/input_from_feature_columns/input_layer/punt_ingles/Reshape/shape/1*
T0*
N*
_output_shapes
:
?
>dnn/input_from_feature_columns/input_layer/punt_ingles/ReshapeReshapeParseExample/ParseExample:4Ddnn/input_from_feature_columns/input_layer/punt_ingles/Reshape/shape*'
_output_shapes
:?????????*
T0
?
>dnn/input_from_feature_columns/input_layer/punt_lenguaje/ShapeShapeParseExample/ParseExample:5*
T0*
_output_shapes
:
?
Ldnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Ndnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Fdnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/punt_lenguaje/ShapeLdnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stackNdnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
?
Hdnn/input_from_feature_columns/input_layer/punt_lenguaje/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Fdnn/input_from_feature_columns/input_layer/punt_lenguaje/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/punt_lenguaje/strided_sliceHdnn/input_from_feature_columns/input_layer/punt_lenguaje/Reshape/shape/1*
T0*
N*
_output_shapes
:
?
@dnn/input_from_feature_columns/input_layer/punt_lenguaje/ReshapeReshapeParseExample/ParseExample:5Fdnn/input_from_feature_columns/input_layer/punt_lenguaje/Reshape/shape*
T0*'
_output_shapes
:?????????
?
Adnn/input_from_feature_columns/input_layer/punt_matematicas/ShapeShapeParseExample/ParseExample:6*
T0*
_output_shapes
:
?
Odnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Qdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
Qdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Idnn/input_from_feature_columns/input_layer/punt_matematicas/strided_sliceStridedSliceAdnn/input_from_feature_columns/input_layer/punt_matematicas/ShapeOdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stackQdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stack_1Qdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
Kdnn/input_from_feature_columns/input_layer/punt_matematicas/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Idnn/input_from_feature_columns/input_layer/punt_matematicas/Reshape/shapePackIdnn/input_from_feature_columns/input_layer/punt_matematicas/strided_sliceKdnn/input_from_feature_columns/input_layer/punt_matematicas/Reshape/shape/1*
T0*
N*
_output_shapes
:
?
Cdnn/input_from_feature_columns/input_layer/punt_matematicas/ReshapeReshapeParseExample/ParseExample:6Idnn/input_from_feature_columns/input_layer/punt_matematicas/Reshape/shape*'
_output_shapes
:?????????*
T0
?
=dnn/input_from_feature_columns/input_layer/punt_quimica/ShapeShapeParseExample/ParseExample:7*
T0*
_output_shapes
:
?
Kdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
Mdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
Ednn/input_from_feature_columns/input_layer/punt_quimica/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/punt_quimica/ShapeKdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stackMdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/punt_quimica/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?
Gdnn/input_from_feature_columns/input_layer/punt_quimica/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
Ednn/input_from_feature_columns/input_layer/punt_quimica/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/punt_quimica/strided_sliceGdnn/input_from_feature_columns/input_layer/punt_quimica/Reshape/shape/1*
T0*
N*
_output_shapes
:
?
?dnn/input_from_feature_columns/input_layer/punt_quimica/ReshapeReshapeParseExample/ParseExample:7Ednn/input_from_feature_columns/input_layer/punt_quimica/Reshape/shape*
T0*'
_output_shapes
:?????????
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
1dnn/input_from_feature_columns/input_layer/concatConcatV2@dnn/input_from_feature_columns/input_layer/punt_biologia/ReshapeIdnn/input_from_feature_columns/input_layer/punt_ciencias_sociales/ReshapeAdnn/input_from_feature_columns/input_layer/punt_filosofia/Reshape>dnn/input_from_feature_columns/input_layer/punt_fisica/Reshape>dnn/input_from_feature_columns/input_layer/punt_ingles/Reshape@dnn/input_from_feature_columns/input_layer/punt_lenguaje/ReshapeCdnn/input_from_feature_columns/input_layer/punt_matematicas/Reshape?dnn/input_from_feature_columns/input_layer/punt_quimica/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N*'
_output_shapes
:?????????
?
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *?(??*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *?(?=*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: 
?
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	?
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
?
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:	?
?
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:	?
?
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
: *
shape:	?*0
shared_name!dnn/hiddenlayer_0/kernel/part_0
?
@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
?
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	?*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
?
?dnn/hiddenlayer_0/bias/part_0/Initializer/zeros/shape_as_tensorConst*
valueB:?*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
:
?
5dnn/hiddenlayer_0/bias/part_0/Initializer/zeros/ConstConst*
valueB
 *    *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
: 
?
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosFill?dnn/hiddenlayer_0/bias/part_0/Initializer/zeros/shape_as_tensor5dnn/hiddenlayer_0/bias/part_0/Initializer/zeros/Const*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes	
:?*
T0
?
dnn/hiddenlayer_0/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes
: *
shape:?*.
shared_namednn/hiddenlayer_0/bias/part_0
?
>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
?
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:?
?
'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	?
w
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes
:	?
?
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*(
_output_shapes
:??????????
?
%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:?
o
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
_output_shapes	
:?*
T0
?
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*(
_output_shapes
:??????????
l
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*(
_output_shapes
:??????????
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
_output_shapes
: *
T0*
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
valueB	 R????*
dtype0	*
_output_shapes
: 
?
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
?
dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
_output_shapes
: : *
T0

m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
_output_shapes
: *
T0

?
*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*(
_output_shapes
:??????????*
T0
?
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*<
_output_shapes*
(:??????????:??????????
?
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*(
_output_shapes
:??????????*

DstT0*

SrcT0

?
*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
:*
valueB"       *
dtype0
?
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*
_output_shapes
: *

DstT0	*

SrcT0
?
,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
: *
valueB
 *    *
dtype0
?
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*
T0*(
_output_shapes
:??????????
?
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*<
_output_shapes*
(:??????????:??????????
?
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*(
_output_shapes
:??????????*

DstT0	*

SrcT0

?
,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
T0	
?
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
?
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values
?
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
_output_shapes
: *
T0
?
$dnn/dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0
?
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
?
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
:
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *  ??*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: 
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ?=*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
?
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
?
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0* 
_output_shapes
:
??
?
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0* 
_output_shapes
:
??
?
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
: *
shape:
??*0
shared_name!dnn/hiddenlayer_1/kernel/part_0
?
@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0
?
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0* 
_output_shapes
:
??
?
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueB?*    *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes	
:?
?
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
shape:?*.
shared_namednn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
: 
?
>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
?
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes	
:?
?
'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0* 
_output_shapes
:
??
x
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp* 
_output_shapes
:
??*
T0
?
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*(
_output_shapes
:??????????
?
%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes	
:?
o
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes	
:?
?
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*(
_output_shapes
:??????????
l
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*(
_output_shapes
:??????????
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
_output_shapes
: *
T0*
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
valueB	 R????*
dtype0	*
_output_shapes
: 
?
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
_output_shapes
: : *
T0

q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 
?
,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*(
_output_shapes
:??????????*
T0
?
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu*<
_output_shapes*
(:??????????:??????????
?
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*

SrcT0
*(
_output_shapes
:??????????*

DstT0
?
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
?
.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*(
_output_shapes
:??????????*
T0
?
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*<
_output_shapes*
(:??????????:??????????*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu
?
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*

SrcT0
*(
_output_shapes
:??????????*

DstT0	
?
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*
_output_shapes
: *

DstT0*

SrcT0	
?
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
?
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
?
$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1/activation
?
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
?
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
:
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *qĜ?*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: 
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *qĜ=*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: 
?
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0* 
_output_shapes
:
??
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
?
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
?
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
?
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*
shape:
??*0
shared_name!dnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes
: 
?
@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
?
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0
?
3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0* 
_output_shapes
:
??
?
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
?
dnn/hiddenlayer_2/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: *
shape:?*.
shared_namednn/hiddenlayer_2/bias/part_0
?
>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 
?
$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0
?
1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes	
:?*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
?
'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0* 
_output_shapes
:
??
x
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0* 
_output_shapes
:
??
?
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*(
_output_shapes
:??????????
?
%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes	
:?
o
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
T0*
_output_shapes	
:?
?
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*(
_output_shapes
:??????????*
T0
l
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*(
_output_shapes
:??????????
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
out_type0	*
_output_shapes
: *
T0
e
dnn/zero_fraction_2/LessEqual/yConst*
valueB	 R????*
dtype0	*
_output_shapes
: 
?
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/cond/SwitchSwitchdnn/zero_fraction_2/LessEqualdnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_2/cond/switch_tIdentity!dnn/zero_fraction_2/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_2/cond/switch_fIdentitydnn/zero_fraction_2/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_2/cond/pred_idIdentitydnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: 
?
,dnn/zero_fraction_2/cond/count_nonzero/zerosConst"^dnn/zero_fraction_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
/dnn/zero_fraction_2/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_2/cond/count_nonzero/zeros*
T0*(
_output_shapes
:??????????
?
6dnn/zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu*<
_output_shapes*
(:??????????:??????????
?
+dnn/zero_fraction_2/cond/count_nonzero/CastCast/dnn/zero_fraction_2/cond/count_nonzero/NotEqual*(
_output_shapes
:??????????*

DstT0*

SrcT0

?
,dnn/zero_fraction_2/cond/count_nonzero/ConstConst"^dnn/zero_fraction_2/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction_2/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_2/cond/count_nonzero/Cast,dnn/zero_fraction_2/cond/count_nonzero/Const*
T0*
_output_shapes
: 
?
dnn/zero_fraction_2/cond/CastCast4dnn/zero_fraction_2/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
?
.dnn/zero_fraction_2/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_2/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
?
1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_2/cond/count_nonzero_1/zeros*
T0*(
_output_shapes
:??????????
?
8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*)
_class
loc:@dnn/hiddenlayer_2/Relu*<
_output_shapes*
(:??????????:??????????*
T0
?
-dnn/zero_fraction_2/cond/count_nonzero_1/CastCast1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual*(
_output_shapes
:??????????*

DstT0	*

SrcT0

?
.dnn/zero_fraction_2/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_2/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
?
6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_2/cond/count_nonzero_1/Cast.dnn/zero_fraction_2/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/cond/MergeMerge6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_2/cond/Cast*
T0	*
N*
_output_shapes
: : 
?
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Sizednn/zero_fraction_2/cond/Merge*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*
_output_shapes
: *

DstT0*

SrcT0	

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

SrcT0	*
_output_shapes
: *

DstT0
?
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
_output_shapes
: *
T0
?
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
?
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
?
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 
?
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
?
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"   6   *+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
:
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *??ҽ*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: 
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *???=*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: 
?
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
:	?6*
T0
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
?
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:	?6
?
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:	?6
?
dnn/logits/kernel/part_0VarHandleOp*)
shared_namednn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
: *
shape:	?6
?
9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
?
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
?
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes
:	?6
?
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB6*    *)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:6
?
dnn/logits/bias/part_0VarHandleOp*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
: *
shape:6*'
shared_namednn/logits/bias/part_0
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
?
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
?
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
dtype0*
_output_shapes
:6
z
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes
:	?6*
dtype0
i
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
T0*
_output_shapes
:	?6
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_2/Reludnn/logits/kernel*
T0*'
_output_shapes
:?????????6
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:6
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:6
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*'
_output_shapes
:?????????6*
T0
e
dnn/zero_fraction_3/SizeSizednn/logits/BiasAdd*
T0*
out_type0	*
_output_shapes
: 
e
dnn/zero_fraction_3/LessEqual/yConst*
dtype0	*
_output_shapes
: *
valueB	 R????
?
dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
_output_shapes
: *
T0	
?
dnn/zero_fraction_3/cond/SwitchSwitchdnn/zero_fraction_3/LessEqualdnn/zero_fraction_3/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_3/cond/switch_tIdentity!dnn/zero_fraction_3/cond/Switch:1*
_output_shapes
: *
T0

o
!dnn/zero_fraction_3/cond/switch_fIdentitydnn/zero_fraction_3/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_3/cond/pred_idIdentitydnn/zero_fraction_3/LessEqual*
_output_shapes
: *
T0

?
,dnn/zero_fraction_3/cond/count_nonzero/zerosConst"^dnn/zero_fraction_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
/dnn/zero_fraction_3/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_3/cond/count_nonzero/zeros*
T0*'
_output_shapes
:?????????6
?
6dnn/zero_fraction_3/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_3/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:?????????6:?????????6
?
+dnn/zero_fraction_3/cond/count_nonzero/CastCast/dnn/zero_fraction_3/cond/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:?????????6*

DstT0
?
,dnn/zero_fraction_3/cond/count_nonzero/ConstConst"^dnn/zero_fraction_3/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
?
4dnn/zero_fraction_3/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_3/cond/count_nonzero/Cast,dnn/zero_fraction_3/cond/count_nonzero/Const*
_output_shapes
: *
T0
?
dnn/zero_fraction_3/cond/CastCast4dnn/zero_fraction_3/cond/count_nonzero/nonzero_count*

SrcT0*
_output_shapes
: *

DstT0	
?
.dnn/zero_fraction_3/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_3/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
?
1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_3/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:?????????6
?
8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_3/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:?????????6:?????????6
?
-dnn/zero_fraction_3/cond/count_nonzero_1/CastCast1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual*

SrcT0
*'
_output_shapes
:?????????6*

DstT0	
?
.dnn/zero_fraction_3/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_3/cond/switch_f*
_output_shapes
:*
valueB"       *
dtype0
?
6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_3/cond/count_nonzero_1/Cast.dnn/zero_fraction_3/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_3/cond/MergeMerge6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_3/cond/Cast*
N*
_output_shapes
: : *
T0	
?
*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Sizednn/zero_fraction_3/cond/Merge*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

SrcT0	*
_output_shapes
: *

DstT0

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*
_output_shapes
: *

DstT0*

SrcT0	
?
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
?
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
_output_shapes
: *
T0
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
W
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
k
)dnn/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
[
Sdnn/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
L
Ddnn/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
s
(dnn/head/predictions/class_ids/dimensionConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
dnn/head/predictions/class_idsArgMaxdnn/logits/BiasAdd(dnn/head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
n
#dnn/head/predictions/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*'
_output_shapes
:?????????*
T0	
?

.dnn/head/predictions/class_string_lookup/ConstConst*?	
value?	B?	6BADMINISTRACION DE EMPRESASBADMINISTRACION DE NEGOCIOSB*ADMINISTRACION DE NEGOCIOS INTERNACIONALESBADMINISTRACIÓN DE EMPRESASB$ADMINISTRACIÓN EN SALUD OCUPACIONALBARQUITECTURABBIOLOGIABCIENCIA POLITICABCIENCIAS MILITARESBCOMERCIO INTERNACIONALBCOMUNICACION SOCIALB COMUNICACION SOCIAL Y PERIODISMOBCOMUNICACION SOCIAL- PERIODISMOBCONTADURIA PUBLICABCONTADURÍA PÚBLICABDERECHOBDISEÑO GRAFICOBDISEÑO INDUSTRIALBECONOMIAB
ENFERMERIABFISIOTERAPIABFONOAUDIOLOGIABINGENIERIA AGRONOMICABINGENIERIA AMBIENTALB INGENIERIA AMBIENTAL Y SANITARIABINGENIERIA BIOMEDICABINGENIERIA CIVILBINGENIERIA DE PETROLEOSBINGENIERIA DE SISTEMASBINGENIERIA ELECTRICABINGENIERIA ELECTRONICABINGENIERIA INDUSTRIALBINGENIERIA MECANICABINGENIERIA MECATRONICABINGENIERIA QUIMICABINSTRUMENTACION QUIRURGICAB!LICENCIATURA EN CIENCIAS SOCIALESB$LICENCIATURA EN EDUCACION PREESCOLARB"LICENCIATURA EN PEDAGOGIA INFANTILB#LICENCIATURA EN PEDAGOGÍA INFANTILBMEDICINABMEDICINA VETERINARIAB MEDICINA VETERINARIA Y ZOOTECNIABMERCADEOBNEGOCIOS INTERNACIONALESBNUTRICION Y DIETETICABODONTOLOGIAB
PSICOLOGIABPSICOLOGÍAB
PUBLICIDADBRELACIONES INTERNACIONALESBSALUD OCUPACIONALB
SOCIOLOGIABTRABAJO SOCIAL*
dtype0*
_output_shapes
:6
o
-dnn/head/predictions/class_string_lookup/SizeConst*
value	B :6*
dtype0*
_output_shapes
: 
v
4dnn/head/predictions/class_string_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
v
4dnn/head/predictions/class_string_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
.dnn/head/predictions/class_string_lookup/rangeRange4dnn/head/predictions/class_string_lookup/range/start-dnn/head/predictions/class_string_lookup/Size4dnn/head/predictions/class_string_lookup/range/delta*
_output_shapes
:6
?
0dnn/head/predictions/class_string_lookup/ToInt64Cast.dnn/head/predictions/class_string_lookup/range*
_output_shapes
:6*

DstT0	*

SrcT0
t
0dnn/head/predictions/class_string_lookup/Const_1Const*
valueB	 BUNK*
dtype0*
_output_shapes
: 
s
(dnn/head/predictions/class_string_lookupHashTableV2*
	key_dtype0	*
value_dtype0*
_output_shapes
: 
?
3dnn/head/predictions/class_string_lookup/table_initLookupTableImportV2(dnn/head/predictions/class_string_lookup0dnn/head/predictions/class_string_lookup/ToInt64.dnn/head/predictions/class_string_lookup/Const*	
Tin0	*

Tout0
?
/dnn/head/predictions/class_string_lookup_LookupLookupTableFindV2(dnn/head/predictions/class_string_lookupdnn/head/predictions/ExpandDims0dnn/head/predictions/class_string_lookup/Const_1*'
_output_shapes
:?????????*	
Tin0	*

Tout0
s
"dnn/head/predictions/probabilitiesSoftmaxdnn/logits/BiasAdd*
T0*'
_output_shapes
:?????????6
`
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
T0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
?

dnn/head/ExpandDims/inputConst*?	
value?	B?	6BADMINISTRACION DE EMPRESASBADMINISTRACION DE NEGOCIOSB*ADMINISTRACION DE NEGOCIOS INTERNACIONALESBADMINISTRACIÓN DE EMPRESASB$ADMINISTRACIÓN EN SALUD OCUPACIONALBARQUITECTURABBIOLOGIABCIENCIA POLITICABCIENCIAS MILITARESBCOMERCIO INTERNACIONALBCOMUNICACION SOCIALB COMUNICACION SOCIAL Y PERIODISMOBCOMUNICACION SOCIAL- PERIODISMOBCONTADURIA PUBLICABCONTADURÍA PÚBLICABDERECHOBDISEÑO GRAFICOBDISEÑO INDUSTRIALBECONOMIAB
ENFERMERIABFISIOTERAPIABFONOAUDIOLOGIABINGENIERIA AGRONOMICABINGENIERIA AMBIENTALB INGENIERIA AMBIENTAL Y SANITARIABINGENIERIA BIOMEDICABINGENIERIA CIVILBINGENIERIA DE PETROLEOSBINGENIERIA DE SISTEMASBINGENIERIA ELECTRICABINGENIERIA ELECTRONICABINGENIERIA INDUSTRIALBINGENIERIA MECANICABINGENIERIA MECATRONICABINGENIERIA QUIMICABINSTRUMENTACION QUIRURGICAB!LICENCIATURA EN CIENCIAS SOCIALESB$LICENCIATURA EN EDUCACION PREESCOLARB"LICENCIATURA EN PEDAGOGIA INFANTILB#LICENCIATURA EN PEDAGOGÍA INFANTILBMEDICINABMEDICINA VETERINARIAB MEDICINA VETERINARIA Y ZOOTECNIABMERCADEOBNEGOCIOS INTERNACIONALESBNUTRICION Y DIETETICABODONTOLOGIAB
PSICOLOGIABPSICOLOGÍAB
PUBLICIDADBRELACIONES INTERNACIONALESBSALUD OCUPACIONALB
SOCIOLOGIABTRABAJO SOCIAL*
dtype0*
_output_shapes
:6
Y
dnn/head/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
~
dnn/head/ExpandDims
ExpandDimsdnn/head/ExpandDims/inputdnn/head/ExpandDims/dim*
_output_shapes

:6*
T0
[
dnn/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*
_output_shapes
:*
T0*
N
u
dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*
T0*'
_output_shapes
:?????????6

initNoOp
M
init_all_tablesNoOp4^dnn/head/predictions/class_string_lookup/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
s
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:?
Y
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes	
:?
_
save/Identity_1Identitysave/Identity"/device:CPU:0*
_output_shapes	
:?*
T0
{
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	?
a
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes
:	?*
T0
e
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
_output_shapes
:	?*
T0
u
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes	
:?*
dtype0
]
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes	
:?*
T0
a
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes	
:?
|
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0* 
_output_shapes
:
??
b
save/Identity_6Identitysave/Read_3/ReadVariableOp* 
_output_shapes
:
??*
T0
f
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0* 
_output_shapes
:
??
u
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes	
:?
]
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes	
:?*
T0
a
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes	
:?
|
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0* 
_output_shapes
:
??
c
save/Identity_10Identitysave/Read_5/ReadVariableOp* 
_output_shapes
:
??*
T0
h
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0* 
_output_shapes
:
??
m
save/Read_6/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:6
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes
:6
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:6
t
save/Read_7/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes
:	?6
b
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes
:	?6
g
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes
:	?6
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7608a6f734904e678d36fcf7ed341409/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
?
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/Read_8/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
_output_shapes	
:?*
dtype0
m
save/Identity_16Identitysave/Read_8/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes	
:?
c
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes	
:?
?
save/Read_9/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	?
q
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
_output_shapes
:	?*
T0
g
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
_output_shapes
:	?*
T0
?
save/Read_10/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes	
:?
n
save/Identity_20Identitysave/Read_10/ReadVariableOp"/device:CPU:0*
_output_shapes	
:?*
T0
c
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
_output_shapes	
:?*
T0
?
save/Read_11/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
dtype0* 
_output_shapes
:
??
s
save/Identity_22Identitysave/Read_11/ReadVariableOp"/device:CPU:0* 
_output_shapes
:
??*
T0
h
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0* 
_output_shapes
:
??
?
save/Read_12/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
_output_shapes	
:?*
dtype0
n
save/Identity_24Identitysave/Read_12/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes	
:?
c
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
_output_shapes	
:?*
T0
?
save/Read_13/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
dtype0* 
_output_shapes
:
??
s
save/Identity_26Identitysave/Read_13/ReadVariableOp"/device:CPU:0*
T0* 
_output_shapes
:
??
h
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0* 
_output_shapes
:
??
}
save/Read_14/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:6
m
save/Identity_28Identitysave/Read_14/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:6
b
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes
:6
?
save/Read_15/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
_output_shapes
:	?6*
dtype0
r
save/Identity_30Identitysave/Read_15/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	?6
g
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes
:	?6
?
save/SaveV2_1/tensor_namesConst"/device:CPU:0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernel*
dtype0*
_output_shapes
:
?
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*?
value?B?B1024 0,1024B8 1024 0,8:0,1024B	512 0,512B1024 512 0,1024:0,512B	512 0,512B512 512 0,512:0,512B54 0,54B512 54 0,512:0,54*
dtype0*
_output_shapes
:
?
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_17save/Identity_19save/Identity_21save/Identity_23save/Identity_25save/Identity_27save/Identity_29save/Identity_31"/device:CPU:0*
dtypes

2
?
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/Identity_32Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:* 
valueBBglobal_step*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
s
save/AssignAssignglobal_stepsave/RestoreV2*
_output_shapes
: *
T0	*
_class
loc:@global_step
(
save/restore_shardNoOp^save/Assign
?
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernel*
dtype0
?
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*?
value?B?B1024 0,1024B8 1024 0,8:0,1024B	512 0,512B1024 512 0,1024:0,512B	512 0,512B512 512 0,512:0,512B54 0,54B512 54 0,512:0,54*
dtype0*
_output_shapes
:
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*]
_output_shapesK
I:?:	?:?:
??:?:
??:6:	?6*
dtypes

2
c
save/Identity_33Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes	
:?
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_33"/device:CPU:0*
dtype0
i
save/Identity_34Identitysave/RestoreV2_1:1"/device:CPU:0*
_output_shapes
:	?*
T0
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_34"/device:CPU:0*
dtype0
e
save/Identity_35Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes	
:?*
T0
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_35"/device:CPU:0*
dtype0
j
save/Identity_36Identitysave/RestoreV2_1:3"/device:CPU:0*
T0* 
_output_shapes
:
??
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_36"/device:CPU:0*
dtype0
e
save/Identity_37Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes	
:?
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_37"/device:CPU:0*
dtype0
j
save/Identity_38Identitysave/RestoreV2_1:5"/device:CPU:0*
T0* 
_output_shapes
:
??
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_38"/device:CPU:0*
dtype0
d
save/Identity_39Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes
:6
q
save/AssignVariableOp_6AssignVariableOpdnn/logits/bias/part_0save/Identity_39"/device:CPU:0*
dtype0
i
save/Identity_40Identitysave/RestoreV2_1:7"/device:CPU:0*
_output_shapes
:	?6*
T0
s
save/AssignVariableOp_7AssignVariableOpdnn/logits/kernel/part_0save/Identity_40"/device:CPU:0*
dtype0
?
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_32:0save/restore_all (5 @F8"%
saved_model_main_op


group_deps"?
	summaries?
?
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"?
trainable_variables??
?
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_0/kernel?  "?(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_0/bias? "?(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"*
dnn/hiddenlayer_1/kernel??  "??(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_1/bias? "?(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"*
dnn/hiddenlayer_2/kernel??  "??(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_2/bias? "?(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
?
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"!
dnn/logits/kernel?6  "?6(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
?
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias6 "6(2*dnn/logits/bias/part_0/Initializer/zeros:08"?
	variables??
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
?
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_0/kernel?  "?(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_0/bias? "?(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"*
dnn/hiddenlayer_1/kernel??  "??(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_1/bias? "?(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
?
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"*
dnn/hiddenlayer_2/kernel??  "??(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
?
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_2/bias? "?(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
?
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"!
dnn/logits/kernel?6  "?6(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
?
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias6 "6(2*dnn/logits/bias/part_0/Initializer/zeros:08"L
table_initializer7
5
3dnn/head/predictions/class_string_lookup/table_init"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"?+
cond_context?+?+
?
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *?
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
?
"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*?
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
?
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *?
dnn/hiddenlayer_1/Relu:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0T
dnn/hiddenlayer_1/Relu:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
?
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*?
dnn/hiddenlayer_1/Relu:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0V
dnn/hiddenlayer_1/Relu:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
?
"dnn/zero_fraction_2/cond/cond_text"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_t:0 *?
dnn/hiddenlayer_2/Relu:0
dnn/zero_fraction_2/cond/Cast:0
-dnn/zero_fraction_2/cond/count_nonzero/Cast:0
.dnn/zero_fraction_2/cond/count_nonzero/Const:0
8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_2/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_2/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_2/cond/count_nonzero/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_t:0T
dnn/hiddenlayer_2/Relu:08dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0
?
$dnn/zero_fraction_2/cond/cond_text_1"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_f:0*?
dnn/hiddenlayer_2/Relu:0
/dnn/zero_fraction_2/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_2/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_2/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_f:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0V
dnn/hiddenlayer_2/Relu:0:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
?
"dnn/zero_fraction_3/cond/cond_text"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_t:0 *?
dnn/logits/BiasAdd:0
dnn/zero_fraction_3/cond/Cast:0
-dnn/zero_fraction_3/cond/count_nonzero/Cast:0
.dnn/zero_fraction_3/cond/count_nonzero/Const:0
8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_3/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_3/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_3/cond/count_nonzero/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_t:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0
?
$dnn/zero_fraction_3/cond/cond_text_1"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_f:0*?
dnn/logits/BiasAdd:0
/dnn/zero_fraction_3/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_3/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_3/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_f:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0*?
predict?
5
examples)
input_example_tensor:0?????????S
classesH
1dnn/head/predictions/class_string_lookup_Lookup:0?????????5
logits+
dnn/logits/BiasAdd:0?????????6E
	class_ids8
!dnn/head/predictions/ExpandDims:0	?????????L
probabilities;
$dnn/head/predictions/probabilities:0?????????6tensorflow/serving/predict*?
classification?
3
inputs)
input_example_tensor:0?????????1
classes&
dnn/head/Tile:0?????????6E
scores;
$dnn/head/predictions/probabilities:0?????????6tensorflow/serving/classify*?
serving_default?
3
inputs)
input_example_tensor:0?????????1
classes&
dnn/head/Tile:0?????????6E
scores;
$dnn/head/predictions/probabilities:0?????????6tensorflow/serving/classify