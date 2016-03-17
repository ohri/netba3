-- Table: "tblPlayerHistory"

-- DROP TABLE "tblPlayerHistory";

CREATE TABLE "tblPlayerHistory"
(
  "PlayerHistoryId" serial NOT NULL,
  "PlayerId" integer,
  "ActingTeamId" integer,
  "Narrative" character varying(100),
  "RecordDate" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  "HistoryType" "PlayerHistoryType",
  CONSTRAINT "tblPlayerHistory_pkey" PRIMARY KEY ("PlayerHistoryId"),
  CONSTRAINT "tblPlayerHistory_ActingTeamId_fkey" FOREIGN KEY ("ActingTeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblPlayerHistory_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblPlayerHistory"
  OWNER TO ohri;
