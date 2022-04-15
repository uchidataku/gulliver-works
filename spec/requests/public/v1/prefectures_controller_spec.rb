# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Public::V1::PrefecturesController, type: :request do
  describe 'GET /public/v1/prefectures' do
    let(:request) { get public_v1_prefectures_path }
    let!(:prefectures) { create_list(:prefecture, 3) }

    it '都道府県一覧を取得できる' do
      request
      expect(response).to have_http_status(:ok)
      parsed_body = JSON.parse(response.body)
      expect(parsed_body['prefectures'].size).to eq Prefecture.all.size
    end
  end
end
