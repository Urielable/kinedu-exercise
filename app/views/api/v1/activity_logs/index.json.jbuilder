json.array! @logs do |log|
    json.extract! log, :id, :start_time
    json.stop_time log.stop_time if log.stop_time.present?
    json.baby log.baby ,:id,:name
    json.assistant log.assistant, :id, :name
end