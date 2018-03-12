view: vw_rpt_slt_dash_lims {
  sql_table_name: dbo.VW_RPT_SLT_DASH_LIMS ;;

  dimension_group: assay {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ASSAY_DATE ;;
  }

  measure: assays_authorized {
    type: number
    sql: ${TABLE}.ASSAYS_AUTHORIZED ;;
  }

  measure: assays_executed {
    type: number
    sql: ${TABLE}.ASSAYS_EXECUTED ;;
  }

  dimension: avg_tests_per_assay {
    type: number
    sql: ${TABLE}.AVG_TESTS_PER_ASSAY ;;
  }

  dimension: lab {
    type: string
    sql: ${TABLE}.LAB ;;
  }

  dimension: tests_executed {
    type: number
    sql: ${TABLE}.TESTS_EXECUTED ;;
  }

  dimension: tests_recieved {
    type: number
    sql: ${TABLE}.TESTS_RECIEVED ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
