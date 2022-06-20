{{ config(materialized='table') }}

WITH forms_base AS (

    SELECT
        action,
        action_time,
        cookie_id,
        form_id AS asset_id,
        form_title AS asset_title,
        ip_address,
        record_id,
        referral_url,
        response_email,
        action_day,
        unique_visitor_id,
        email,
        {{ dbt_utils.surrogate_key(['action_time', 'asset_id','email']}} AS touchpoint_id
    FROM {{ref('forms')}}

--), landing_pages_base AS (


--), web_visits_base AS (


--), media_files_base AS (


--), emails_base AS (


--), webinars_base AS (   
), final AS (

    SELECT *
    FROM forms_base
    --UNION ALL
    --SELECT *
    --FROM landing_pages_base
    --UNION ALL
    --SELECT *
    --FROM web_visits_base
    --UNION ALL
    --SELECT *
    --FROM media_files_base
    --UNION ALL
    --SELECT *
    --FROM emails_base
    --UNION ALL
    --SELECT *
    --FROM webinars_base

)

SELECT *
FROM final