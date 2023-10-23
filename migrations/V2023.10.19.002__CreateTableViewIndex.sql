CREATE TABLE public.accounts (
    user_id integer ,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    last_login timestamp without time zone
);
ALTER TABLE public.accounts ADD CONSTRAINT accounts_pkey PRIMARY KEY (user_id);

CREATE UNIQUE INDEX accounts_username_key ON public.accounts USING btree (username);

CREATE VIEW public.accounts_view (username, password) AS SELECT accounts.username,
    accounts.password
   FROM public.accounts;
