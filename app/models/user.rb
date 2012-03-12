class User < ActiveRecord::Base
  attr_accessible #none
  has_many :reports
  validates_presence_of :identifier, :credibility
  validates_format_of :identifier, :with => /\A[0-9a-f]{32}\Z/  # MD5 hexadecimal
  validates_uniqueness_of :identifier
  validates_numericality_of :credibility, :only_integer => true, :greater_than => 0, :less_than_or_equal_to => 100

  def short_identifier
    "#{identifier[0..8]}..."
  end

  def report_count
    reports.size
  end

  def update_credibility
  end
end
