require 'rails_helper'

RSpec.describe BalanceController, type: :controller do
  let(:user) { create(:user) }
  let(:valid_params_income) {
    {
    description: 'Lançamento 1',
    amount: 100.0,
    type_balance: 'E',
    date_overdue: '2021-10-10',
    user: user }
  }
  let(:valid_params_expense) {
    {
    description: 'Lançamento 2',
    amount: 90.0,
    type_balance: 'S',
    date_overdue: '2021-10-10',
    user: user }
  }
  before do
    sign_in user, scope: :user
  end

  describe "GET #index" do
  it "returns a success response" do
    get :index
    expect(response).to be_successful
  end
end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new item' do
        expect do
          post :create, params: valid_params_income
        end.to change(Balance, :count).by(1)
      end

      it 'redirects to the balance list' do
        post :create, params: valid_params_income
        expect(response).to redirect_to(balance_path)
      end
    end

    context "with invalid params" do
      it 'not create a new item' do
        expect do
          post :create, params: { balance: { description: '', amount: '', type_balance: '', date_overdue: '' } }
        end.to change(Balance, :count).by(0)
      end
    end
  end
end
