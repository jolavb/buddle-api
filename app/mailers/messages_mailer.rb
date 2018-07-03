class MessagesMailer < ApplicationMailer

    def service_message
        @service = params[:service]
        @name = params[:name]
        @email = params[:email]
        @org = params[:organization]
        @message = params[:message]
        mail(to:"julianb@bu.edu", subject:"New Service Inquiry From #{@name}")

    end
end
