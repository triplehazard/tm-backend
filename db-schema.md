## Database model for Time Matrix

### user
##### implemented with Devise gem
```
first_name          : String  
last_name           : String  
email               : String
has_one             calendar  
```

### calendar
```
belongs_to          user  
has_many            time_terms  
```

### task  
```
task_name           : String  
belongs_to          location  
```

### fixed_task < task
```
has_one             time_term  
```

### regular_task < task
```
time_estimate       : Integer               // in minutes  
deadline            : Date Time  
splittable          : Boolean               // if false has only one time term  
has_many            time_terms  
```

### time_term
```
start_time          : Date Time  
end_time            : Date Time  
preparation_time    : Integer       
belongs_to          task  
belongs_to          calendar  
belongs_to          location                // optional  
```

### location
#### data from Google Maps API
```
has_many            tasks  
has_many            time_terms  
```
