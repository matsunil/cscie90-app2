# Java Spring, mu-powered, Hello World

# Set Up
In this example, the pipeline will get an encrypted value from [AWS Systems Manager Parameter Store](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-parameter-store.html).

In addition to getting mu and GitHub tokens set up, you'll need to add a parameter in SSM:

```bash
aws ssm put-parameter \
    --name "/hbs/hello/dev" \
    --value "P@sSwW)rd" \
    --type "SecureString" 
```

1. [Install mu](https://github.com/stelligent/mu/wiki/Installation)
2. Fork this repo, and clone it into your working envrionment
3. Edit the VPC configuration in the [mu.yml](mu.yml) file that's specific for your AWS account
4. Commit these changes back into your repo
5. Get a [github token](https://github.com/stelligent/devops-essentials/wiki/Prerequisites#create-an-oauth-token-in-github) so the pipeline can access the repo
5. Dry run the pipeline: `mu -d pipeline up` and make sure there are no errors
6. Deploy! `mu pipeline up`

