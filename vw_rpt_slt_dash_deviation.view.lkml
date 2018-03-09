view: vw_rpt_slt_dash_deviation {
  sql_table_name: dbo.VW_RPT_SLT_DASH_DEVIATION ;;

  dimension: area_occured {
    type: string
    sql: ${TABLE}.AREA_OCCURED ;;
  }

  dimension: causal_name {
    type: string
    sql: ${TABLE}.CAUSAL_NAME ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension_group: date_closed {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE_CLOSED ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATE_DUE ;;
  }

  dimension: deviation_status {
    type: string
    sql: ${TABLE}.DEVIATION_STATUS ;;
  }

  dimension: deviation_type {
    type: string
    sql: ${TABLE}.DEVIATION_TYPE ;;
  }

  dimension: document_name {
    type: string
    sql: ${TABLE}.DOCUMENT_NAME ;;
  }

  dimension: lot_batch {
    type: string
    sql: ${TABLE}.LOT_BATCH ;;
  }

  dimension: parent_record_id {
    type: number
    sql: ${TABLE}.PARENT_RECORD_ID ;;
  }

  dimension: risk_category_name {
    type: string
    sql: ${TABLE}.RISK_CATEGORY_NAME ;;
  }

  dimension: root_cause_name {
    type: string
    sql: ${TABLE}.ROOT_CAUSE_NAME ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}.SITE_NAME ;;
  }

  dimension: step_key {
    type: number
    sql: ${TABLE}.STEP_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      site_name,
      customer_name,
      document_name,
      risk_category_name,
      causal_name,
      root_cause_name
    ]
  }
}
