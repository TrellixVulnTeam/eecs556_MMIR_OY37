	HQg�)��@HQg�)��@!HQg�)��@      ��!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-HQg�)��@Fx{�T@1����Y��@A2=a���?IA}˜N�@*	�G����SA2_
(Iterator::Model::ParallelMapV2::Prefetch�캷���@!�c��ZA@)�캷���@1�c��ZA@:Preprocessing2�
iIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2::FlatMap[0]::Generator{��	��@!���Ju�>@){��	��@1���Ju�>@:Preprocessing2�
RIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2�8G��@!7߼�h(6@)�8G��@17߼�h(6@:Preprocessing2h
1Iterator::Model::ParallelMapV2::Prefetch::BatchV2zq�ݥ�@!�^`�@@)���L�@1Zn��K+*@:Preprocessing2z
CIterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat`̖��
�@!���*6@)��;����?1�@�Hz�?:Preprocessing2�
[Iterator::Model::ParallelMapV2::Prefetch::BatchV2::ShuffleAndRepeat::ParallelMapV2::FlatMapLU��J��@!Q�fŲ>@). ��L�?1B)�y�T?:Preprocessing2F
Iterator::ModelD��)X�?!��g�ڿT?)��A|`ǧ?1�@N997M?:Preprocessing2U
Iterator::Model::ParallelMapV2ѯ����?!�pW��8?)ѯ����?1�pW��8?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"�18.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	Fx{�T@Fx{�T@!Fx{�T@      ��!       "	����Y��@����Y��@!����Y��@*      ��!       2	2=a���?2=a���?!2=a���?:	A}˜N�@A}˜N�@!A}˜N�@B      ��!       J      ��!       R      ��!       Z      ��!       JGPUb 