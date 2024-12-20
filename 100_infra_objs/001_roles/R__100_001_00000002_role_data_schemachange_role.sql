--GRANT USAGE  ON WAREHOUSE {{ env }}_SCHEMACHANGE_WH TO ROLE {{ env }}_DATA_SCHEMACHANGE_ROLE;
--GRANT CREATE DATABASE ON ACCOUNT TO ROLE {{ env }}_DATA_SCHEMACHANGE_ROLE;
--GRANT ROLE {{ env }}_DATA_SCHEMACHANGE_ROLE TO USER {{ env }}_DATA_SCHEMACHANGE_USER;
--GRANT ROLE {{ env }}_DATA_SCHEMACHANGE_ROLE TO  USER {{ main_user }};
{% if env == "DEV" %}
  CREATE ROLE  IF NOT EXISTS {{ env }}_DATA_SCHEMACHANGE_ROLE;
{% else %}
  Select 'Any env other than dev does not need developer_func role.';
{% endif %}
