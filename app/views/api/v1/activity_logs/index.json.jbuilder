json.array! @logs do |log|
    json.extract! log, :id
    json.start_time log.start_time.utc
    json.stop_time log.stop_time.utc if log.stop_time.present?
    json.baby log.baby ,:id,:name
    json.assistant log.assistant, :id, :name
end