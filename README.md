# Wicked PDF RSpec/Capybara Example

This is an sample Rails application created to test the content of dynamically generated PDFs from Wicked PDF. 
Wicked PDF provides the ability to render its document to the view or return a Base64 string, but does not provide a tool to decode the content into a parseable string. Using the PDF::Reader gem, I can decode the Base64 content. This makes it possible to test the contents of a PDF using RSpec and Capybara. 
