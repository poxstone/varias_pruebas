# CLOUD RESOURCE MANAGER
- doc [API](https://cloud.google.com/resource-manager/reference/rest/v1/projects/create)

## INSTALL
- Create Service Account and add "Domain Delegation"
- Add in G Suite Panel Client ID and apis scopes (Api driver is for tests) [admin](https://admin.google.com/ManageOauthClients)
    - https://www.googleapis.com/auth/admin.directory.user,
    - https://www.googleapis.com/auth/cloud-platform,
    - https://www.googleapis.com/auth/cloudplatformprojects,
    - https://www.googleapis.com/auth/iam,
    - https://www.googleapis.com/auth/cloud-billing,
    - https://www.googleapis.com/auth/drive
- Enable APIS in Main Project:
    - Cloud Resource Manager API
    - Identity and Access Management (IAM) API
    - Cloud Billing API
    - Google Drive API (for test)
- Requirements:
  ```bash
  pip install --upgrade google-api-python-client;
  ```
### Run 
```bash
python main.py;
```
 

## GCLOUD create notes

```bash
PROJECT_ID="myproject-id-001";
SERVICE_ACCOUNT_NAME="my-service-account";
SERVICE_ACCOUNT="${SERVICE_ACCOUNT_NAME}@${PROJECT_ID}.iam.gserviceaccount.com";
FOLDER_ID="109062036724";
BILLING_ID="017856-DB0849-E77FA7";


# Authenticate gcloud with service account (EXAMPLE)
gcloud auth activate-service-account resource-manager-666@efor-resource-manager.iam.gserviceaccount.com --key-file efor-resource-manager-048124d13f0f.json


# Create Project
gcloud projects create ${PROJECT_ID} --folder ${FOLDER_ID};


# Info Project (https://cloud.google.com/sdk/gcloud/reference/)
gcloud projects describe ${PROJECT_ID} --format list;


# List billing accounts
gcloud beta billing accounts list


# Billing
gcloud beta billing projects link
gcloud beta billing projects link ${PROJECT_ID} --billing-account 017856-DB0849-E77FA7


# create service account
gcloud iam service-accounts create ${SERVICE_ACCOUNT_NAME} --display-name --project ${PROJECT_ID} ${SERVICE_ACCOUNT_NAME}


# Add roles from
gcloud projects add-iam-policy-binding ${PROJECT_ID} --member user:${USER_EMAIL} --role roles/owner;
gcloud projects add-iam-policy-binding ${PROJECT_ID} --member serviceAccount:${SERVICE_ACCOUNT} --role roles/owner;


# Services Apis lis
gcloud services list --available


# Enable apis
gcloud services enable compute.googleapis.com --project ${PROJECT_ID} -q;


# Create instance
gcloud compute instances create mv1 --zone us-central1-f --project ${PROJECT_ID} -q;

```

# varias_pruebas
