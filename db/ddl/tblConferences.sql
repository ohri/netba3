-- Table: "tblConferences"

-- DROP TABLE "tblConferences";

CREATE TABLE "tblConferences"
(
  "ConferenceId" smallserial NOT NULL,
  "Name" character varying(50),
  CONSTRAINT "tblConferences_pkey" PRIMARY KEY ("ConferenceId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblConferences"
  OWNER TO ohri;
