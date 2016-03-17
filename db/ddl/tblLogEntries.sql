-- Table: "tblLogEntries"

-- DROP TABLE "tblLogEntries";

CREATE TABLE "tblLogEntries"
(
  "LogEntryId" serial NOT NULL,
  "EntryText" character varying(1000),
  "OwnerId" integer,
  "WhenHappened" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  "LogEntryType" "LogEntryType",
  CONSTRAINT "tblLogEntries_pkey" PRIMARY KEY ("LogEntryId"),
  CONSTRAINT "tblLogEntries_OwnerId_fkey" FOREIGN KEY ("OwnerId")
      REFERENCES "tblOwners" ("OwnerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblLogEntries"
  OWNER TO ohri;
