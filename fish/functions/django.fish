function django --wraps='python manage.py' --description 'alias django=python manage.py'
  python manage.py $argv; 
end
