Index:


FilterJSONobject xml:  take a large json array of objects, and find the object missing the string "internalId" from the "Fields" field of the object array.

pdf_file1: This Mule XML configuration takes a text file as the message source, transforms the input stream object to a string, and prints the string to a PDF file that is output to the project folder.  (It uses iTextPdf to convert a text file to a PDF).  No schema is necessary.

integration/updates xml files:  These are the core xml config files for a mule project that succesfully will sync salesforce accounts to database accounts( in this case using MySQL ).  I used Mule Anypoint Studio 8.2 EE free developer version, and Salesforce Developer account.  Need to change the login and config info for the Database and Salesforce connectors to match your account info.   
