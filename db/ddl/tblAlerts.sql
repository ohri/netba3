-- Table: "tblAlerts"

-- DROP TABLE "tblAlerts";

CREATE TABLE "tblAlerts"
(
  "AlertId" smallserial NOT NULL,
  "ReferenceId" integer,
  "TeamId" integer,
  "Message" character varying(100),
  "AlertType" "AlertTypes",
  CONSTRAINT "tblAlerts_pkey" PRIMARY KEY ("AlertId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblAlerts"
  OWNER TO ohri;
