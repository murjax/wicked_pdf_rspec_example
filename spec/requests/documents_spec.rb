require 'rails_helper'

describe 'Documents', type: :request do
  describe 'GET show (pdf)' do
    it 'shows document name and body on a pdf' do
      document_name = 'Document 01'
      document_body = "Just pretend you are a whisper floating across a mountain. Don't fiddle with it all day. Get tough with it, get strong."
      document = Document.create(name: document_name, body: document_body)
      visit document_path(document)
      temp_pdf = Tempfile.new('pdf')
      temp_pdf << page.source.force_encoding('UTF-8')
      reader = PDF::Reader.new(temp_pdf)
      pdf_text = reader.pages.map(&:text).first
      filtered_pdf_text = pdf_text.gsub("\n", ' ').gsub("\t", ' ')
      expect(filtered_pdf_text).to include(document_name)
      expect(filtered_pdf_text).to include(document_body)
    end
  end
end
