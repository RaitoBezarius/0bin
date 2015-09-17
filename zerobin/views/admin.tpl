<h2 class="page-header">Admin page</h2>

% if confirmation == True:
  <div class="alert alert-success">
    <a class="close" data-dismiss="alert" href="#">×</a>
    <span class="message">
      The paste has been removed
    </span>
  </p>
% elif confirmation == False:
  <div class="alert alert-error">
    <a class="close" data-dismiss="alert" href="#">×</a>
    <strong class="title">Couldn't remove the paste</strong>
    <span class="message">
      An error occured during deletion
    </span>
  </p>
% end



<form class="form-horizontal" method='post' action='/admin/{{ admin_url }}'>
  <div class="control-group">
    <label for="inputEmail" class="control-label">Paste's uuid</label>
    <div class="controls">
      <input type="text" class="input-medium" id="inputUuid" name='inputUuid' placeholder="uuid">
    </div>
  </div>

  <div class="control-group">
    <label for="inputPassword" class="control-label">Admin password</label>
    <div class="controls">
      <input type="password" class="input-medium" id="inputPassword" name='inputPassword' placeholder="Password">
    </div>
  </div>

  <div class="form-actions">
      <button type="submit" class="btn btn-primary">Login</button>
  </div>

</form>

% rebase("base", settings=settings, pastes_count=pastes_count)
