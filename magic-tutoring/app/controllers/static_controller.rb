class StaticController < ApplicationController

    skip_before_action :authorized 

    def welcome
    end

    def intermediate
    end

end