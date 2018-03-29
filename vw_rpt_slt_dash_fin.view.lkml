view: vw_rpt_slt_dash_fin {
  sql_table_name: dbo.VW_RPT_SLT_DASH_FIN ;;

  dimension: asset_box {
    type: string
    sql: ${TABLE}.ASSET_BOX ;;
  }

  dimension: asset_box2 {
    type: string
    sql: ${TABLE}.ASSET_BOX2 ;;
  }

  dimension_group: commit_del {
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
    sql: ${TABLE}.COMMIT_DEL_DATE ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.CUSTOMER ;;
  }

  dimension: customer_num {
    type: string
    sql: ${TABLE}.CUSTOMER_NUM ;;
  }

  dimension: cy_fcst_batch_count {
    type: string
    sql: ${TABLE}.CY_FCST_BATCH_COUNT ;;
  }

  measure: forcast_net_rev_chf {
    type: number
    sql: ${TABLE}.FORCAST_NET_REV_CHF ;;
  }

  measure: forcast_net_rev_usd {
    type: number
    sql: ${TABLE}.FORCAST_NET_REV_USD ;;
  }

  dimension: free_text {
    type: string
    sql: ${TABLE}.FREE_TEXT ;;
  }

  dimension_group: inserted {
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
    sql: ${TABLE}.INSERTED_DATE ;;
  }

  dimension: material1 {
    type: string
    sql: ${TABLE}.MATERIAL1 ;;
  }

  dimension: material2 {
    type: string
    sql: ${TABLE}.MATERIAL2 ;;
  }

  dimension: program_manager {
    type: string
    sql: ${TABLE}.PROGRAM_MANAGER ;;
  }

  dimension: rev_category {
    type: string
    sql: ${TABLE}.REV_CATEGORY ;;
  }

  dimension_group: sales_rec {
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
    sql: ${TABLE}.SALES_REC_DATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: wbs_element {
    type: string
    sql: ${TABLE}.WBS_ELEMENT ;;
  }

  dimension: wbs_heirarchy {
    type: string
    sql: ${TABLE}.WBS_HEIRARCHY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
