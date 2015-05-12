module Measures
  class ADEHelper

    ADE_SET_ID='A5E96A45-8132-4E72-BF4F-E8C81DB9E641'

    ADE_FIELDS = {custom_functions: {MSRPOPL: 'hqmf.CustomCalc.ADE_TTR_MSRPOPL',OBSERV: 'hqmf.CustomCalc.ADE_TTR_OBSERV'},
                  force_sources: ['LaboratoryTestPerformedInr']}

    def self.update_if_ade(measure)
      if (measure.hqmf_set_id == ADE_SET_ID)
        measure.update_attributes(ADE_FIELDS)
      end
    end

  end
end