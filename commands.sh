# create and s3 bucket

aws s3 mb s3://rajdeep-code-sam

#package cloudformation

sam package --s3-bucket rajdeep-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

#deploy
sam deploy --template-file gen\template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM