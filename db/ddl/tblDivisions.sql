-- Table: "tblDivisions"

-- DROP TABLE "tblDivisions";

CREATE TABLE "tblDivisions"
(
  "DivisionId" smallserial NOT NULL,
  "ConferenceId" integer NOT NULL,
  "Name" character varying(50) NOT NULL,
  CONSTRAINT "tblDivisions_pkey" PRIMARY KEY ("DivisionId"),
  CONSTRAINT "tblDivisions_ConferenceId_fkey" FOREIGN KEY ("ConferenceId")
      REFERENCES "tblConferences" ("ConferenceId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblDivisions"
  OWNER TO ohri;
