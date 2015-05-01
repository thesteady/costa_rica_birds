require 'rails_helper'

describe BirdsController do
  let!(:pigeon) { Bird.create name: 'Pigeon' }

  describe "GET index" do
    it 'is a success' do
      get :index
      expect(response).to be_success
    end

    it 'assigns the birds variable' do
      get :index
      expect(assigns(:birds)).to eq [pigeon]
    end
  end

  describe "GET show" do

    it 'is a success' do
      get :show, id: pigeon.id
      expect(response).to be_success
    end
  end
  describe "GET edit" do
    it 'is a success' do
      get :edit, id: pigeon.id
      expect(response).to be_success
    end
  end
  describe "POST create" do
    context 'with valid data' do
      it 'creates a new bird' do
        expect{
          post :create, {bird: {name: 'Blue-footed Booby'}}
        }.to change(Bird, :count).by(1)
      end
    end

    context 'with a missing name' do
      it 'does not create a new bird' do
        expect{
          post :create, {bird: {name: nil, priority: true}}
        }.to_not change(Bird, :count)
      end
    end

    context 'with a photo attachment' do
      it 'uploads the photo'
    end
  end

  describe "PUT update" do
    it 'does things'
  end
end