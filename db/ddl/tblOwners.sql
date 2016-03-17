-- Table: "tblOwners"

-- DROP TABLE "tblOwners";

CREATE TABLE "tblOwners"
(
  "OwnerId" smallserial NOT NULL,
  "FirstName" character varying(50),
  "LastName" character varying(50),
  "Email" character varying(50),
  "Username" character varying(50),
  "Password" character varying(50),
  "IsAdmin" boolean NOT NULL DEFAULT false, -- 
  "TeamId" integer,
  "LastLogin" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  CONSTRAINT "tblOwners_pkey" PRIMARY KEY ("OwnerId"),
  CONSTRAINT "tblOwners_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblOwners"
  OWNER TO ohri;
COMMENT ON COLUMN "tblOwners"."IsAdmin" IS '
';

