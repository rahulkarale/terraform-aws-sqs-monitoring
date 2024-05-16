<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.approximatenumberofmessagesdelayed_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.approximatenumberofmessagesvisible_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.numberofmessagesreceived_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.numberofmessagessent_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_sns_topic_subscription.sns-topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sqs_queue.dlq_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue.queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.dlq_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |
| [aws_sqs_queue_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ApproximateNumberOfMessagesDelayed"></a> [ApproximateNumberOfMessagesDelayed](#input\_ApproximateNumberOfMessagesDelayed) | the number of ApproximateNumberOfMessagesDelayed | `number` | `300` | no |
| <a name="input_ApproximateNumberOfMessagesVisible"></a> [ApproximateNumberOfMessagesVisible](#input\_ApproximateNumberOfMessagesVisible) | the number of ApproximateNumberOfMessagesVisible | `number` | `300` | no |
| <a name="input_NumberOfMessagesReceived"></a> [NumberOfMessagesReceived](#input\_NumberOfMessagesReceived) | the number of NumberOfMessagesReceived | `number` | `300` | no |
| <a name="input_NumberOfMessagesSent"></a> [NumberOfMessagesSent](#input\_NumberOfMessagesSent) | the number of NumberOfMessagesSent | `number` | `300` | no |
| <a name="input_actions_alarm"></a> [actions\_alarm](#input\_actions\_alarm) | A list of actions to take when alarms are triggered. Will likely be an SNS topic for event distribution. | `list(any)` | `[]` | no |
| <a name="input_actions_ok"></a> [actions\_ok](#input\_actions\_ok) | A list of actions to take when alarms are cleared. Will likely be an SNS topic for event distribution. | `list(any)` | `[]` | no |
| <a name="input_alarm_enabled"></a> [alarm\_enabled](#input\_alarm\_enabled) | A true/false for whether the alarms are created in the desired environment | `bool` | `false` | no |
| <a name="input_aws_assume_role_arn"></a> [aws\_assume\_role\_arn](#input\_aws\_assume\_role\_arn) | n/a | `string` | `""` | no |
| <a name="input_content_based_deduplication"></a> [content\_based\_deduplication](#input\_content\_based\_deduplication) | Enables content-based deduplication for FIFO queues | `bool` | `false` | no |
| <a name="input_create_dlq"></a> [create\_dlq](#input\_create\_dlq) | To check if dlq queue to be created or not | `bool` | `false` | no |
| <a name="input_create_sns_topic_subscription"></a> [create\_sns\_topic\_subscription](#input\_create\_sns\_topic\_subscription) | SNS topic subscription | `bool` | `false` | no |
| <a name="input_create_sqs"></a> [create\_sqs](#input\_create\_sqs) | To check if dlq queue to be created or not | `bool` | `true` | no |
| <a name="input_datapoints_approximatenumberofmessagesdelayed"></a> [datapoints\_approximatenumberofmessagesdelayed](#input\_datapoints\_approximatenumberofmessagesdelayed) | The number of datapoints that must be breaching to trigger approximatenumberofmessagesdelayed alarm | `number` | `null` | no |
| <a name="input_datapoints_approximatenumberofmessagesvisible"></a> [datapoints\_approximatenumberofmessagesvisible](#input\_datapoints\_approximatenumberofmessagesvisible) | The number of datapoints that must be breaching to trigger approximatenumberofmessagesvisible alarm | `number` | `null` | no |
| <a name="input_datapoints_numberofmessagesreceived"></a> [datapoints\_numberofmessagesreceived](#input\_datapoints\_numberofmessagesreceived) | The number of datapoints that must be breaching to trigger numberofmessagesreceived alarm | `number` | `null` | no |
| <a name="input_datapoints_numberofmessagessent"></a> [datapoints\_numberofmessagessent](#input\_datapoints\_numberofmessagessent) | The number of datapoints that must be breaching to trigger numberofmessagessent alarm | `number` | `null` | no |
| <a name="input_delay_seconds"></a> [delay\_seconds](#input\_delay\_seconds) | The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes) | `number` | `60` | no |
| <a name="input_dlq_policy"></a> [dlq\_policy](#input\_dlq\_policy) | The JSON policy for the SQS queue | `string` | `""` | no |
| <a name="input_evaluation_period"></a> [evaluation\_period](#input\_evaluation\_period) | The evaluation period over which to use when triggering alarms. | `string` | `"5"` | no |
| <a name="input_fifo_queue"></a> [fifo\_queue](#input\_fifo\_queue) | Boolean designating a FIFO queue | `bool` | `false` | no |
| <a name="input_kms_data_key_reuse_period_seconds"></a> [kms\_data\_key\_reuse\_period\_seconds](#input\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours) | `number` | `300` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK | `string` | `null` | no |
| <a name="input_max_message_size"></a> [max\_message\_size](#input\_max\_message\_size) | The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB) | `number` | `262144` | no |
| <a name="input_max_receive_count"></a> [max\_receive\_count](#input\_max\_receive\_count) | Max Receive Count for SQS | `number` | `5` | no |
| <a name="input_message_retention_seconds"></a> [message\_retention\_seconds](#input\_message\_retention\_seconds) | The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days) | `number` | `345600` | no |
| <a name="input_name"></a> [name](#input\_name) | This is the human-readable name of the queue. If omitted, Terraform will assign a random name. | `string` | `""` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | A unique name beginning with the specified prefix. | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The JSON policy for the SQS queue | `string` | `""` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | SNS provider for sunscriptons | `string` | `"sqs"` | no |
| <a name="input_receive_wait_time_seconds"></a> [receive\_wait\_time\_seconds](#input\_receive\_wait\_time\_seconds) | The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds) | `number` | `0` | no |
| <a name="input_redrive_policy"></a> [redrive\_policy](#input\_redrive\_policy) | The JSON policy to set up the Dead Letter Queue, see AWS docs. Note: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string ("5") | `string` | `""` | no |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | SNS arn for sunscriptons | `string` | `""` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | SNS endpoint for sunscriptons | `string` | `""` | no |
| <a name="input_statistic_period"></a> [statistic\_period](#input\_statistic\_period) | The number of seconds that make each statistic period. | `string` | `"60"` | no |
| <a name="input_visibility_timeout_seconds"></a> [visibility\_timeout\_seconds](#input\_visibility\_timeout\_seconds) | The visibility timeout for the queue. An integer from 0 to 43200 (12 hours) | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue_arn"></a> [sqs\_queue\_arn](#output\_sqs\_queue\_arn) | The ARN of the SQS queue |
| <a name="output_sqs_queue_id"></a> [sqs\_queue\_id](#output\_sqs\_queue\_id) | The URL for the created Amazon SQS queue |
| <a name="output_sqs_queue_name"></a> [sqs\_queue\_name](#output\_sqs\_queue\_name) | The name of the SQS queue |
<!-- END_TF_DOCS -->