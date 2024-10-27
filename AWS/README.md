# AWS notes

## IAM

- Account that has access full access 

## Groups & Users
- Create individual users so each user has access to what they need
- Users can be grouped e.g. based on roles
-

## Permissions

- Users/groups are assigned policies, which are JSON documents - which define the level off access they have
- Always apply the least privellage principle - don't give more permission than needed 

## IAM Policies Inheritence

- Inline policies are specific to users and not the group
- If a user is part of a group and needs more access that other members of the group, you can set inline policies

## IAM Policies Structure

![IAM Policies](../AWS/images/IAM%20Policies%20structure.png)