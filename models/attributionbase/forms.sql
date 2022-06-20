{{ config(materialized='table') }}

WITH base AS (

    SELECT
        "Action" AS action,
        "Action Time" AS action_time,
        "Cookie ID" AS cookie_id,
        "Form ID" AS form_id,
        "Form Title" AS form_title,
        "IP Address" AS ip_address,
        "Record ID" AS record_id,
        "Referral URL" AS referral_url,
        "Response E-mail" AS response_email,
        "Action Day" AS action_day,
        "Unique Visitor ID" AS unique_visitor_id,
        "email" AS email
    FROM "public".sampleattribution

)

SELECT *
FROM base