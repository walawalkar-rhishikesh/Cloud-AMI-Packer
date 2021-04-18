# AMI

> Webapp is a web application which is built on NodeJs, Express, MySql and ReactJs. This application is a demostration of various aspect of DevOps and is a part of CSYE6225 Course at Northeastern University. AMI(This) repository is used for creating Amazon Machine Image which will have all the necessary installation required to run the Webapp. On running the shell script, an image is created in AWS. 

## Technology Stack
> - `AWS CLI`    
> - `Packer.io`

## Run

> - `TERMINAL`
###### Installation and starting server
```
export AWS_PROFILE="dev"
Old ami-068663a3c619dd892
Unpack packer and move it to usr/local/bin 
- This makes packer available throughout
cd --- Project Directory
sh build.sh
```