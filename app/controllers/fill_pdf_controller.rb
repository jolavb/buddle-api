
require 'fillable-pdf'
class FillPdfController < ApplicationController


  def show
    ConfirmAccountMailer.welcome_email(User.first).deliver
    # pdf = FillablePDF.new './public/pdf-templates/Form1.pdf'
    # pdf.set_fields("Given Name Text Box": 'Julian', "Family Name Text Box": 'Barthold')
    # pdf.save_as('./public/pdf-output/output.pdf')
    # render  html:   '<div>html Document Saved</div>'.html_safe
  end



end
