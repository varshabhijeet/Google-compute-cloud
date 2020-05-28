#Download and install Google Cloud SDK
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-294.0.0-linux-x86_64.tar.gz
tar zxvf  google-cloud-sdk-294.0.0-linux-x86_64.tar.gz

./google-cloud-sdk/install.sh
PATH="google-cloud-sdk/bin:${PATH}"


# install kubectl 
gcloud components install kubectl


#Activate service account 
gcloud auth activate-service-account service-key@river-span-272204.iam.gserviceaccount.com --key-file ${HOME}/key.json


#Update gcloud component
gcloud components update

gcloud init



#run script
bash variable.sh

