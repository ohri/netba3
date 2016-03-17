-- Table: "tblNBATeams"

-- DROP TABLE "tblNBATeams";

CREATE TABLE "tblNBATeams"
(
  "NBATeamId" smallserial NOT NULL,
  "Name" character varying(50) NOT NULL,
  "Abbreviation" character varying(4) NOT NULL,
  CONSTRAINT "tblNBATeams_pkey" PRIMARY KEY ("NBATeamId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblNBATeams"
  OWNER TO ohri;
