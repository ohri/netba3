-- Table: "tblTradeTeams"

-- DROP TABLE "tblTradeTeams";

CREATE TABLE "tblTradeTeams"
(
  "TradeTeamId" serial NOT NULL,
  "TeamId" integer NOT NULL,
  "Confimed" boolean DEFAULT false,
  "Rejected" boolean DEFAULT false,
  "TradeId" integer NOT NULL,
  CONSTRAINT "tblTradeTeams_pkey" PRIMARY KEY ("TradeTeamId"),
  CONSTRAINT "tblTradeTeams_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblTradeTeams_TradeId_fkey" FOREIGN KEY ("TradeId")
      REFERENCES "tblTrades" ("TradeId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTradeTeams"
  OWNER TO ohri;
