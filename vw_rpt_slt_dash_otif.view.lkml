view: vw_rpt_slt_dash_otif {
  sql_table_name: dbo.VW_RPT_SLT_DASH_OTIF ;;

  dimension: achieved_otif {
    type: string
    sql: ${TABLE}.ACHIEVED_OTIF ;;
  }

  dimension: achieved_otif_per {
    type: string
    sql: ${TABLE}.ACHIEVED_OTIF_PER ;;
  }

  dimension_group: actual_deliv_date {
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
    sql: ${TABLE}.ACTUAL_DELIV_DATE ;;
  }

  dimension: asset_box {
    type: string
    sql: ${TABLE}.ASSET_BOX ;;
  }

  dimension: asset_box2 {
    type: string
    sql: ${TABLE}.ASSET_BOX2 ;;
  }

  dimension: bus_area {
    type: string
    sql: ${TABLE}.BUS_AREA ;;
  }

  dimension: bus_unit {
    type: string
    sql: ${TABLE}.BUS_UNIT ;;
  }

  dimension_group: committed_date {
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
    sql: ${TABLE}.COMMITTED_DATE ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.CUSTOMER ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}.ELEMENT ;;
  }

  dimension: element_desc {
    type: string
    sql: ${TABLE}.ELEMENT_DESC ;;
  }

  dimension: failed_otif {
    type: string
    sql: ${TABLE}.FAILED_OTIF ;;
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

  dimension: n_deliverables {
    type: string
    sql: ${TABLE}.N_DELIVERABLES ;;
  }

  dimension: plant_name {
    type: string
    sql: ${TABLE}.PLANT_NAME ;;
  }

  dimension: plant_num {
    type: string
    sql: ${TABLE}.PLANT_NUM ;;
  }

  dimension: program_manager {
    type: string
    sql: ${TABLE}.PROGRAM_MANAGER ;;
  }

  measure: zy_fcst_net_rev {
    type: sum
    value_format: "$#,##0"
    sql: ${TABLE}.ZY_FCST_NET_REV ;;
  }

  measure: count {
    type: count
    drill_fields: [plant_name]
  }
}
