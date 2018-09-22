require 'rails_helper'

describe 'Documents', type: :request do
  describe 'GET show (pdf)' do
    it 'shows document name and body on a pdf' do
      document_name = 'Document 01'
      document_body = "Just pretend you are a whisper floating across a mountain. Don't fiddle with it all day. Get tough with it, get strong."
      document = Document.create(name: document_name, body: document_body)
      visit document_path(document)
      expect(pdf_text(page)).to include(document_name)
      expect(pdf_text(page)).to include(document_body)
    end
  end
end
