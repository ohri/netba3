-- Table: "tblNews"

-- DROP TABLE "tblNews";

CREATE TABLE "tblNews"
(
  "NewsId" serial NOT NULL,
  "Submitter" character varying(50),
  "Title" character varying(100),
  "Content" character varying(2000),
  "WhenSubmitted" timestamp with time zone DEFAULT ('now'::text)::timestamp without time zone,
  CONSTRAINT "tblNews_pkey" PRIMARY KEY ("NewsId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "tblNews"
  OWNER TO ohri;
