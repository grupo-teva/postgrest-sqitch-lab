-- Deploy lab-postgrest-sqitch:anonymous_role to pg
-- requires: appschema

BEGIN;

CREATE USER "anon";
GRANT USAGE ON SCHEMA "public" TO "anon";
ALTER DEFAULT PRIVILEGES IN SCHEMA "public" GRANT SELECT ON TABLES TO "anon";
GRANT SELECT ON ALL SEQUENCES IN SCHEMA "public" TO "anon";
GRANT SELECT ON ALL TABLES IN SCHEMA "public" TO "anon";

COMMIT;
