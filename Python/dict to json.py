import json

# convert a Python dictionary to JSON with sorted keys

# A dictionary
test = {'setupcheck-deploy-devops': {'administratorsGroup': None, 'authorization': {'parameters': {'authenticationType': 'spnKey', 'serviceprincipalid': 'c6211646-d5c4-4a4f-a5cc-3eb2f134713f', 'tenantid': '2372acd0-7a4b-4e0d-bcfa-64be2dc434e6'}, 'scheme': 'ServicePrincipal'}, 'createdBy': {'descriptor': 'aad.Y2FkNGRiZTYtYzNkNi03ZTJhLWE3OGMtODMyODQyOGQ3NjUz', 'directoryAlias': None, 'displayName': 'Allard Schmidt', 'id': 'cad4dbe6-c3d6-6e2a-a78c-8328428d7653', 'imageUrl': 'https://dev.azure.com/inergy/_apis/GraphProfile/MemberAvatars/aad.Y2FkNGRiZTYtYzNkNi03ZTJhLWE3OGMtODMyODQyOGQ3NjUz', 'inactive': None, 'isAadIdentity': None, 'isContainer': None, 'isDeletedInOrigin': None, 'profileUrl': None, 'uniqueName': 'Allard.Schmidt@inergy.nl', 'url': 'https://spsprodweu4.vssps.visualstudio.com/A19d5c158-056f-402f-9e9c-1aee38d79337/_apis/Identities/cad4dbe6-c3d6-6e2a-a78c-8328428d7653'}, 'data': {'creationMode': 'Manual', 'environment': 'AzureCloud', 'scopeLevel': 'Subscription', 'subscriptionId': '7d72d556-4a0c-4cc9-9556-3481d7ba64bc', 'subscriptionName': 'Launchpad Test Production'}, 'description': '', 'groupScopeId': None, 'id': '4812a722-28c8-4f6d-98cf-19ff6f7001ba', 'isReady': True, 'isShared': False, 'name': 'setupcheck-deploy-devops', 'operationStatus': None, 'owner': 'Library', 'readersGroup': None, 'serviceEndpointProjectReferences': [{'name': 'setupcheck-deploy-devops', 'projectReference': {'id': 'a6d3649c-1ae1-4c95-a67b-bb513dae3849', 'name': 'Launchpad235'}}], 'type': 'azurerm', 'url': 'https://management.azure.com/'}}

# convert dictionary to JSON with sorted keys
test_json = json.dumps(test, sort_keys=True)
print(test_json)