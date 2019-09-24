--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_id character varying NOT NULL,
    resource_type character varying NOT NULL,
    author_id integer,
    author_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.active_admin_comments OWNER TO ilya;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO ilya;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.admin_users OWNER TO ilya;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO ilya;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: candidates; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.candidates (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    middle_name character varying,
    email character varying,
    phone bigint,
    notes text,
    attachment character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.candidates OWNER TO ilya;

--
-- Name: candidates_events; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.candidates_events (
    id integer NOT NULL,
    candidate_id integer,
    event_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.candidates_events OWNER TO ilya;

--
-- Name: candidates_events_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.candidates_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.candidates_events_id_seq OWNER TO ilya;

--
-- Name: candidates_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.candidates_events_id_seq OWNED BY public.candidates_events.id;


--
-- Name: candidates_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.candidates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.candidates_id_seq OWNER TO ilya;

--
-- Name: candidates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.candidates_id_seq OWNED BY public.candidates.id;


--
-- Name: commissions; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.commissions (
    id integer NOT NULL,
    company_id integer,
    percent integer DEFAULT 10,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.commissions OWNER TO ilya;

--
-- Name: commissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.commissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commissions_id_seq OWNER TO ilya;

--
-- Name: commissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.commissions_id_seq OWNED BY public.commissions.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.companies (
    id integer NOT NULL,
    name character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.companies OWNER TO ilya;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO ilya;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    handler text NOT NULL,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    scheduled_at timestamp without time zone,
    last_run timestamp without time zone,
    owner_type character varying,
    owner_id integer
);


ALTER TABLE public.delayed_jobs OWNER TO ilya;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.delayed_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO ilya;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying,
    description text,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO ilya;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO ilya;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: exercise_lists; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.exercise_lists (
    id integer NOT NULL,
    exercise character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.exercise_lists OWNER TO ilya;

--
-- Name: exercise_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.exercise_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exercise_lists_id_seq OWNER TO ilya;

--
-- Name: exercise_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.exercise_lists_id_seq OWNED BY public.exercise_lists.id;


--
-- Name: exercises; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.exercises (
    id integer NOT NULL,
    exercise_list_id integer,
    user_id integer,
    weight character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.exercises OWNER TO ilya;

--
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.exercises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exercises_id_seq OWNER TO ilya;

--
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.exercises_id_seq OWNED BY public.exercises.id;


--
-- Name: internal_accounts; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.internal_accounts (
    id integer NOT NULL,
    account_type integer,
    name character varying,
    description character varying,
    active boolean,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.internal_accounts OWNER TO ilya;

--
-- Name: internal_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.internal_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internal_accounts_id_seq OWNER TO ilya;

--
-- Name: internal_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.internal_accounts_id_seq OWNED BY public.internal_accounts.id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.invoices (
    id integer NOT NULL,
    company_id integer,
    date date,
    refference_id integer,
    type_of_calculation character varying,
    description character varying,
    agency character varying,
    freelancer character varying,
    team character varying,
    account_name character varying,
    amount integer,
    amount_in_local integer,
    currency character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    internal_account_id integer NOT NULL
);


ALTER TABLE public.invoices OWNER TO ilya;

--
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.invoices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_id_seq OWNER TO ilya;

--
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;


--
-- Name: mail_server_emails; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.mail_server_emails (
    id integer NOT NULL,
    user_id integer,
    address_from text,
    address_to text,
    body text,
    deleted_at timestamp without time zone
);


ALTER TABLE public.mail_server_emails OWNER TO ilya;

--
-- Name: mail_server_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.mail_server_emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_server_emails_id_seq OWNER TO ilya;

--
-- Name: mail_server_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.mail_server_emails_id_seq OWNED BY public.mail_server_emails.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO ilya;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO ilya;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: project_reports; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.project_reports (
    id integer NOT NULL,
    company_id integer,
    user_id integer,
    tracking_time time without time zone,
    earnings numeric(8,2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.project_reports OWNER TO ilya;

--
-- Name: project_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.project_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_reports_id_seq OWNER TO ilya;

--
-- Name: project_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.project_reports_id_seq OWNED BY public.project_reports.id;


--
-- Name: rates; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.rates (
    id integer NOT NULL,
    company_id integer,
    amount integer DEFAULT 5,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.rates OWNER TO ilya;

--
-- Name: rates_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rates_id_seq OWNER TO ilya;

--
-- Name: rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.rates_id_seq OWNED BY public.rates.id;


--
-- Name: rss_readers; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.rss_readers (
    id integer NOT NULL,
    url character varying,
    email character varying,
    time_last_news timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.rss_readers OWNER TO ilya;

--
-- Name: rss_readers_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.rss_readers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rss_readers_id_seq OWNER TO ilya;

--
-- Name: rss_readers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.rss_readers_id_seq OWNED BY public.rss_readers.id;


--
-- Name: schedulers; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.schedulers (
    id integer NOT NULL,
    type character varying NOT NULL,
    task text NOT NULL,
    "time" time without time zone,
    day character varying,
    frequency character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.schedulers OWNER TO ilya;

--
-- Name: schedulers_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.schedulers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedulers_id_seq OWNER TO ilya;

--
-- Name: schedulers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.schedulers_id_seq OWNED BY public.schedulers.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ilya;

--
-- Name: transactions; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    company_id integer,
    name character varying,
    type character varying,
    info json,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    amount real,
    internal_account_id integer NOT NULL
);


ALTER TABLE public.transactions OWNER TO ilya;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO ilya;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: user_events; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.user_events (
    id integer NOT NULL,
    user_id integer,
    event character varying,
    start timestamp without time zone,
    "end" timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.user_events OWNER TO ilya;

--
-- Name: user_events_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.user_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_events_id_seq OWNER TO ilya;

--
-- Name: user_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.user_events_id_seq OWNED BY public.user_events.id;


--
-- Name: user_scores; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.user_scores (
    id integer NOT NULL,
    user_id integer,
    value numeric(8,2),
    note text,
    type integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.user_scores OWNER TO ilya;

--
-- Name: user_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.user_scores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_scores_id_seq OWNER TO ilya;

--
-- Name: user_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.user_scores_id_seq OWNED BY public.user_scores.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone,
    authentication_token character varying,
    role integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    status integer DEFAULT 0,
    slack_name character varying,
    deleted_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO ilya;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ilya;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: wiki_page_versions; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.wiki_page_versions (
    id integer NOT NULL,
    page_id integer NOT NULL,
    updator_id integer,
    number integer,
    comment character varying,
    path character varying,
    title character varying,
    content text,
    updated_at timestamp without time zone
);


ALTER TABLE public.wiki_page_versions OWNER TO ilya;

--
-- Name: wiki_page_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.wiki_page_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_page_versions_id_seq OWNER TO ilya;

--
-- Name: wiki_page_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.wiki_page_versions_id_seq OWNED BY public.wiki_page_versions.id;


--
-- Name: wiki_pages; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.wiki_pages (
    id integer NOT NULL,
    creator_id integer,
    updator_id integer,
    path character varying,
    title character varying,
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.wiki_pages OWNER TO ilya;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.wiki_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_pages_id_seq OWNER TO ilya;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.wiki_pages_id_seq OWNED BY public.wiki_pages.id;


--
-- Name: working_times; Type: TABLE; Schema: public; Owner: ilya
--

CREATE TABLE public.working_times (
    id integer NOT NULL,
    user_id integer,
    status_change_date timestamp without time zone,
    labor_hours integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.working_times OWNER TO ilya;

--
-- Name: working_times_id_seq; Type: SEQUENCE; Schema: public; Owner: ilya
--

CREATE SEQUENCE public.working_times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.working_times_id_seq OWNER TO ilya;

--
-- Name: working_times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ilya
--

ALTER SEQUENCE public.working_times_id_seq OWNED BY public.working_times.id;


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: candidates id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.candidates ALTER COLUMN id SET DEFAULT nextval('public.candidates_id_seq'::regclass);


--
-- Name: candidates_events id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.candidates_events ALTER COLUMN id SET DEFAULT nextval('public.candidates_events_id_seq'::regclass);


--
-- Name: commissions id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.commissions ALTER COLUMN id SET DEFAULT nextval('public.commissions_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: delayed_jobs id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: exercise_lists id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.exercise_lists ALTER COLUMN id SET DEFAULT nextval('public.exercise_lists_id_seq'::regclass);


--
-- Name: exercises id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.exercises ALTER COLUMN id SET DEFAULT nextval('public.exercises_id_seq'::regclass);


--
-- Name: internal_accounts id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.internal_accounts ALTER COLUMN id SET DEFAULT nextval('public.internal_accounts_id_seq'::regclass);


--
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- Name: mail_server_emails id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.mail_server_emails ALTER COLUMN id SET DEFAULT nextval('public.mail_server_emails_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: project_reports id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.project_reports ALTER COLUMN id SET DEFAULT nextval('public.project_reports_id_seq'::regclass);


--
-- Name: rates id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.rates ALTER COLUMN id SET DEFAULT nextval('public.rates_id_seq'::regclass);


--
-- Name: rss_readers id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.rss_readers ALTER COLUMN id SET DEFAULT nextval('public.rss_readers_id_seq'::regclass);


--
-- Name: schedulers id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.schedulers ALTER COLUMN id SET DEFAULT nextval('public.schedulers_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: user_events id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.user_events ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: user_scores id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.user_scores ALTER COLUMN id SET DEFAULT nextval('public.user_scores_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: wiki_page_versions id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.wiki_page_versions ALTER COLUMN id SET DEFAULT nextval('public.wiki_page_versions_id_seq'::regclass);


--
-- Name: wiki_pages id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.wiki_pages ALTER COLUMN id SET DEFAULT nextval('public.wiki_pages_id_seq'::regclass);


--
-- Name: working_times id; Type: DEFAULT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.working_times ALTER COLUMN id SET DEFAULT nextval('public.working_times_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.active_admin_comments (id, namespace, body, resource_id, resource_type, author_id, author_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, deleted_at) FROM stdin;
1	test@test.com	$2a$11$dNhNydK6cuA/zm5T/GLmaOhIwR.9jFvnSSIs3unDenGXToVmIf6gu	\N	\N	\N	1	2019-09-19 14:07:10.165229	2019-09-19 14:07:10.165229	127.0.0.1	127.0.0.1	2019-09-19 14:05:14.353223	2019-09-19 14:07:10.166654	\N
2	ilya@test.com	$2a$11$fcq3ycZzM43usKCr3vqiCuJqUNwl7QuvlnhAC5bmdavginjwOtloa	\N	\N	\N	0	\N	\N	\N	\N	2019-09-19 14:23:23.928523	2019-09-19 14:23:23.928523	\N
\.


--
-- Data for Name: candidates; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.candidates (id, first_name, last_name, middle_name, email, phone, notes, attachment, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: candidates_events; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.candidates_events (id, candidate_id, event_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: commissions; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.commissions (id, company_id, percent, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.companies (id, name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at, scheduled_at, last_run, owner_type, owner_id) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.events (id, title, description, start_time, end_time, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: exercise_lists; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.exercise_lists (id, exercise, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.exercises (id, exercise_list_id, user_id, weight, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: internal_accounts; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.internal_accounts (id, account_type, name, description, active, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.invoices (id, company_id, date, refference_id, type_of_calculation, description, agency, freelancer, team, account_name, amount, amount_in_local, currency, deleted_at, created_at, updated_at, internal_account_id) FROM stdin;
\.


--
-- Data for Name: mail_server_emails; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.mail_server_emails (id, user_id, address_from, address_to, body, deleted_at) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.messages (id, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: project_reports; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.project_reports (id, company_id, user_id, tracking_time, earnings, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: rates; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.rates (id, company_id, amount, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: rss_readers; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.rss_readers (id, url, email, time_last_news, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schedulers; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.schedulers (id, type, task, "time", day, frequency, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.schema_migrations (version) FROM stdin;
20160607115608
20160609133559
20160630135258
20160630135727
20160630141837
20160630141848
20160701132628
20160701134713
20160701141745
20160714131258
20161003153742
20161107122911
20161107123134
20161107123738
20161107130025
20161107133004
20161108094035
20161108094511
20161117122903
20161117122923
20170412144808
20170412233716
20170413091524
20170413091737
20170414112428
20170414130742
20170605215015
20170801130010
20170801130144
20170918211253
20171105191315
20171105193649
20171110063726
20171110083913
20171206141047
20171208000434
20180112124709
20180209144950
20180209145146
20180209145758
20180209145859
20180209145936
20180209150047
20180209150109
20180209150153
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.transactions (id, company_id, name, type, info, deleted_at, created_at, updated_at, amount, internal_account_id) FROM stdin;
\.


--
-- Data for Name: user_events; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.user_events (id, user_id, event, start, "end", created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: user_scores; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.user_scores (id, user_id, value, note, type, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, authentication_token, role, created_at, updated_at, first_name, last_name, status, slack_name, deleted_at) FROM stdin;
\.


--
-- Data for Name: wiki_page_versions; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.wiki_page_versions (id, page_id, updator_id, number, comment, path, title, content, updated_at) FROM stdin;
\.


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.wiki_pages (id, creator_id, updator_id, path, title, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: working_times; Type: TABLE DATA; Schema: public; Owner: ilya
--

COPY public.working_times (id, user_id, status_change_date, labor_hours, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: candidates_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.candidates_events_id_seq', 1, false);


--
-- Name: candidates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.candidates_id_seq', 1, false);


--
-- Name: commissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.commissions_id_seq', 1, false);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.companies_id_seq', 1, false);


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.delayed_jobs_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.events_id_seq', 1, false);


--
-- Name: exercise_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.exercise_lists_id_seq', 1, false);


--
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.exercises_id_seq', 1, false);


--
-- Name: internal_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.internal_accounts_id_seq', 1, false);


--
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.invoices_id_seq', 1, false);


--
-- Name: mail_server_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.mail_server_emails_id_seq', 1, false);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: project_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.project_reports_id_seq', 1, false);


--
-- Name: rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.rates_id_seq', 1, false);


--
-- Name: rss_readers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.rss_readers_id_seq', 1, false);


--
-- Name: schedulers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.schedulers_id_seq', 1, false);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);


--
-- Name: user_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.user_events_id_seq', 1, false);


--
-- Name: user_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.user_scores_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: wiki_page_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.wiki_page_versions_id_seq', 1, false);


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.wiki_pages_id_seq', 1, false);


--
-- Name: working_times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ilya
--

SELECT pg_catalog.setval('public.working_times_id_seq', 1, false);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: candidates_events candidates_events_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.candidates_events
    ADD CONSTRAINT candidates_events_pkey PRIMARY KEY (id);


--
-- Name: candidates candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT candidates_pkey PRIMARY KEY (id);


--
-- Name: commissions commissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.commissions
    ADD CONSTRAINT commissions_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: exercise_lists exercise_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.exercise_lists
    ADD CONSTRAINT exercise_lists_pkey PRIMARY KEY (id);


--
-- Name: exercises exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- Name: internal_accounts internal_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.internal_accounts
    ADD CONSTRAINT internal_accounts_pkey PRIMARY KEY (id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: mail_server_emails mail_server_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.mail_server_emails
    ADD CONSTRAINT mail_server_emails_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: project_reports project_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.project_reports
    ADD CONSTRAINT project_reports_pkey PRIMARY KEY (id);


--
-- Name: rates rates_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.rates
    ADD CONSTRAINT rates_pkey PRIMARY KEY (id);


--
-- Name: rss_readers rss_readers_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.rss_readers
    ADD CONSTRAINT rss_readers_pkey PRIMARY KEY (id);


--
-- Name: schedulers schedulers_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.schedulers
    ADD CONSTRAINT schedulers_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: user_events user_events_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.user_events
    ADD CONSTRAINT user_events_pkey PRIMARY KEY (id);


--
-- Name: user_scores user_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.user_scores
    ADD CONSTRAINT user_scores_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wiki_page_versions wiki_page_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.wiki_page_versions
    ADD CONSTRAINT wiki_page_versions_pkey PRIMARY KEY (id);


--
-- Name: wiki_pages wiki_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.wiki_pages
    ADD CONSTRAINT wiki_pages_pkey PRIMARY KEY (id);


--
-- Name: working_times working_times_pkey; Type: CONSTRAINT; Schema: public; Owner: ilya
--

ALTER TABLE ONLY public.working_times
    ADD CONSTRAINT working_times_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- Name: index_users_on_authentication_token; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_users_on_authentication_token ON public.users USING btree (authentication_token);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON public.users USING btree (unlock_token);


--
-- Name: index_wiki_page_versions_on_page_id; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_wiki_page_versions_on_page_id ON public.wiki_page_versions USING btree (page_id);


--
-- Name: index_wiki_page_versions_on_updator_id; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_wiki_page_versions_on_updator_id ON public.wiki_page_versions USING btree (updator_id);


--
-- Name: index_wiki_pages_on_creator_id; Type: INDEX; Schema: public; Owner: ilya
--

CREATE INDEX index_wiki_pages_on_creator_id ON public.wiki_pages USING btree (creator_id);


--
-- Name: index_wiki_pages_on_path; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX index_wiki_pages_on_path ON public.wiki_pages USING btree (path);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: ilya
--

CREATE UNIQUE INDEX unique_schema_migrations ON public.schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

