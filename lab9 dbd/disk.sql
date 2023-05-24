SELECT 
pg_database_size('lab9') AS normal,
pg_size_pretty(pg_database_size('lab9')) as KB;
