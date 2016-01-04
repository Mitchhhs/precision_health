class EncountersController < ApplicationController



  def index
    @encounters = Encounter.all
  end

  def show
    @encounter = Encounter.find(params[:id])
  end

  def new

  end

  def create

    Encounter.import(params[:file])

    redirect_to "/", notice: "Encounter Data Imported"

  end



  def edit
    @encounter = Encounter.find(params[:id])
  end

  def update
    @encounter = Encounter.find(params[:id])

    @encounter.obs_exp_readmit_difference = params[:obs_exp_readmit_difference]
    @encounter.readmit_exp = params[:readmit_exp]
    @encounter.obs_exp_cost_difference = params[:obs_exp_cost_difference]
    @encounter.expected_direct_cost = params[:expected_direct_cost]
    @encounter.risk_adjusted_cost = params[:risk_adjusted_cost]
    @encounter.average_bundle_cost = params[:average_bundle_cost]
    @encounter.risk_score = params[:risk_score]
    @encounter.combined_bundle_icd9 = params[:combined_bundle_icd9]
    @encounter.bundle_name = params[:bundle_name]
    @encounter.readmit_days_from_discharge = params[:readmit_days_from_discharge]
    @encounter.readmission = params[:readmission]
    @encounter.had_readmission = params[:had_readmission]
    @encounter.total_ip_visits = params[:total_ip_visits]
    @encounter.uniqueid = params[:uniqueid]
    @encounter.contribution_margin = params[:contribution_margin]
    @encounter.cases = params[:cases]
    @encounter.direct_costs = params[:direct_costs]
    @encounter.fixed_costs = params[:fixed_costs]
    @encounter.actual_payment = params[:actual_payment]
    @encounter.total_adjustment = params[:total_adjustment]
    @encounter.total_charges = params[:total_charges]
    @encounter.payor_group = params[:payor_group]
    @encounter.payor_type = params[:payor_type]
    @encounter.discharge_disposition = params[:discharge_disposition]
    @encounter.discharge_date = params[:discharge_date]
    @encounter.admit_date = params[:admit_date]
    @encounter.facility_name = params[:facility_name]
    @encounter.attending_physician_description = params[:attending_physician_description]
    @encounter.attending_physician_id = params[:attending_physician_id]
    @encounter.admitting_physician_description = params[:admitting_physician_description]
    @encounter.admitting_physician_id = params[:admitting_physician_id]
    @encounter.primary_icd9_poa = params[:primary_icd9_poa]
    @encounter.primary_icd9_description = params[:primary_icd9_description]
    @encounter.primary_icd9 = params[:primary_icd9]
    @encounter.msdrg_description = params[:msdrg_description]
    @encounter.msdrg = params[:msdrg]
    @encounter.icd9_procedure = params[:icd9_procedure]
    @encounter.admit_source = params[:admit_source]
    @encounter.length_of_stay = params[:length_of_stay]
    @encounter.zip_code = params[:zip_code]
    @encounter.gender = params[:gender]
    @encounter.age = params[:age]
    @encounter.birth_date = params[:birth_date]
    @encounter.standard_id = params[:standard_id]
    @encounter.patient_account = params[:patient_account]

    if @encounter.save
      redirect_to "/encounters", :notice => "Encounter updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @encounter = Encounter.find(params[:id])

    @encounter.destroy

    redirect_to "/encounters", :notice => "Encounter deleted."
  end

end
