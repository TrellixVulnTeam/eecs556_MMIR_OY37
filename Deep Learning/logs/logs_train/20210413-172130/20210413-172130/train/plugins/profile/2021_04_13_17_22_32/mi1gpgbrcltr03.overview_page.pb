�	q9^�hR�@q9^�hR�@!q9^�hR�@      ��!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-q9^�hR�@C p�@1>�
�N�@AY5s���?I0H��{o@*	G�z�&LA2�
RIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2z4Փ٭�@!���r��C@)z4Փ٭�@1���r��C@:Preprocessing2�
iIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2::FlatMap[0]::Generator�E{���@!�ZL�KA@)�E{���@1�ZL�KA@:Preprocessing2_
(Iterator::Model::ParallelMapV2::Prefetcht\���w�@!J��@��8@)t\���w�@1J��@��8@:Preprocessing2h
1Iterator::Model::ParallelMapV2::Prefetch::BatchV2�"�x�@!
e[�ı8@)����SI@1/\�����?:Preprocessing2z
CIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat|b�*O��@!;��o�C@)�f��e�?1~ `;7i?:Preprocessing2F
Iterator::Model6�Ko.�?!�D�<�V?)^��k�?1�89�^M?:Preprocessing2�
[Iterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2::FlatMap�����@!�#9�KA@)J�ʽ���?1��t��L?:Preprocessing2U
Iterator::Model::ParallelMapV2���'��?!h{���@?)���'��?1h{���@?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.moderate"�8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	C p�@C p�@!C p�@      ��!       "	>�
�N�@>�
�N�@!>�
�N�@*      ��!       2	Y5s���?Y5s���?!Y5s���?:	0H��{o@0H��{o@!0H��{o@B      ��!       J      ��!       R      ��!       Z      ��!       JGPUb �"�
_DDFModel/functional_1/tf_op_layer_MatMul_1/ArithmeticOptimizer/FoldTransposeIntoMatMul_MatMul_1BatchMatMulV2��j�Ƹ?!��j�Ƹ?"�
tgradient_tape/DDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_2/Conv3D/Conv3DBackpropFilterV2Conv3DBackpropFilterV2vg��L�?!�/�]	�?"�
tgradient_tape/DDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_1/Conv3D/Conv3DBackpropFilterV2Conv3DBackpropFilterV2��zvJ�?!���L��?"k
ODDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_1/Conv3DConv3D��ݡn4�?!u�Maڝ�?"k
ODDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_2/Conv3DConv3D�x�ә	�?!�}Ǜ_�?"�
sgradient_tape/DDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_2/Conv3D/Conv3DBackpropInputV2Conv3DBackpropInputV2a�#��?!���>�?"�
sgradient_tape/DDFModel/functional_1/LocalNet/sequential/residual_conv3d_block/conv3d_1/Conv3D/Conv3DBackpropInputV2Conv3DBackpropInputV2
��W��?![/�Dj�?"�
igradient_tape/DDFModel/functional_1/LocalNet/sequential/conv3d_block/conv3d/Conv3D/Conv3DBackpropFilterV2Conv3DBackpropFilterV2�y>���?!�(#����?"�
pgradient_tape/DDFModel/functional_1/LocalNet/sequential_3/conv3d_block_4/conv3d_10/Conv3D/Conv3DBackpropFilterV2Conv3DBackpropFilterV2��1iJ�?!Զl
��?"�
ygradient_tape/DDFModel/functional_1/LocalNet/sequential_3/residual_conv3d_block_3/conv3d_11/Conv3D/Conv3DBackpropFilterV2Conv3DBackpropFilterV2�q�CI�?!bZ�&W$�?Q      Y@Y
�-��@a��>J
GX@q��e~�kQ?yo֚�6!?"�

device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
moderate�8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQ2"GPU(: B 