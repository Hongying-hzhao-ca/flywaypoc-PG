DO $$
DECLARE 
targetdb text;
BEGIN
targetdb := '${flyway:database}';
IF (targetdb = 'wz_dev') THEN
        revoke select on myuser from dev_user2; 
        drop user dev_user2;
ELSIF (targetdb = 'wz_qa')  THEN
        revoke select on myuser from qa_user2; 
        drop user qa_user2;
ELSIF (targetdb = 'wz_prod')  THEN
        revoke select on myuser from prod_user2; 
        drop user prod_user2;
END IF;
END $$;
