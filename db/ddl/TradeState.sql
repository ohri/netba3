-- Type: "TradeState"

-- DROP TYPE "TradeState";

CREATE TYPE "TradeState" AS ENUM
   ('New',
    'Proposed',
    'Completed',
    'Rejected');
ALTER TYPE "TradeState"
  OWNER TO ohri;
