class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all

    render("airlines/index.html.erb")
  end

  def show
    @flight = Flight.new
    @airline = Airline.find(params[:id])

    render("airlines/show.html.erb")
  end

  def new
    @airline = Airline.new

    render("airlines/new.html.erb")
  end

  def create
    @airline = Airline.new

    @airline.airline_name = params[:airline_name]

    save_status = @airline.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/airlines/new", "/create_airline"
        redirect_to("/airlines")
      else
        redirect_back(:fallback_location => "/", :notice => "Airline created successfully.")
      end
    else
      render("airlines/new.html.erb")
    end
  end

  def edit
    @airline = Airline.find(params[:id])

    render("airlines/edit.html.erb")
  end

  def update
    @airline = Airline.find(params[:id])

    @airline.airline_name = params[:airline_name]

    save_status = @airline.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/airlines/#{@airline.id}/edit", "/update_airline"
        redirect_to("/airlines/#{@airline.id}", :notice => "Airline updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Airline updated successfully.")
      end
    else
      render("airlines/edit.html.erb")
    end
  end

  def destroy
    @airline = Airline.find(params[:id])

    @airline.destroy

    if URI(request.referer).path == "/airlines/#{@airline.id}"
      redirect_to("/", :notice => "Airline deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Airline deleted.")
    end
  end
end
