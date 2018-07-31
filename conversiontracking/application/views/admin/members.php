<div class="white-area-content">
<div class="db-header clearfix">
    <div class="page-header-title"> <span class="glyphicon glyphicon-user"></span> <?php echo lang("ctn_1") ?></div>
    <div class="db-header-extra form-inline">
        <div class="form-group has-feedback no-margin">
<div class="input-group">
<input type="text" class="form-control input-sm" placeholder="<?php echo lang("ctn_354") ?>" id="form-search-input" />
<div class="input-group-btn">
    <input type="hidden" id="search_type" value="0">
        <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
        <ul class="dropdown-menu small-text" style="min-width: 90px !important; left: -90px;">
          <li><a href="#" onclick="change_search(0)"><span class="glyphicon glyphicon-ok" id="search-like"></span> <?php echo lang("ctn_355") ?></a></li>
          <li><a href="#" onclick="change_search(1)"><span class="glyphicon glyphicon-ok no-display" id="search-exact"></span> <?php echo lang("ctn_356") ?></a></li>
          <li><a href="#" onclick="change_search(2)"><span class="glyphicon glyphicon-ok no-display" id="user-exact"></span> <?php echo lang("ctn_357") ?></a></li>
          <li><a href="#" onclick="change_search(3)"><span class="glyphicon glyphicon-ok no-display" id="fn-exact"></span> <?php echo lang("ctn_358") ?></a></li>
          <li><a href="#" onclick="change_search(4)"><span class="glyphicon glyphicon-ok no-display" id="ln-exact"></span> <?php echo lang("ctn_359") ?></a></li>
          <li><a href="#" onclick="change_search(5)"><span class="glyphicon glyphicon-ok no-display" id="role-exact"></span> <?php echo lang("ctn_360") ?></a></li>
          <li><a href="#" onclick="change_search(6)"><span class="glyphicon glyphicon-ok no-display" id="email-exact"></span> <?php echo lang("ctn_361") ?></a></li>
        </ul>
      </div><!-- /btn-group -->
</div>
</div>

    <input type="button" class="btn btn-primary btn-sm" value="<?php echo lang("ctn_73") ?>" data-toggle="modal" data-target="#memberModal" />
</div>
</div>

<ol class="breadcrumb">
  <li><a href="<?php echo site_url() ?>"><?php echo lang("ctn_2") ?></a></li>
  <li><a href="<?php echo site_url("admin") ?>"><?php echo lang("ctn_1") ?></a></li>
  <li class="active"><?php echo lang("ctn_74") ?></li>
</ol>

<p><?php echo lang("ctn_75") ?></p>


<table id="member-table" class="table table-striped table-hover table-bordered">
<thead>
<tr class="table-header"><td><?php echo lang("ctn_191") ?></td><td><?php echo lang("ctn_358") ?></td><td><?php echo lang("ctn_359") ?></td><td><?php echo lang("ctn_361") ?></td><td><?php echo lang("ctn_322") ?></td><td><?php echo lang("ctn_194") ?></td><td><?php echo lang("ctn_195") ?></td><td><?php echo lang("ctn_52") ?></td></tr>
</thead>
<tbody>
</tbody>
</table>

</div>


<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo lang("ctn_73") ?></h4>
      </div>
      <div class="modal-body">
      <?php echo form_open(site_url("admin/add_member_pro"), array("class" => "form-horizontal")) ?>         
			<div class="form-group">
                    <label for="employee-id" class="col-md-3 label-heading"><?php echo lang("ctn_1551") ?></label>
                    <div class="col-md-9">
                        <input type="text" class="form-control required digits" id="employee-id" name="employee_id" maxlength="6">
                    </div>
            </div>
			<div class="form-group">
                    <label for="email-in" class="col-md-3 label-heading"><?php echo lang("ctn_78") ?></label>
                    <div class="col-md-9">
                        <input type="email" class="form-control" id="email-in" name="email">
                    </div>
            </div>
            <div class="form-group">

                        <label for="username-in" class="col-md-3 label-heading"><?php echo lang("ctn_77") ?></label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="username" name="username">
                            <div id="username_check"></div>
                        </div>
            </div>
            <div class="form-group">

                        <label for="password-in" class="col-md-3 label-heading"><?php echo lang("ctn_87") ?></label>
                        <div class="col-md-9">
                            <input type="password" class="form-control" id="password-in" name="password" value="">
                        </div>
                </div>

                <div class="form-group">

                        <label for="cpassword-in" class="col-md-3 label-heading"><?php echo lang("ctn_88") ?></label>
                        <div class="col-md-9">
                            <input type="password" class="form-control" id="cpassword-in" name="password2" value="">
                        </div>
                </div>

                <div class="form-group">
                        <label for="name-in" class="col-md-3 label-heading"><?php echo lang("ctn_79") ?></label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="name-in" name="first_name">
                        </div>
                </div>
                <div class="form-group">
                        <label for="name-in" class="col-md-3 label-heading"><?php echo lang("ctn_80") ?></label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="name-in" name="last_name">
                        </div>
                </div>
				<div class="form-group">
					<label for="designation" class="col-md-3 label-heading"><?php echo lang("ctn_1552") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required" id="designation" name="designation" maxlength="128">
					</div>
				</div> 
				<div class="form-group">
					<label for="department" class="col-md-3 label-heading"><?php echo lang("ctn_1553") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required" id="department" name="department" maxlength="128">
					</div>
				</div> 
				<div class="form-group">
					<label for="category" class="col-md-3 label-heading"><?php echo lang("ctn_1554") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required" id="category" name="category" maxlength="128">
					</div>
				</div> 
				<div class="form-group">
					<label for="doj" class="col-md-3 label-heading"><?php echo lang("ctn_1555") ?></label>
					<div class="col-md-9">
						<input name="doj" class="form-control datepicker" id="doj" type="text">
					</div>
				</div>	
				<div class="form-group">
					<label for="reporting" class="col-md-3 label-heading"><?php echo lang("ctn_1556") ?></label>
					<div class="col-md-9">
						<input type="text" class="form-control required" id="reporting" name="reporting" maxlength="128">
					</div>
				</div> 
				<div class="form-group">
					<label for="gender" class="col-md-3 label-heading"><?php echo lang("ctn_1557") ?></label>
					<div class="col-md-9 radio">
						<label>
							<input name="gender" id="male" value="male" type="radio">
							Male
						</label>
						<label>
							<input name="gender" id="female" value="female" type="radio">
							Female
						</label>
					</div>
					
				</div>  
				<div class="form-group">
					<label for="mobile" class="col-md-3 label-heading"><?php echo lang("ctn_1558") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required digits" id="mobile" name="mobile" maxlength="10">
					</div>
				</div>	
				<div class="form-group">
					<label for="bloodGroup" class="col-md-3 label-heading"><?php echo lang("ctn_1559") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required" name="bloodGroup" maxlength="128">
					</div>
				</div>  
				<div class="form-group">
					<label for="skillSet" class="col-md-3 label-heading"><?php echo lang("ctn_1560") ?></label>
					<div class="col-md-9">
					<input type="text" class="form-control required" name="skillSet" maxlength="128">
					</div>
				</div> 				
                <div class="form-group">
					<label for="name-in" class="col-md-3 label-heading"><?php echo lang("ctn_322") ?></label>
					<div class="col-md-9">
						<select name="user_role" class="form-control">
						<option value="0" selected><?php echo lang("ctn_471") ?></option>
						<?php foreach($user_roles->result() as $r) : ?>
							<option value="<?php echo $r->ID ?>"><?php echo $r->name ?></option>
						<?php endforeach; ?>
						</select>
					</div>
                </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang("ctn_60") ?></button>
        <input type="submit" class="btn btn-primary" value="<?php echo lang("ctn_61") ?>" />
        <?php echo form_close() ?>
      </div>
    </div>
  </div>
</div>


<div class="import_projects">
<div class="page-header-title"> <span class="glyphicon glyphicon-import"></span> Import a CSV file</div>
			<?php if($this->session->flashdata('success')):?>
			<div class="alert alert-success alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<?php echo $this->session->flashdata('success'); ?>
			</div>
			<?php endif; ?>
			<?php if($this->session->flashdata('error')):?>
				<div class="alert alert-danger alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<?php echo $this->session->flashdata('error'); ?>
				</div>
			<?php endif; ?>
			<div class="admin_row equal_height">
				<br><br>
				<div align="center">
					<!-- <form action="<?php echo site_url("admin/import") ?>" method="post" name="upload_csv" enctype="multipart/form-data" class="import_form"> -->
					<?php echo form_open(site_url("admin/import"), array("class" => "form-horizontal","enctype" =>"multipart/form-data", "name" => "upload_csv", "method" => "post")) ?>    
						<input type="file" name="file" id="file" class="import_file">
						<button type="submit" id="enseignes_import" name="import" title="Import Csv" class="import_btn btn btn-primary button-loading">Import Csv</button>
						<!-- </form> -->
						<a id="sample_csv" class="btn btn-primary" href="<?php echo base_url(); ?>sample_csv/user_list.csv" title="Example of csv file">Example of csv file</a>
						<br><br>
				</div>
			<div class="loader"></div>
			<style type="text/css">
			${demo.css}
			</style>
			</div>
</div>

<script type="text/javascript">
$(document).ready(function() {

   var st = $('#search_type').val();
    var table = $('#member-table').DataTable({
        "dom" : "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-5'i><'col-sm-7'p>>",
      "processing": false,
        "pagingType" : "full_numbers",
        "pageLength" : 15,
        "serverSide": true,
        "orderMulti": false,
        "order": [
          [4, "asc" ]
        ],
        "columns": [
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        { "orderable" : false }
    ],
        "ajax": {
            url : "<?php echo site_url("admin/members_page") ?>",
            type : 'GET',
            data : function ( d ) {
                d.search_type = $('#search_type').val();
            }
        },
        "drawCallback": function(settings, json) {
        $('[data-toggle="tooltip"]').tooltip();
      }
    });
    $('#form-search-input').on('keyup change', function () {
    table.search(this.value).draw();
});

} );
function change_search(search) 
    {
      var options = [
        "search-like", 
        "search-exact",
        "user-exact",
        "fn-exact",
        "ln-exact",
        "role-exact",
        "email-exact"
      ];
      set_search_icon(options[search], options);
        $('#search_type').val(search);
        $( "#form-search-input" ).trigger( "change" );
    }

function set_search_icon(icon, options) 
    {
      for(var i = 0; i<options.length;i++) {
        if(options[i] == icon) {
          $('#' + icon).fadeIn(10);
        } else {
          $('#' + options[i]).fadeOut(10);
        }
      }
    }
</script>
<script type="text/javascript">
$(document).ready(function () {
	$(window).load(function() { 
		$('.loader').hide();
	});
	$(document).on("click", "#enseignes_import", function () {
		$('.loader').show();
		return true;
	}); 
});
</script>
