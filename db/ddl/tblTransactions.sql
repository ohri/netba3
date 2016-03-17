-- Table: "tblTransactions"

-- DROP TABLE "tblTransactions";

CREATE TABLE "tblTransactions"
(
  "TransactionId" serial NOT NULL,
  "TeamId" integer NOT NULL,
  "CutAtLeast" smallint,
  "SignAtLeast" smallint,
  "WhenSubmitted" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  "WhenProcessed" timestamp with time zone,
  CONSTRAINT "tblTransactions_pkey" PRIMARY KEY ("TransactionId"),
  CONSTRAINT "tblTransactions_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTransactions"
  OWNER TO ohri;
