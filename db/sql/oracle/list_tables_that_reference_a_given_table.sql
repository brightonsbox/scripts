SELECT table_name, constraint_name, status, owner
FROM all_constraints
WHERE r_owner = '<SCHEMA_NAME_HERE>'
AND constraint_type = 'R'
AND r_constraint_name IN
 (
   SELECT constraint_name FROM all_constraints
   WHERE constraint_type IN ('P', 'U')
   AND table_name = '<TABLE_NAME>'
   AND owner = '<SCHEMA_NAME_HERE>'
 )
ORDER BY table_name, constraint_name;
