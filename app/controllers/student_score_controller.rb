class StudentScoreController < ApplicationController

    def home
        @studentID = params[:id].to_i
        @scores = Score.where(student_id: @studentID)
        render "showScore"
    end

    def delete
        Score.destroy_by(id: params[:id])
        url = "/students/" + params[:student_id] + "/edit_score"
        redirect_to url
    end

end
