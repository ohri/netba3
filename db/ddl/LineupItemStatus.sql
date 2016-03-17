-- Type: "LineupItemStatus"

-- DROP TYPE "LineupItemStatus";

CREATE TYPE "LineupItemStatus" AS ENUM
   ('S',
    'B',
    'G');
ALTER TYPE "LineupItemStatus"
  OWNER TO ohri;
