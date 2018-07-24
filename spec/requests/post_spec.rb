require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'POST /posts' do
    subject { post posts_path, params: params }

    # let(:uploaded_file) { Rack::Test::UploadedFile.new(Rails.root.join('spec','fixtures','dummy.png'), 'image/png') }
    let(:uploaded_file) { fixture_file_upload('dummy.png', 'image/png') }

    context 'with valid post params' do
      let(:params) do
        {
          post: { 
            image: uploaded_file
          },
        }
      end

      it 'creates a post' do
        expect { subject }.to change { Post.count }.from(0).to(1)
        expect(response).to redirect_to(assigns(:post))
      end
    end
  end
end