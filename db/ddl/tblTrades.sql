-- Table: "tblTrades"

-- DROP TABLE "tblTrades";

CREATE TABLE "tblTrades"
(
  "TradeId" serial NOT NULL,
  "Conditional" character varying(500),
  "Comments" character varying(4000),
  "LastUpdated" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  "State" "TradeState",
  CONSTRAINT "tblTrades_pkey" PRIMARY KEY ("TradeId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTrades"
  OWNER TO ohri;
