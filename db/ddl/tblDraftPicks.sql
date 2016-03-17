-- Table: "tblDraftPicks"

-- DROP TABLE "tblDraftPicks";

CREATE TABLE "tblDraftPicks"
(
  "DraftPickId" serial NOT NULL,
  "OwningTeamId" integer,
  "OriginalTeamId" integer,
  "Round" smallint,
  "RoundPosition" smallint,
  "SeasonId" integer,
  "PlayerId" integer,
  "WhenStart" timestamp with time zone,
  CONSTRAINT "tblDraftPicks_pkey" PRIMARY KEY ("DraftPickId"),
  CONSTRAINT "tblDraftPicks_OriginalTeamId_fkey" FOREIGN KEY ("OriginalTeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblDraftPicks_OwningTeamId_fkey" FOREIGN KEY ("OwningTeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblDraftPicks_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblDraftPicks"
  OWNER TO ohri;
