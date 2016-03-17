-- Table: "tblPositions"

-- DROP TABLE "tblPositions";

CREATE TABLE "tblPositions"
(
  "PositionId" smallserial NOT NULL,
  "Name" character varying(2) NOT NULL,
  "SortOrder" smallint NOT NULL,
  CONSTRAINT "tblPositions_pkey" PRIMARY KEY ("PositionId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblPositions"
  OWNER TO ohri;
