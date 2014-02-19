smsClient
=========

Tool for sending a message to portal without the need of using your phone

Instructions
============

Insert the required credentials into the settings.yml file.

The tool allows you to configure multiple environments like below.

configuration:
  
  environment:
    production: ""
    staging: ""
    localMachine: ""
    qaMachine: ""
    
    
Use
===

use the following command to run the tool

ruby smsClient.rb [environment]


