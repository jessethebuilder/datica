require 'rails_helper'

describe SansoroApiClient, type: :lib, api: true do
  before do
    @client = SansoroApiClient.new('test_system')
  end

  describe 'SurgicalCases' do
    it 'should return an array' do
      response = @client.get_surgical_cases
      response.class.should == Array
      response.count.should == 2 #test data has 2 items.
    end

    specify 'response Array items should be hashes' do
      response = @client.get_surgical_cases
      case_data = response.first
      case_data.class.should == Hash
      case_data.keys.should ==
          ["AdministeredBloodProducts", "AnesthesiaStaffCost", "AnesthesiaType",
           "AnesthesiaTypeLocations", "ASAClass", "CaseBlocks", "CaseClass",
           "CaseCreationDateTime", "CaseDelays", "CleanUpDuration", "Complexity",
           "CreatedUpdatedDateTime", "Encounter", "EstimatedBloodLoss",
           "EstimatedBloodLossUnit", "IsAddOn", "IsFirstCase", "NumberOfPanels",
           "OperatingRoomId", "OperatingRoomName", "Patient", "PendingStatus",
           "PreOpAppointments", "PreOpPreperations", "ProgressStatus",
           "ProjectedEndDateTime", "ProjectedStartDateTime", "SchedulingStatus",
           "SetUpDuration", "SurgeonCost", "SurgeryEndDateTime", "SurgeryStartDateTime",
           "SurgicalCaseId", "SurgicalCaseName", "SurgicalEvents", "SurgicalProcedures",
           "SurgicalService", "SurgicalStaff", "SurgicalStaffCost", "TimeOut",
           "TotalCost", "TotalDuration"]
      case_data['TotalCost'].should == 'sample string 12'
    end
  end
end
