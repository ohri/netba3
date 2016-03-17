-- Table: "tblLineups"

-- DROP TABLE "tblLineups";

CREATE TABLE "tblLineups"
(
  "LineupId" serial NOT NULL,
  "GameId" integer,
  "TeamId" integer,
  "PlayerId" integer,
  "OffensivePoints" integer,
  "DefensivePoints" integer,
  "LineupPosition" smallint,
  "Status" "LineupItemStatus",
  CONSTRAINT "tblLineups_pkey" PRIMARY KEY ("LineupId"),
  CONSTRAINT "tblLineups_GameId_fkey" FOREIGN KEY ("GameId")
      REFERENCES "tblGames" ("GameId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblLineups_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblLineups_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblLineups"
  OWNER TO ohri;
