require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nickname,email,password,password_confirmation,birthday,phone_numberがあれば登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameが40文字以下あれば登録できる' do
        @user.nickname = 'a' * 40
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上あれば登録できる' do
        @user.password = '1aaaaa'
        @user.password_confirmation = '1aaaaa'
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録ができない時' do
      it 'nicknameが空だと登録できない'do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end
      it 'nicknameが41文字以上だと登録できない' do
        @user.nickname = 'a' * 41
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname is too long (maximum is 40 characters)"
      end
      it '重複したnicknameが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.nickname = @user.nickname
        another_user.valid?
        expect(another_user.errors.full_messages).to include "Nickname has already been taken"
      end
      it 'emailが空だと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end
      it 'emailに@が含まれていなかった場合登録できない' do
        @user.email = 'aaaagmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end
      it 'passwordが空だと登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank",
                                                      "Password Include both letters and numbers",
                                                      "Password confirmation doesn't match Password"
      end
      it 'passwordが存在してもpassword_confirmationが空だと登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = '1aaaa'
        @user.password_confirmation = '1aaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is too short (minimum is 6 characters)"
      end
      it '英語のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password Include both letters and numbers"
      end
      it '数字のみでは登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password Include both letters and numbers"
      end
      it '全角では登録できない' do
        @user.password = 'ａａａａａａ'
        @user.password_confirmation = 'ａａａａａａ'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password Include both letters and numbers"
      end
      it 'birthdayが空だと登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Birthday can't be blank"
      end
      it 'phone_numberが空だと登録できない' do
        @user.phone_number = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number can't be blank",
                                                      "Phone number is invalid. Input only number",
                                                      "Phone number is too short"
      end
      it 'phone_numberが9桁では保存できない' do
        @user.phone_number = '111111111'
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number is too short"
      end
      it 'phone_numberが12桁以上では保存できない' do
        @user.phone_number = '111111111111'
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number is too short"
      end
      it 'phone_numberが全角数字では保存できない' do
        @user.phone_number = '１１１１１１１１１１１'
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number is invalid. Input only number"
      end
      it 'phone_numberが半角英語では保存できない' do
        @user.phone_number = 'aaaaaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number is invalid. Input only number"
      end
      it 'phone_numberが英数字混合では保存できない' do
        @user.phone_number = 'aaaaa11111'
        @user.valid?
        expect(@user.errors.full_messages).to include "Phone number is invalid. Input only number"
      end
    end
  end
end
