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

  dimension: bus_desc {
    type: string
    sql: ${TABLE}.BUS_DESC ;;
  }

  dimension: bus_unit {
    type: string
    sql: ${TABLE}.BUS_UNIT ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.CUSTOMER ;;
  }

  dimension: customer_num {
    type: string
    sql: ${TABLE}.CUSTOMER_NUM ;;
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

  measure: inv_sales_chv {
    type: sum
    sql: ${TABLE}.INV_SALES_CHV ;;
  }

  measure: inv_sales_usd {
    type: sum
    sql: ${TABLE}.INV_SALES_USD ;;
  }

  dimension: inv_sales_wo_rak_chv {
    type: string
    sql: ${TABLE}.INV_SALES_WO_RAK_CHV ;;
  }

  dimension: rev_category {
    type: string
    sql: ${TABLE}.REV_CATEGORY ;;
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
