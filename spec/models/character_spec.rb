require 'rails_helper'

RSpec.describe Character, type: :model do
  before do
    @character = FactoryBot.build(:character)
  end
  
  describe 'キャラクター作成機能' do
    context 'キャラクターが作成できる場合' do
      it 'name,imageが入力されていれば作成できる' do
        expect(@character).to be_valid
      end
      it 'nameが40文字以下なら作成できる' do
        @character.name = 'a' * 40
        expect(@character).to be_valid
      end
      it 'residenceが40文字以下なら作成できる' do
        @character.residence = 'a' * 40
        expect(@character).to be_valid
      end
      it 'introductionsが1000文字以下なら作成できる' do
        @character.introductions = 'a' * 1000
        expect(@character).to be_valid
      end
    end

    context 'キャラクター作成ができない時' do
      it 'nameが空の場合作成できない' do
        @character.name = ''
        @character.valid?
        expect(@character.errors.full_messages).to include "Name can't be blank"
      end
      it 'nameが41文字以上の場合作成できない' do
        @character.name = 'a' * 41
        @character.valid?
        expect(@character.errors.full_messages).to include "Name is too long (maximum is 40 characters)"
      end
      it 'imageが空の場合作成できない' do
        @character.image = nil
        @character.valid?
        expect(@character.errors.full_messages).to include "Image can't be blank"
      end
      it 'residenceが41文字以上の場合作成できない' do
        @character.residence = 'a' * 41
        @character.valid?
        expect(@character.errors.full_messages).to include "Residence is too long (maximum is 40 characters)"
      end
      it 'residenceが41文字以上の場合作成できない' do
        @character.residence = 'a' * 41
        @character.valid?
        expect(@character.errors.full_messages).to include "Residence is too long (maximum is 40 characters)"
      end
      it 'ユーザーに紐づいていなければ作成できない' do
        @character.user = nil
        @character.valid?
        expect(@character.errors.full_messages).to include "User must exist"
      end
    end
  end
end
