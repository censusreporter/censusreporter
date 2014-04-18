--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: subplace; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE subplace (
    code character varying(8) NOT NULL,
    subplace_name character varying(50) NOT NULL,
    mainplace_name character varying(50) NOT NULL,
    mainplace_code character varying(8) NOT NULL,
    ward_code character varying(8) NOT NULL,
    muni_code character varying(8) NOT NULL,
    district_code character varying(8) NOT NULL,
    province_code character varying(3) NOT NULL,
    year character varying(4) NOT NULL
);


ALTER TABLE public.subplace OWNER TO census;

--
-- Data for Name: subplace; Type: TABLE DATA; Schema: public; Owner: census
--

COPY subplace (code, subplace_name, mainplace_name, mainplace_code, ward_code, muni_code, district_code, province_code, year) FROM stdin;
\.


--
-- Name: district_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY subplace
    ADD CONSTRAINT subplace_pkey PRIMARY KEY (code);


--
-- Name: subplace_year_idx; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX subplace_year_idx ON subplace USING btree (year);


--
-- Name: subplace_subplace_name_idx; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX subplace_subplace_name_idx ON subplace USING btree (subplace_name);


--
-- Name: subplace_mainplace_name_idx; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX subplace_mainplace_name_idx ON subplace USING btree (mainplace_name);


--
-- Name: subplace_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY subplace
    ADD CONSTRAINT subplace_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- Name: subplace_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY subplace
    ADD CONSTRAINT subplace_muni_code_fkey FOREIGN KEY (muni_code) REFERENCES municipality(code);


--
-- Name: subplace_district_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY subplace
    ADD CONSTRAINT subplace_district_code_fkey FOREIGN KEY (district_code) REFERENCES district(code);


--
-- Name: subplace_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY subplace
    ADD CONSTRAINT subplace_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: ward_muni_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--



--
-- PostgreSQL database dump complete
--

