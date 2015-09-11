<h2>Admin page</h2>

% if confirmation == True:
  <p class="alert alert-success">
    <a class="close" data-dismiss="alert" href="#">×</a>
    <span class="message">
      The paste has been removed
    </span>
  </p>
% elif confirmation == False:
  <p class="alert alert-error">
    <a class="close" data-dismiss="alert" href="#">×</a>
    <strong class="title">Couldn't remove the paste</strong>
    <span class="message">
      An error occured during deletion
    </span>
  </p>
% end
  


<form class="form-horizontal" method='post' action='/admin/{{ admin_url }}'>
  <div class="form-group">
    <label for="inputEmail" class="control-label col-xs-2">Paste's uuid</label>
    <div class="col-xs-10">
      <input type="text" class="form-control" id="inputUuid" name='inputUuid' placeholder="uuid">
    </div>
  </div>

  <div class="form-group">
    <label for="inputPassword" class="control-label col-xs-2">Password</label>
    <div class="col-xs-10">
      <input type="password" class="form-control" id="inputPassword" name='inputPassword' placeholder="Password">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-xs-offset-2 col-xs-10">
      <button type="submit" class="btn btn-primary">Login</button>
    </div>
  </div>

</form>

% rebase("base", settings=settings, pastes_count=pastes_count)
