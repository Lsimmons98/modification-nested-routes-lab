module SongsHelper
  def artist_input params, f
    if params[:id]
      f.collection_select :artist_id, Artist.all, :id, :name
    elsif params[:artist_id]
       f.hidden_field :artist_id
    else
      f.label :artist_name
      f.text_field :artist_name
    end
  end
end
