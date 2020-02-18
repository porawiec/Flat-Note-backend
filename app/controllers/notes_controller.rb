class NotesController < ApplicationController

    def show
        note = Note.find(params[:id])
    end

    def index
        notes = Note.all
        render json: notes, include: [:user]
    end

    
    
end
