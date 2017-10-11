class UserDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id:         { source: "User.id",          cond: :eq },
      username:   { source: "User.username",    cond: :like, searchable: true, orderable: true },
      email:      { source: "User.email",       cond: :like, searchable: true, orderable: true },
      role:       { source: "User.role",        orderable: true },
      created_at: { source: "User.created_at",  orderable: true },
      action:     { source: "User.id" }
    }
  end

  def data
    records.map do |record|
      {
        id:         record.id,
        username:   record.username,
        email:      record.email,
        role:       record.role.titleize,
        created_at: record.created_at.strftime('%d-%b-%Y %H:%M'),
        action:     " <div class='pull-left'>
                        <div class='btn-group'>
                          <a class='btn btn-success button active' href='/users_admin/#{record.id}'>Show</a>
                          <a class='btn btn-success button active' href='/users_admin/#{record.id}/edit'>Edit</a>
                          <a data-confirm='Are you sure?' class='btn btn-danger button active' rel='nofollow' data-method='delete' href='/users_admin/#{record.id}'>Remove</a>
                        </div>
                      </div> ".html_safe
      }
    end
  end

  private

  def get_raw_records
    # insert query here
    User.member
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
