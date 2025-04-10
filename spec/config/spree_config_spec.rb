require 'rails_helper'

RSpec.describe 'Spree Configuration' do
  it 'checks if track_inventory_levels is set to false' do
    expect(Spree::Config[:track_inventory_levels]).to eq(false)
  end
end
