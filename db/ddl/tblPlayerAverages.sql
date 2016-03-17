-- Table: "tblPlayerAverages"

-- DROP TABLE "tblPlayerAverages";

CREATE TABLE "tblPlayerAverages"
(
  "PlayerAverageId" serial NOT NULL,
  "PlayerId" integer,
  "SeasonId" integer,
  "PointAverage" double precision,
  "TotalGames" smallint,
  "TotalMinutes" integer,
  "LastGamePoints" integer,
  "LastGameDate" date,
  CONSTRAINT "tblPlayerAverages_pkey" PRIMARY KEY ("PlayerAverageId"),
  CONSTRAINT "tblPlayerAverages_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblPlayerAverages_SeasonId_fkey" FOREIGN KEY ("SeasonId")
      REFERENCES "tblSeasons" ("SeasonId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblPlayerAverages"
  OWNER TO ohri;
