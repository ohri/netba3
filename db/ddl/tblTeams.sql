-- Table: "tblTeams"

-- DROP TABLE "tblTeams";

CREATE TABLE "tblTeams"
(
  "Name" character varying(50),
  "Abbreviation" character varying(4),
  "TeamId" smallserial NOT NULL,
  CONSTRAINT "tblTeams_pkey" PRIMARY KEY ("TeamId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTeams"
  OWNER TO ohri;
