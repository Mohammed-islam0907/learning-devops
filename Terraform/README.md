# Terraform notes

- **IaC** can be stored in Version Control Systems e.g. Git

## Tips 

- Get hands on with documentation and Registry
- Testing and validation 
- Start with smaal Minimal Viable Product (MVP) and iterate
- Implement DRY (Don't Repeat Yourself) Software Engineering

## State File

- This is the blueprint
- Idempotency - Terraform configuration produces same result, despite how many times you run it and if a change is made to the configuration, it wouldn't cause a complete change - just applies that particular change 

## Terraform Plan

- + Create
- ~ Update/modify
- - destroy

## Local State Files

- TF stores siles on local machines 
- Don't need to worry about other people impacting your SF

## Remote State Files

- Collaborative envionment 
- Automatic locking - preventing users making changes at same time, preventing corruption
- Auto backup and security - ensuring infastructure state is secure and recoverable

- Good practices:
- regular backups 
 - state locking 
 - 