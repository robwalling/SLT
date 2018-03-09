view: vw_rpt_slt_dash_eincident {
  sql_table_name: dbo.VW_RPT_SLT_DASH_EINCIDENT ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: affected_body_part {
    type: string
    sql: ${TABLE}.AffectedBodyPart ;;
  }

  dimension: building {
    type: string
    sql: ${TABLE}.Building ;;
  }

  dimension_group: closure {
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
    sql: ${TABLE}.ClosureDate ;;
  }

  dimension: corrective_action {
    type: string
    sql: ${TABLE}.CorrectiveAction ;;
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

  dimension_group: date_incident_report {
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
    sql: ${TABLE}.DateIncidentReport ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: general_area {
    type: string
    sql: ${TABLE}.GeneralArea ;;
  }

  dimension: incident_cause {
    type: string
    sql: ${TABLE}.IncidentCause ;;
  }

  dimension_group: incident {
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
    sql: ${TABLE}.IncidentDate ;;
  }

  dimension: incident_description {
    type: string
    sql: ${TABLE}.IncidentDescription ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.ItemType ;;
  }

  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }

  dimension: nature_of_incident {
    type: string
    sql: ${TABLE}.Nature_of_Incident ;;
  }

  dimension: original_report {
    type: string
    sql: ${TABLE}.OriginalReport ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.Path ;;
  }

  dimension: responsible_supervisor {
    type: string
    sql: ${TABLE}.ResponsibleSupervisor ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: type_incident {
    type: string
    sql: ${TABLE}.TypeIncident ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
