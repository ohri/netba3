-- Table: "tblTradeItems"

-- DROP TABLE "tblTradeItems";

CREATE TABLE "tblTradeItems"
(
  "TradeItemId" serial NOT NULL,
  "TeamId" integer NOT NULL,
  "PlayerId" integer,
  "PickId" integer,
  "TradeId" integer NOT NULL,
  CONSTRAINT "tblTradeItems_pkey" PRIMARY KEY ("TradeItemId"),
  CONSTRAINT "tblTradeItems_PickId_fkey" FOREIGN KEY ("PickId")
      REFERENCES "tblDraftPicks" ("DraftPickId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblTradeItems_PlayerId_fkey" FOREIGN KEY ("PlayerId")
      REFERENCES "tblPlayers" ("PlayerId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblTradeItems_TeamId_fkey" FOREIGN KEY ("TeamId")
      REFERENCES "tblTeams" ("TeamId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "tblTradeItems_TradeId_fkey" FOREIGN KEY ("TradeId")
      REFERENCES "tblTrades" ("TradeId") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblTradeItems"
  OWNER TO ohri;
