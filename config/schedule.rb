every 1.hour do
  command "flock -n -E 0 /tmp/listbooru_processor_init.lock -c 'cd /var/www/listbooru/current && bundle exec ruby listbooru_processor.rb --action=init'"
end

every 3.hours do
  command "flock -n -E 0 /tmp/listbooru_processor_update.lock -c 'cd /var/www/listbooru/current && bundle exec ruby listbooru_processor.rb --action=update'"
end

every 3.hours do
  command "flock -n -E 0 /tmp/listbooru_processor_clean.lock -c 'cd /var/www/listbooru/current && bundle exec ruby listbooru_processor.rb --action=clean'"
end
