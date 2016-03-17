-- Table: "tblPlayerPerformances"

-- DROP TABLE "tblPlayerPerformances";

CREATE TABLE "tblPlayerPerformances"
(
  "PlayerPerformanceId" serial NOT NULL,
  "PlayerId" integer NOT NULL,
  "GameDate" date NOT NULL,
  "GameMinutes" smallint,
  "NetbaOffense" smallint,
  "NetbaDefense" smallint,
  "SeasonId" integer,
  "Assists" smallint,
  "Blocks" smallint,
  "DefRebounds" smallint,
  "OffRebounds" smallint,
  "Steals" smallint,
  "FTMade" smallint,
  "FTAttempts" smallint,
  "FGMade" smallint,
  "FGAttempts" smallint,
  "ThreeMade" smallint,
  "ThreeAttempts" smallint,
  "Fouls" smallint,
  "PlusMinus" smallint,
  "Turnovers" smallint,
  CONSTRAINT "tblPlayerPerformances_pkey" PRIMARY KEY ("PlayerPerformanceId"),
  CONSTRAINT "tblPlayerPerformances_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblPlayerPerformances_SeasonId_fkey" FOREIGN KEY ("SeasonId")
      REFERENCES "tblSeasons" ("SeasonId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblPlayerPerformances"
  OWNER TO ohri;
