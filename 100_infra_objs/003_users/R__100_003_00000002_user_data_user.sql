CREATE OR REPLACE USER  {{ env }}_DATA_SCHEMACHANGE_USER
MUST_CHANGE_PASSWORD = TRUE
PASSWORD = 'ABC'
COMMENT = 'This is a dummy uat user for SDI schemachange tasks';