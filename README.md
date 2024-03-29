# splunk_uf_tools

Run a CLI command


Delete files from an install of Splunk using a deployment server.
This app can be used to delete files, usually configuration files, from a Splunk instance via a deployment server when the settings are not contained within an app deployed from the deployment server. The obvious example is $SPLUNK_HOME/etc/system/local/deploymentclient.conf, but this app can be used to delete any file the Splunk process has sufficient permissions to. These scripts will confirm the existance of a file before deleting the target file. This should help prevent the situation where a vital configuration file is removed before a deployed app is in place.

Example invocations of the script within an inputs.conf file can be found within the default directory in the app. The script can be deployed two ways. 
1. Modify (and optionally rename) the app, by creating an inputs.conf in the local folder to suit your needs. 
2. Deploy the app as-is, then create a separate barebones app, that only includes an inputs.conf which invokes one of the scripts. 

Examples of how to run the script can be found within default/inputs.conf.
"index" must be set to a value that fits your environment.
"interval = -1" will cause the script to run after every restart of splunkd. The app is should be set to 'Restart Splunkd' when creating the server class on the deployment server. After the target file is deleted the app should be uninstalled.
The script expects two parameters, the full path of a file to confirm first, followed by the full path of a file to delete.

To load the app, navigate to $SPLUNK_HOME/etc/deployment-apps and clone this repository.
