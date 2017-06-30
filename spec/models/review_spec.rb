require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_numericality_of :rating }
  validates :content, length: { in: 50..250 }
  it { should belong_to :product }
end
