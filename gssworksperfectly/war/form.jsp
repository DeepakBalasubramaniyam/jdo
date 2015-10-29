
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="javascript.js"></script>
  <link href="special.css" rel="stylesheet" type="text/css">
  
   <script type="text/javascript">
   
           </script>
</head>
<body>

<div class="container">
  <h2>ISSUE FORM</h2>
  <form name="myForm" role="form" action="/gss" method="post" onsubmit="return validateForm()">
    <div class="form-group">
      <label>ENTER THE DATE FOR THE ISSUE:</label>
      <input type="date" class="form-control" name="time" placeholder="Enter the time">
    </div>
    <div class="form-group">
      <label>ENTER THE REASON FOR THE ISSUE:</label>
      <input type="text" class="form-control" name="reason" placeholder="Enter the reason for the issue">
    </div>
    <button type="submit" class="btn btn-primary btn-lg btn-block">save</button>
								
            
  </form>
</div>

</body>
</html>













