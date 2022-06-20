{{ config(materialized='table') }}

WITH base AS (

    SELECT 
        action,
        action_time,
        cookie_id,
        asset_id,
        asset_title,
        ip_address,
        record_id,
        referral_url,
        response_email,
        action_day,
        unique_visitor_id,
        email,
        touchpoint_id
    FROM {{ref('primaryunion')}}

), first_touch_base AS (

    SELECT
        email,



)