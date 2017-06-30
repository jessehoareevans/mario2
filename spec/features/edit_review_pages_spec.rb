require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    product = Product.create(:name => 'Bacon', :cost => 5, :origin => "USA")
    review = Review.create(:author => 'Me', :content => 'I bought this bacon a recently and thought that it was both great tasting and a great price point. Would highly reccomend.', :rating => 5, :product_id => product.id)
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Author', :with => 'You'
    click_on 'Update Review'
    expect(page).to have_content 'You'
  end

  it "gives error when no author is entered" do
    product = Product.create(:name => 'Bacon', :cost => 5, :origin => "USA")
    review = Review.create(:author => 'Me', :content => 'I bought this bacon a recently and thought that it was both great tasting and a great price point. Would highly reccomend.', :rating => 5, :product_id => product.id)
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Author', :with => ''
    click_button 'Update Review'
    expect(page).to have_content 'errors'
  end
end
