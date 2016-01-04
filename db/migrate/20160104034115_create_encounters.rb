class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.float :obs_exp_readmit_difference
      t.float :readmit_exp
      t.float :obs_exp_cost_difference
      t.float :expected_direct_cost
      t.float :risk_adjusted_cost
      t.float :average_bundle_cost
      t.string :risk_score
      t.string :combined_bundle_icd9
      t.string :bundle_name
      t.string :readmit_days_from_discharge
      t.integer :readmission
      t.integer :had_readmission
      t.integer :total_ip_visits
      t.string :uniqueid
      t.float :contribution_margin
      t.float :cases
      t.float :direct_costs
      t.float :fixed_costs
      t.float :actual_payment
      t.float :total_adjustment
      t.float :total_charges
      t.string :payor_group
      t.string :payor_type
      t.string :discharge_disposition
      t.date :discharge_date
      t.date :admit_date
      t.string :facility_name
      t.string :attending_physician_description
      t.string :attending_physician_id
      t.string :admitting_physician_description
      t.string :admitting_physician_id
      t.string :primary_icd9_poa
      t.string :primary_icd9_description
      t.string :primary_icd9
      t.string :msdrg_description
      t.integer :msdrg
      t.string :icd9_procedure
      t.string :admit_source
      t.integer :length_of_stay
      t.string :zip_code
      t.string :gender
      t.integer :age
      t.date :birth_date
      t.string :standard_id
      t.string :patient_account

      t.timestamps

    end
  end
end
