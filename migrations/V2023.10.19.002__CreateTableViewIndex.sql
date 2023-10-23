CREATE TABLE public.myaccounts (
    user_id integer ,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    last_login timestamp without time zone
);
ALTER TABLE public.myaccounts ADD CONSTRAINT accounts_pkey PRIMARY KEY (user_id);

CREATE UNIQUE INDEX myaccounts_username_key ON public.myaccounts USING btree (username);

CREATE VIEW public.myaccounts_view (username, password) AS SELECT myaccounts.username,
    myaccounts.password
   FROM public.myaccounts;
