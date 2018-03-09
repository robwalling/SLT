view: vw_rpt_slt_dash_esafety {
  sql_table_name: dbo.VW_RPT_SLT_DASH_ESAFETY ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: building {
    type: string
    sql: ${TABLE}.Building ;;
  }

  dimension: corrective_action_completed {
    type: string
    sql: ${TABLE}.CorrectiveActionCompleted ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.Created ;;
  }

  dimension_group: date_completed {
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
    sql: ${TABLE}.DateCompleted ;;
  }

  dimension: date_near_miss {
    type: string
    sql: ${TABLE}.DateNearMiss ;;
  }

  dimension_group: date_near_miss2 {
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
    sql: ${TABLE}.DateNearMiss2 ;;
  }

  dimension: employee_supervisor {
    type: string
    sql: ${TABLE}.EmployeeSupervisor ;;
  }

  dimension: general_area {
    type: string
    sql: ${TABLE}.GeneralArea ;;
  }

  dimension: hazard_type {
    type: string
    sql: ${TABLE}.HazardType ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ItemType ;;
  }

  dimension: near_miss_safety_observation {
    type: string
    sql: ${TABLE}.NearMissSafetyObservation ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
  }

  dimension: reference_number_ {
    type: string
    sql: ${TABLE}."ReferenceNumber " ;;
  }

  dimension: responsible_party {
    type: string
    sql: ${TABLE}.ResponsibleParty ;;
  }

  dimension: root_cause {
    type: string
    sql: ${TABLE}.RootCause ;;
  }

  dimension: submitter {
    type: string
    sql: ${TABLE}.Submitter ;;
  }

  dimension: submitter_lob {
    type: string
    sql: ${TABLE}.SubmitterLOB ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
