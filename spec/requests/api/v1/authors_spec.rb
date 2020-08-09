require 'swagger_helper'

RSpec.describe 'api/v1/authors', type: :request do
	path "/authors" do
	get "All Authors" do
      tags "Authors"
      consumes "application/json"
	  response "200", "Authors List" do
        run_test!
      end
    end
    post "Create an Author" do
      tags "Authors"
      consumes "application/json"
      parameter name: :author, in: :body, schema: {
        type: :object,
        properties: {
          first_name: { type: :string },
          last_name: { type: :string },
        },
        required: ["first_name", "last_name"],
      }
	  response "201", "author created" do
        let(:author) { { first_name: "John", last_name: "Doe" } }
        run_test!
      end
    end
  end
end
