-- Table: "tblWeeks"

-- DROP TABLE "tblWeeks";

CREATE TABLE "tblWeeks"
(
  "WeekId" serial NOT NULL,
  "StartDate" date,
  "EndDate" date,
  "SeasonId" integer,
  "Week" character varying(3),
  "IsPostseason" boolean NOT NULL DEFAULT false,
  CONSTRAINT "tblWeeks_pkey" PRIMARY KEY ("WeekId"),
  CONSTRAINT "tblWeeks_SeasonId_fkey" FOREIGN KEY ("SeasonId")
      REFERENCES "tblSeasons" ("SeasonId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblWeeks"
  OWNER TO ohri;
