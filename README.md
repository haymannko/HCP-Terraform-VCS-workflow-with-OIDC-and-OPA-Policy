
## HCP Terraform VCS Workflow with Gitlab, OIDC and OPA Policy


#### code push to gitlab then pull request/merge request ,  for first time, need to run manual in HCP then Automatic speculative plans run, if that workfolw is ok, need to merge in gitlab then plan and apply automatically run in HCP and create resources in AWS

```
Code Push to GitLab ➔ Open Merge Request (Triggers Automatic Speculative Plan & OPA Check in HCP Terraform) ➔ Merge Code ➔ Triggers Automatic Plan & Apply via OIDC to Create AWS Resources
```

https://gitlab.com/haymannko/vcs-workflow-with-oidc-and-opa-policy-hcp-remote-execution.git


### Protected Branch
![alt text](image-12.png)

### Webhooks
![alt text](image-13.png)




### workspace setting
![alt text](image-3.png)

![alt text](image-4.png)

### Version Control
![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)

![alt text](image-18.png)

### OIDC
![alt text](image-8.png)

![alt text](image-9.png)

![alt text](image-11.png)

![alt text](image-10.png)

### OPA Policy (public-ingress-deny-policy)
```
package terraform.policies.public_ingress

import input.plan as plan

deny contains msg if {
  r := plan.resource_changes[_]
  r.mode == "managed"
  r.type == "aws_security_group"
  r.change.after.ingress[_].cidr_blocks[_] == "0.0.0.0/0"
  msg := sprintf("%v has 0.0.0.0/0 as allowed ingress", [r.address])
}
```


![alt text](image-14.png)

![alt text](image-15.png)

![alt text](image-16.png)



![alt text](image-2.png)

![alt text](image-1.png)

### Donot forget to destroy
![alt text](image-17.png)