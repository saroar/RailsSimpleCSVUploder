class Document < ActiveRecord::Base
  include SimpleCSVUploder
  validate :file_size_under_one_mb, :csv_file_format
  before_save :upload_local
end
