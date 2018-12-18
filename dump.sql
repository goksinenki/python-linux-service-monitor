
--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: monitor_table; Type: TABLE; Schema: public; Owner: goksin; Tablespace: 
--

CREATE TABLE public.monitor_table (
    datetime text,
    servicename text,
    status text
);


ALTER TABLE public.monitor_table OWNER TO goksin;

--
-- Data for Name: monitor_table; Type: TABLE DATA; Schema: public; Owner: goksin
--

INSERT INTO public.monitor_table VALUES ('2018/11/30 16:38:15', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 16:48:10', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:04:16', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:05:32', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:07:12', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:10:57', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:30:20', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:40:46', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:41:23', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:42:54', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:50:15', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:50:37', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:52:25', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 17:54:28', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:22:48', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:23:42', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:24:10', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:26:03', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:27:38', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:29:14', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:31:19', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:33:13', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:33:51', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:35:22', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:36:04', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:36:49', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:37:23', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:38:36', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:39:12', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:41:03', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:42:44', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:43:58', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:45:35', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 18:49:29', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:05:23', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:05:50', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:06:38', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:17:25', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:17:25', 'Textractor', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:20:47', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:20:47', 'Textractor', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:26:01', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:26:01', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:27:38', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:27:38', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:28:27', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:28:27', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:29:34', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:29:34', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:30:49', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:30:49', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:33:07', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:33:07', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:35:28', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:35:28', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:38:26', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:38:26', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:39:08', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:39:08', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:41:26', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:41:26', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:57:23', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/11/30 19:57:23', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:09:51', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:09:51', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:10:21', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:10:21', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:12:14', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:12:14', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:17:26', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:17:26', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:20:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:20:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:21:46', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:21:46', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:22:43', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:22:43', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:24:35', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:24:35', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:27:38', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:27:38', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:29:13', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:29:13', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:30:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:30:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:36:22', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:36:22', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:39:00', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:39:00', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:40:02', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:40:02', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:41:38', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:41:38', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:44:21', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:45:03', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:47:42', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:48:18', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:48:18', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:49:55', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:50:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:50:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:49:55', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:52:09', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:52:09', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:53:44', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:53:44', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:57:29', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:57:29', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:00:02', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:00:02', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:59:59', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 18:59:59', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:02:25', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:02:25', 'httpd', 'UP');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:03:40', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:03:40', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:03:57', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:03:57', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:04:38', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:04:38', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:05:00', 'Textractor', 'OFF');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:05:00', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:06:32', 'Textractor', 'ON');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:06:32', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:10:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:10:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:20:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:20:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:30:02', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:30:02', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:40:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:40:01', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:50:02', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 19:50:02', 'httpd', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 20:00:01', 'Textractor', 'DOWN');
INSERT INTO public.monitor_table VALUES ('2018/12/01 20:00:01', 'httpd', 'DOWN');


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

