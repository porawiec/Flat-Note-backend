class NotesController < ApplicationController

    def show
        note = Note.find(params[:id])
    end

    def index
        notes = Note.all
        render json: notes, include: [:user]
    end

    def create
        @user = User.find_by(id: params[:user_id])
        @note = Note.new(title: params[:title], description: params[:description], user: @user)
        if @note.valid?
            @note.save
            render json: @note
        else
            render json: {error: 'Note could not be created'}
        end
    end

    def update
        @note = Note.find(params[:id])
        if @note.valid?
            @note.update(title: params[:title], description: params[:description])
            render json: @note
        else
            render json: {error: 'Note could not be updated'}
        end
    end

    def destroy
        @note = Note.find(params[:id])
        if @note.valid?
            @note.delete
        else
            render json: {error: 'Note could not be deleted'}
        end
    end 
end