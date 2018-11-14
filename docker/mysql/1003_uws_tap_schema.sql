-- Clean up any previous messes.
DELETE FROM tap_schema.columns11 where table_name like 'uws.uws.Job';
DELETE FROM tap_schema.tables11 where table_name like 'uws.uws.Job';
DELETE FROM tap_schema.schemas11 where schema_name like 'uws.uws';

-- Insert the tap_schema metadata about this table and its columns.
INSERT INTO tap_schema.schemas11 (schema_name, description, utype)
  VALUES ('uws.uws', 'UWS Metadata', NULL);

INSERT INTO tap_schema.tables11 (schema_name, table_name, table_type, description, utype, table_index)
  VALUES ('uws.uws', 'uws.uws.Job', 'table', 'Job history table.', NULL, 1);

INSERT
  INTO tap_schema.columns11 (table_name, column_name, utype, ucd, unit, description, datatype, arraysize, size, principal, indexed, std, column_index, id) VALUES
  ('uws.uws.Job', 'jobid', NULL, '', NULL, 'Job ID', 'VARCHAR', NULL, NULL, 0, 1, 0, 1, NULL);
