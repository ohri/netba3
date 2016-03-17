-- Type: "LogEntryType"

-- DROP TYPE "LogEntryType";

CREATE TYPE "LogEntryType" AS ENUM
   ('Lineup Submission',
    'Failed Login',
    'Login',
    'Stats Processed',
    'System Error',
    'Week Finalized',
    'Trade Updated',
    'Transaction Submitted',
    'Transactions Processed',
    'Trade Finalized',
    'Draft Pick Made',
    'Player Edited',
    'News Posted',
    'Alert Registered');
ALTER TYPE "LogEntryType"
  OWNER TO ohri;
