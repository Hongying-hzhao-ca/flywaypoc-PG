DO $$
DECLARE 
targetdb text;
BEGIN
targetdb := '${flyway:database}';
IF (targetdb = 'wz_dev') THEN
        create role dev_user2 login password 'password1';
        grant select on myuser to dev_user2; 
ELSIF (targetdb = 'wz_qa')  THEN
        create role qa_user2 login password 'password1';
        grant select on myuser to qa_user2;
ELSIF (targetdb = 'wz_uat')  THEN
        create role qa_user2 login password 'password1';
        grant select on myuser to uat_user2;
ELSIF (targetdb = 'wz_prod')  THEN
        create role prod_user2 login password 'password1';
        grant select on myuser to prod_user2;
END IF;
END $$;
