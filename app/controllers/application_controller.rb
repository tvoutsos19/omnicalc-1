class ApplicationController < ActionController::Base
  def blank_square_form
  
      render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    # params = {"elephant" =>"42"}

    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def blank_root_form
  
    render({ :template => "calculation_templates/square_root.html.erb" })
  end

  def calculate_root

    @numb = params.fetch("root").to_f
    @square_root_numb = @numb ** 0.5

    render({ :template => "calculation_templates/root_results.html.erb" })
  end

  def blank_random_form

    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random

    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f
    @random = rand(@min..@max)

    render({ :template => "calculation_templates/random_results.html.erb" })
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def calculate_payment

    @apr = params.fetch("APR").to_f.round(4)
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f

    render({ :template => "calculation_templates/payment_results.html.erb" })
  end


end
