# Amazon Route 53 for the AWS Service Broker
Provision, manage and connect to [Amazon Route 53](https://aws.amazon.com/route53/).

## Prerequisites

**IAM resources** - see the [AWS Service Broker Requirements](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md#requirements) for details  

## Plans

### r53-hostedzone
Create a Route 53 hosted zone.

### r53-recordset
Create a RecordSet in an existing Hosted Zone

## Retained resources

No resources are retained. The Route 53 resources, data and all associated resources will be fully removed if the Service Instance is deleted.


## Resources

[Getting Started With OCP and the AWS Service Broker](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/getting-started.md)  
[AWS Service Broker Overview](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md)  
[FAQ](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/FAQ.md)  
[Troubleshooting](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Troubleshooting.md)  

## License

This library is licensed under the Apache 2.0 License.