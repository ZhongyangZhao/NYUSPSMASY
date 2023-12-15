create database Sentrack;
use Sentrack;
CREATE TABLE sm_carrier (
    carrier_id   DOUBLE NOT NULL,
    carrier_name VARCHAR(50)
);

ALTER TABLE sm_carrier ADD CONSTRAINT sm_carrier_pk PRIMARY KEY ( carrier_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_company (
    company_id   DOUBLE NOT NULL,
    company_name VARCHAR(50)
);

ALTER TABLE sm_company ADD CONSTRAINT sm_company_pk PRIMARY KEY ( company_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_customer (
    customer_id   DOUBLE NOT NULL,
    customer_name VARCHAR(20)
);

ALTER TABLE sm_customer ADD CONSTRAINT sm_customer_pk PRIMARY KEY ( customer_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_deliver (
    deliver_id      DOUBLE NOT NULL,
    deliver_address VARCHAR(50)
);

ALTER TABLE sm_deliver ADD CONSTRAINT table_10_pk PRIMARY KEY ( deliver_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_order (
    order_id                DOUBLE NOT NULL,
    order_eta               DATETIME,
    `order_ LFD`            DATETIME,
    order_weight            VARCHAR(50),
    order_billing_date      DATETIME,
    sm_company_company_id   DOUBLE NOT NULL,
    sm_customer_customer_id DOUBLE NOT NULL,
    sm_carrier_carrier_id   DOUBLE NOT NULL,
    sm_pick_up_pick_up_id   DOUBLE NOT NULL,
    sm_status_status_id     DOUBLE NOT NULL,
    sm_deliver_deliver_id   DOUBLE NOT NULL
);

ALTER TABLE sm_order ADD CONSTRAINT sm_order_pk PRIMARY KEY ( order_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_pick_up (
    pick_up_id      DOUBLE NOT NULL,
    pick_up_address VARCHAR(50)
);

ALTER TABLE sm_pick_up ADD CONSTRAINT sm_pick_up_pk PRIMARY KEY ( pick_up_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE sm_status (
    status_id   DOUBLE NOT NULL,
    status_name VARCHAR(50)
);

ALTER TABLE sm_status ADD CONSTRAINT table_12_pk PRIMARY KEY ( status_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_carrier_fk FOREIGN KEY ( sm_carrier_carrier_id )
        REFERENCES sm_carrier ( carrier_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_company_fk FOREIGN KEY ( sm_company_company_id )
        REFERENCES sm_company ( company_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_customer_fk FOREIGN KEY ( sm_customer_customer_id )
        REFERENCES sm_customer ( customer_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_deliver_fk FOREIGN KEY ( sm_deliver_deliver_id )
        REFERENCES sm_deliver ( deliver_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_pick_up_fk FOREIGN KEY ( sm_pick_up_pick_up_id )
        REFERENCES sm_pick_up ( pick_up_id );

ALTER TABLE sm_order
    ADD CONSTRAINT sm_order_sm_status_fk FOREIGN KEY ( sm_status_status_id )
        REFERENCES sm_status ( status_id );