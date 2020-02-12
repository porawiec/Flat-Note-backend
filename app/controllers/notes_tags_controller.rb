class NotesTagsController < ApplicationController

    def index
        notesTag = NotesTag.all
        render json: notesTag, include: [:note, :tag]
    end
    
end
