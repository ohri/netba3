-- Type: "TransactionType"

-- DROP TYPE "TransactionType";

CREATE TYPE "TransactionType" AS ENUM
   ('Inactivate',
    'Activate',
    'Sign',
    'Cut');
ALTER TYPE "TransactionType"
  OWNER TO ohri;
