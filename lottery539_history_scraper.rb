require 'nokogiri'
require 'httparty'
require 'active_record'
require 'activerecord-import'
require 'byebug'

def scraper
    params = { "p1": "096001", "p2": "108305", "l": "0", "type": "5" }
    url = "http://www.9800.com.tw/trend.asp"
    unparsed_page = HTTParty.post(url, body: params)
    parsed_page = Nokogiri::HTML(unparsed_page)

    lottery539_all_data = []
    parsed_page.css('body table')[3].css('tbody')[1].css('tr').each do |period_info|
        lottery539_unit_data = []
        period_info.css('td').children.each do |detail_info|
            lottery539_unit_data << detail_info.content if first_item_numeric?(detail_info.content)
        end
        lottery539_all_data << format_and_check_data(lottery539_unit_data)
    end
    lottery539_all_data
end

def first_item_numeric?(content)
    content[0].match(/\d/)
end

UNIT_DATA_ARRAY_INDEX = { period: 0, date: 1, num1: 2, num2: 3, num3: 4, num4: 5, num5: 6 }.freeze

def format_and_check_data(unit_data)
    format_winning_date(unit_data)
    check_numbers(unit_data)
    unit_data
end

def format_winning_date(unit_data)
    republic_of_china_year = 1911 + unit_data[UNIT_DATA_ARRAY_INDEX[:period]][0..2].to_i

    unit_data[UNIT_DATA_ARRAY_INDEX[:date]] = Date.parse(
      "#{republic_of_china_year}-#{unit_data[UNIT_DATA_ARRAY_INDEX[:date]]}"
    )
    unit_data
end

def check_numbers(unit_data)
    (2..6).step do |idx|
        unit_data[idx] = "0" + unit_data[idx] if unit_data[idx].size.eql? 1
    end
    unit_data
end

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'lotteryhistory',
  username: 'somebodyforluis',
  password: ''
)

class Lottery539 < ActiveRecord::Base
    validates :period,
              presence: { message: "期數一定要存在" },
              uniqueness: { case_sensitive: true, message: "期數不可能重複，請檢查爬蟲腳本" }

    validates :num1, :num2, :num3, :num4, :num5,
              presence: { message: "539五個號碼缺一不可，請檢查爬蟲腳本" }

    validates :winning_date_at,
              presence: { message: "中獎日不會不存在，請檢查爬蟲腳本" },
              uniqueness: { case_sensitive: true, message: "中獎日不可能重複，請檢查爬蟲腳本" }
end

def save_data_in_lottery539(scraper_data)
    Lottery539.delete_all
    ActiveRecord::Base.connection.execute("TRUNCATE lottery539s")
    columns = [:period, :winning_date_at, :num1, :num2, :num3, :num4, :num5]
    Lottery539.import columns, scraper_data, validate: false
end

save_data_in_lottery539(scraper)
