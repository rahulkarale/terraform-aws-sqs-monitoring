include {
  path = find_in_parent_folders()
}

#locals {
#  common_vars = yamldecode(file(find_in_parent_folders("common.yaml")))
#}

terraform {
  source = "../../../../module/sqs"
}

inputs = {
  name                               = "test-sqs-monitoring-queue"
  visibility_timeout_seconds         = 30
  create_dlq                         = false
  alarm_enabled                      = true
  actions_alarm                      = ["sns-topic-arn"] ## Pass the sns-topic for alerting
  evaluation_period                  = "5"
  statistic_period                   = "60"
  NumberOfMessagesReceived           = 600
  NumberOfMessagesSent               = 600
  ApproximateNumberOfMessagesDelayed = 50
  ApproximateNumberOfMessagesVisible = 600
  policy                     = <<POLICY
    {
      "Version": "2012-10-17",
      "Id": "SQSDefaultPolicy",
      "Statement": [
        {
          "Sid": "Queue1_Send_Receive",
          "Effect": "Allow",
          "Principal": {
            "AWS": "*"
          },
          "Action": [
              "sqs:ReceiveMessage",
              "sqs:SendMessage",
              "sqs:DeleteMessage",
              "sqs:GetQueueUrl"
            ],
          "Resource": "*"
        }
      ]
    }
  POLICY

}