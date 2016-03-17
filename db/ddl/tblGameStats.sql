-- Table: "tblGameStats"

-- DROP TABLE "tblGameStats";

CREATE TABLE "tblGameStats"
(
  "GameStatId" serial NOT NULL,
  "GameId" integer,
  "TeamId" integer,
  "FinalScore" integer,
  "RawOffense" integer,
  "RawDefense" integer,
  "Games" smallint,
  CONSTRAINT "tblGameStats_pkey" PRIMARY KEY ("GameStatId"),
  CONSTRAINT "tblGameStats_GameId_fkey" FOREIGN KEY ("GameId")
      REFERENCES "tblGames" ("GameId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblGameStats_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblGameStats"
  OWNER TO ohri;
