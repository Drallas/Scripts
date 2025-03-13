import json

# This function uses the data template to create a new json file.

# Variables
project_name = "test-project"
loginserver = "srv001.tenant.io"

data = ''' {
  "administratorsGroup": null,
  "authorization": {
    "parameters": {
      "loginServer": "",
      "servicePrincipalId": "",
      "tenantId": ""
    },
    "scheme": "ServicePrincipal"
  },
  "createdBy": null,
  "data": {
    "appObjectId": "",
    "azureSpnPermissions": "",
    "azureSpnRoleAssignmentId": "",
    "registryId": "",
    "registrytype": "ACR",
    "spnObjectId": "",
    "subscriptionId": "",
    "subscriptionName": ""
  },
  "description": "",
  "groupScopeId": null,
  "id": "",
  "isReady": true,
  "isShared": false,
  "name": "",
  "type": "dockerregistry",
  "url": "https://hub.docker.com/"
}
'''


def test_json_write(data):
  # Update values in desc_template.json
  template = json.loads(data)  # Loads the json data into a python dictionary
  # print(type(template))
  template["name"] = f"{project_name}"  # Updates the name value
  template["authorization"]["parameters"]["loginServer"] = f"{loginserver}"
  template[
      "description"] = f"Aangemaakt door setup_project tbv {project_name}."
  # Write drsc_template to file drsc_template.json
  with open('output/tmp_template.json', 'w') as outfile:
    json.dump(template, outfile)  # Writes the dictionary to the json file

