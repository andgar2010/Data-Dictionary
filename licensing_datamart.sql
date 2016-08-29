CREATE TABLE "License" (
"id" int4 NOT NULL,
"form_id" int4,
"form_entry_id" int4,
"source_system_id" int2,
"source_system_name" varchar(60),
"country_ffa_member_country_id" int4,
"country_ffa_member_alpha2" char(2),
"country_ffa_member_name" varchar(200),
"status_id" int2,
"status" varchar(30),
"license_id" int4,
"license_no" varchar(60),
"license_start_date" timestamp(0),
"license_end_date" timestamp(0),
"license_issue_date" timestamp(0),
"license_country_id" int4,
"entity_license_holder_id" int4,
"entity_license_holder_name" varchar(180),
"entity_license_entity_beneficiary_id" int4,
"entity_license_beneficiary_name" varchar(180),
"agreement_id" int4,
"agreement_name" varchar(90),
"agreement_start_date" timestamp(0),
"agreement_end_date" timestamp(0),
"agreement_text" text,
"agreement_signatories" varchar(255),
"agreement_country_id" int4,
"vessel_id" int4,
"vessel_domestic" bool,
"vessel_name" varchar(180),
"vessel_ffa_vid" int4,
"vessel_wcpfc_vid" int4,
"vessel_uvi" int4,
"vessel_ircs" varchar(20),
"vessel_flag_state_country_id" int4,
"vessel_flag_state_no" varchar(30),
"vessel_captain" varchar(255),
"vessel_fishing_master" varchar(255),
"vessel_loa" float8,
"vessel_grt" float8,
"condition_id" int4,
"condition_fishing_method" varchar(255),
"condition_fishing_waters" varchar(255),
"condition_target_species" varchar(255),
"condition_text" text,
"condition_country_id" int4,
"user_id" int4,
"user_email" varchar(255),
"user_name" varchar(255),
"user_group_id" int4,
PRIMARY KEY ("id") 
)
WITHOUT OIDS;

