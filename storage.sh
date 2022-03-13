# WILL SHOW ALL THE BUCKTS PRESENT
gsutil ls

# WILL SHOW ALL THE CONTENT PRESTENT IN THE SPECIFIC BUCKET
gsutil ls gs://storage-lab-console/
# WILL SHOW ALL THE CONTENT IN FLAT FORMAT
gsutil ls gs://storage-lab-console/**

# GET HELP FOR MAKE BUCKET
gsutil mb --help

# MAKE BUCKET IN <LOCATION> gs://<NAME OF BUCKET>
gsutil mb -l northamerica-northeast1 gs://storage-lab-cli

# SHOW LABELS OF SPECIFIC BUCKET
gsutil label get gs://storage-lab-console/
# APPENT LABELS TO A SPECIFIC FILE
gsutil label get gs://storage-lab-console/ >bucketlabels.json

# SET LABEL FROM FILE TO BUCKET
gsutil label set bucketlabels.json gs://storage-lab-cli/
# SET LABEL TO BUCKET
gsutil label ch -l "extralabel:extravalue" gs://storage-lab-cli

# VERSIONING STATUS ON BUCKET
gsutil versioning get gs://storage-lab-cli/
# SET VERSIONING STATUS ON BUCKET
gsutil versioning set on gs://storage-lab-cli/
# VIEW ALL THE CONTENT ON BUCKET WITH VERSION: ENABLED
gsutil ls -a gs://storage-lab-cli/

# ALLOW PUBLIC ACCESS TO SPECIFIC FILE OR FOLDER OR BUCKET IT SELF
gsutil acl ch -u AllUsers:R gs://storage-lab-cli/Selfie.jpg