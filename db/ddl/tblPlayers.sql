-- Table: "tblPlayers"

-- DROP TABLE "tblPlayers";

CREATE TABLE "tblPlayers"
(
  "PlayerId" serial NOT NULL,
  "FirstName" character varying(50),
  "LastName" character varying(50),
  "TeamId" integer,
  "PositionId" integer,
  "NBATeamId" integer,
  "Alias" character varying(50),
  "ESPNId" integer,
  "IsOnIR" boolean DEFAULT false,
  "IsRookie" boolean DEFAULT false,
  "AddedToTradeBlock" timestamp with time zone,
  CONSTRAINT "tblPlayers_pkey" PRIMARY KEY ("PlayerId"),
  CONSTRAINT "tblPlayer_NBATeamId_fkey" FOREIGN KEY ("NBATeamId")
      REFERENCES "tblNBATeams" ("NBATeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblPlayer_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblPlayers_PositionId_fkey" FOREIGN KEY ("PositionId")
      REFERENCES "tblPositions" ("PositionId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblPlayers"
  OWNER TO ohri;
