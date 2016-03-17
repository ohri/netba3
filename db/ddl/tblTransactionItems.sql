-- Table: "tblTransactionItems"

-- DROP TABLE "tblTransactionItems";

CREATE TABLE "tblTransactionItems"
(
  "TransactionItemId" serial NOT NULL,
  "TransactionId" integer NOT NULL,
  "PlayerId" integer NOT NULL,
  "SortOrder" smallint NOT NULL,
  "Result" character varying(50),
  "Successful" boolean,
  "TransactionType" "TransactionType",
  CONSTRAINT "tblTransactionItems_pkey" PRIMARY KEY ("TransactionItemId"),
  CONSTRAINT "tblTransactionItems_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblTransactionItems_TransactionId_fkey" FOREIGN KEY ("TransactionId")
      REFERENCES "tblTransactions" ("TransactionId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTransactionItems"
  OWNER TO ohri;
