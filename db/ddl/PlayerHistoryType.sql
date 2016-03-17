-- Type: "PlayerHistoryType"

-- DROP TYPE "PlayerHistoryType";

CREATE TYPE "PlayerHistoryType" AS ENUM
   ('Drafted',
    'Signed',
    'Cut',
    'Acquired',
    'Protected',
    'Info Changed');
ALTER TYPE "PlayerHistoryType"
  OWNER TO ohri;
