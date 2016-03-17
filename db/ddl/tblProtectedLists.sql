-- Table: "tblProtectedLists"

-- DROP TABLE "tblProtectedLists";

CREATE TABLE "tblProtectedLists"
(
  "ProtectedListId" serial NOT NULL,
  "UpcomingSeasonId" integer NOT NULL,
  "PlayerId" integer NOT NULL,
  "TeamId" integer NOT NULL,
  CONSTRAINT "tblProtectedLists_pkey" PRIMARY KEY ("ProtectedListId"),
  CONSTRAINT "tblProtectedLists_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblProtectedLists_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblProtectedLists_UpcomingSeasonId_fkey" FOREIGN KEY ("UpcomingSeasonId")
      REFERENCES "tblSeasons" ("SeasonId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblProtectedLists"
  OWNER TO ohri;
