module MoviesHelper
    def toggle_direction(col)
        current_sort = session[:sort] || "title"
        current_direction = session[:direction] || "asc"

        if col == current_sort
            current_direction == "asc" ? "desc" : "asc"
        else
            "asc"
        end
    end

    def sort_class(col)
        return "asc-sort" if col == session[:sort] && session[:direction] == "asc"
        return "desc-sort" if col == session[:sort] && session[:direction] == "desc"
        ""
    end

    def sort_icon(col)
        return "" if col != session[:sort]
        return "▲" if session[:direction] == "asc"
        return "▼" if session[:direction] == "desc"
    end
end
