-- Table: "tblGames"

-- DROP TABLE "tblGames";

CREATE TABLE "tblGames"
(
  "GameId" serial NOT NULL,
  "VisitingTeamId" integer NOT NULL,
  "HomeTeamId" integer NOT NULL,
  "WeekId" integer,
  "NumGames" smallint NOT NULL,
  "IsConsolationGame" boolean NOT NULL DEFAULT false,
  "Overtime" boolean NOT NULL DEFAULT false,
  CONSTRAINT "tblGames_pkey" PRIMARY KEY ("GameId"),
  CONSTRAINT "tblGames_HomeTeamId_fkey" FOREIGN KEY ("HomeTeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblGames_VisitingTeamId_fkey" FOREIGN KEY ("VisitingTeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblGames_WeekId_fkey" FOREIGN KEY ("WeekId")
      REFERENCES "tblWeeks" ("WeekId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblGames"
  OWNER TO ohri;
