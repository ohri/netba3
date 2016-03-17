-- Table: "tblSeasons"

-- DROP TABLE "tblSeasons";

CREATE TABLE "tblSeasons"
(
  "SeasonId" smallserial NOT NULL,
  "Season" integer,
  "StartDate" date,
  "EndDate" date,
  CONSTRAINT "tblSeasons_pkey" PRIMARY KEY ("SeasonId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblSeasons"
  OWNER TO ohri;
