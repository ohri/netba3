-- Type: "AlertType"

-- DROP TYPE "AlertType";

CREATE TYPE "AlertType" AS ENUM
   ('Player must be activated before next game.');
ALTER TYPE "AlertType"
  OWNER TO ohri;
