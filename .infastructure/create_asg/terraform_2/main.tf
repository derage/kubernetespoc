
  resource "aws_iam_policy" "kube_asg_policy" {
    name        = "kube_asg_policy"
    description = "policy for autoscaling kube cluster"
    policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "autoscaling:DescribeAutoScalingGroups",
                "autoscaling:DescribeAutoScalingInstances",
                "autoscaling:SetDesiredCapacity",
                "autoscaling:TerminateInstanceInAutoScalingGroup"
            ],
            "Resource": "*"
        }
    ]
}
  EOF
  }

  resource "aws_iam_policy_attachment" "attach_to_kuberole" {
    name       = "attach_to_kuberole"
    roles      = ["masters.kubepoc.cafarelli.io", "nodes.kubepoc.cafarelli.io"]
    policy_arn = "${aws_iam_policy.kube_asg_policy.arn}"
  }
