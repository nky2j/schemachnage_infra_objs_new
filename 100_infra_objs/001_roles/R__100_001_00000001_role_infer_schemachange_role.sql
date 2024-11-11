/*
GRANT ROLE  {{ env }}_INFER_SCHEMACHANGE_ROLE TO USER {{ env }}_INFER_SCHEMACHANGE_USER;
GRANT USAGE ON WAREHOUSE {{ env }}_SCHEMACHANGE_WH TO ROLE {{ env }}_INFER_SCHEMACHANGE_ROLE;
*/
{% if env == "DEV" %}
  CREATE ROLE IF NOT EXISTS {{ env }}_INFER_SCHEMACHANGE_ROLE;
{% else %}
  Select 'Any env other than dev does not need developer_func role.';
{% endif %}

