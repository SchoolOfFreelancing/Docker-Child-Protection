incident_fields = [
  Field.new({"name" => "incident_id", # TODO: Guid
             "type" => "text_field",
             "display_name_all" => "Incident ID"
            }),
  Field.new({"name" => "incident_code", # For right now, sequentially assigned number.
             "type" => "text_field",
             "display_name_all" => "Incident Code"
            }),
  Field.new({"name" => "violation_category",
             "type" => "select_box",
             "display_name_all" => "Violation Category",
             "multi_select" => true,
             "option_strings_text_all" => [
                "Killing of Children",
                "Maiming of Children",
                "Abduction",
                "Recruitment or Use of Child Soldiers",
                "Rape or Other Grave Sexual Violence",
                "Attacks on Schools",
                "Attacks on Hospitals",
                "Denial of Humanitarian Access",
                "Other"
              ].join("\n")
            }),
  Field.new({"name" => "caseworker_code", # Ask populated with users
             "type" => "text_field",
             "display_name_all" => "Case Worker"
            }),   
  Field.new({"name" => "agency_organization", # Ask populated with organizations
             "type" => "text_field",
             "display_name_all" => "Agency"
            }),
  Field.new({"name" => "date_of_first_report",
             "type" => "date_field",
             "display_name_all" => "Date of First Report or Interview"
            }),
  # TODO: Range label
  Field.new({"name" => "start_date_of_incident_label",
             "type" => "text_field",
             "display_name_all" => "Start Date of Incident"
            }),
  Field.new({"name" => "start_date_of_incident_from",
             "type" => "date_field",
             "display_name_all" => "From"
            }),
  Field.new({"name" => "start_date_of_incident_to",
             "type" => "date_field",
             "display_name_all" => "To"
            }),
  # TODO: Range label
  Field.new({"name" => "end_date_of_incident_label",
             "type" => "text_field",
             "display_name_all" => "End Date of Incident"
            }),
  Field.new({"name" => "end_date_of_incident_from",
             "type" => "date_field",
             "display_name_all" => "From"
            }),
  Field.new({"name" => "end_date_of_incident_to",
             "type" => "date_field",
             "display_name_all" => "To"
            }), 
  Field.new({"name" => "estimated_indicator",
             "type" => "radio_button",
             "display_name_all" => "Are these dates estimated?",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "super_incident_name",
             "type" => "select_box",
             "display_name_all" => "Name of Super Incident/Event",
             "option_strings_text_all" => [
                "Will be populated with the names of",
                "SuperIncidents once that form is implemented"
             ].join("\n")
            }),  
  Field.new({"name" => "UN_eyewitness",
             "type" => "radio_button",
             "display_name_all" => "Did UN staff or other MRM-trained affiliate witness the incident?",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "monitor_number",
             "type" => "text_field",
             "display_name_all" => "Eye Witness Monitor Number"
            }),
  Field.new({"name" => "status",
             "type" => "select_box",
             "display_name_all" => "Incident Status",
             "option_strings_text_all" => [
                "Active (default)",
                "Inactive"
              ].join("\n")
            }),
  Field.new({"name" => "mrm_verification_status", # Autopopulate - Default to Pending when Incident is created, populate from verified
             "type" => "text_field",
             "display_name_all" => "MRM Verification Status"
            }), 
  Field.new({"name" => "incident_description",
             "type" => "textarea",
             "display_name_all" => "Account of Incident"
            }), 
  Field.new({"name" => "incident_description_for_public_sharing",
             "type" => "textarea",
             "display_name_all" => "Account of Incident for Public Sharing"
            }),
  Field.new({"name" => "incident_timeofday",
             "type" => "select_box",
             "display_name_all" => "Time of day that the Incident took place",
             "option_strings_text_all" => [
                "Morning (sunrise to noon)",
                "Afternoon (noon to sunset)",
                "Evening/Night (sunset to sunrise)",
                "Unknown/Not Applicable"
              ].join("\n")
            }),  
  Field.new({"name" => "incident_location_type",
             "type" => "select_box",
             "display_name_all" => "Type of place where the incident took place",
             "option_strings_text_all" => [
                "Customizable. Default values:",
                "Bush/Forest",
                "Garden/Cultivated Field",
                "School",
                "Road",
                "Client's Home",
                "Perpetrator's Home",
                "Other",
                "Market",
                "Streamside",
                "Beach",
                "Farm",
                "Latrine",
                "Perpetrator's Friend's Home",
                "Entertainment Centre",
                "Unfinished House",
                "Guest House - Hotel"
              ].join("\n")
            }),
  Field.new({"name" => "incident_location_1", # Customizable
             "type" => "text_field",
             "display_name_all" => "Area"
            }),
  Field.new({"name" => "incident_location_2", # Customizable
             "type" => "text_field",
             "display_name_all" => "Sub-Area"
            }),
  Field.new({"name" => "Incident_location_3", # Customizable
             "type" => "text_field",
             "display_name_all" => "Camp/Town/Site/Village"
            }), 
  Field.new({"name" => "number_of_individual_perpetrators",
             "type" => "select_box",
             "display_name_all" => "Number of alleged perpetrator(s)",
              "option_strings_text_all" => [
                "1",
                "2",
                "3",
                "More than 3",
                "Unknown"
              ].join("\n")
            }),
 Field.new({"name" => "incident_total_boys",
             "type" => "numeric_field",
             "display_name_all" => "Incident Total Victims/Survivors:Boys"
            }),
  Field.new({"name" => "incident_total_girls",
             "type" => "numeric_field",
             "display_name_all" => "Incident Total Victims/Survivors:Girls"
            }),
  Field.new({"name" => "incident_total_unknown",
             "type" => "numeric_field",
             "display_name_all" => "Incident Total Victims/Survivors:Unknown"
            }), 
  Field.new({"name" => "incident_total_total",
             "type" => "numeric_field",
             "display_name_all" => "Incident Total Victims/Survivors:Total"
            }),
]

FormSection.create_or_update_form_section({
  :unique_id => "incident",
  :parent_form=>"incident",
  "visible" => true,
  :order => 1,
  :fields => incident_fields,
  :perm_visible => true,
  "editable" => true,
  "name_all" => "Incident",
  "description_all" => "Incident"
})