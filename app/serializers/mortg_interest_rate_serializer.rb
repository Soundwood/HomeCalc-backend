class MortgInterestRateSerializer < ActiveModel::Serializer
  attributes :id, :credit_score, :loan_length_yrs, :interest_rate
end
