Free:-
https://sourceforge.net/projects/qdpm/?source=typ_redirect
https://sourceforge.net/projects/myt/?source=directory
https://sourceforge.net/projects/teamlab/?source=directory
https://sourceforge.net/projects/projectorria/?source=directory

https://codecanyon.net/item/codeigniter-simple-user-manager-material-design/20787619?s_rank=8
https://codecanyon.net/item/brainworx-project-management-brainstorming-/3130397?s_rank=131
https://codecanyon.net/item/zestpro-project-management/17841317?s_rank=171
https://codecanyon.net/item/power-crm-open-source-crm-php-erp/19744310?s_rank=22
https://codecanyon.net/item/zestpro-project-management/17841317?s_rank=26
https://codecanyon.net/item/quantik-project-manager-crm/16924971?s_rank=6

https://codecanyon.net/item/titan-project-management-system/18377579?s_rank=37
sangeethav1321
Sanjoy1321@

Paid:-
https://codecanyon.net/item/hrms-task-management-application/20561402?s_rank=1
ctsadmin@spi-global.com
admin@123
ctsadmin@spi-global.com
ctsadmin@123
manager@spi-global.com
manager@123

ctsm:-
123456
admin@123
Conversion Tracking System (Titan):-
Full Project (localhost):-
Database name: conversiontracking
Site link: localhost:81/conversiontracking

How to install?
1.)	D:\spi_rad_php\htdocs\conversiontracking\application\config\config.php (26)
/* $config['base_url'] = 'http://www.example.com/';
*/
$base  = "http://".$_SERVER['HTTP_HOST'];
$base .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);
$config['base_url'] = $base;

2.)	D:\spi_rad_php\htdocs\conversiontracking\application\config\database.php (78)
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'conversiontracking',
3.)	Now load the site url : localhost:81/conversiontracking

You will get the login page and the comment below:
Great job on uploading all the files and setting up the site correctly! Let's now create the Admin account and set the default settings. Click here! This message will disappear once you have run the install process.
4.)	Click on the above text(comment) and it will lead you to the install page:-
Install Application 
This is the install file for the TITAN System. You should delete this file after you have setup your application: application/controllers/Install.php  (Password: admin@123)
Install
Admin Username REQUIRED  
Admin Email REQUIRED  
Admin Password  
Repeat Admin Password  
Site Name  
Site Description  

Once done, don’t forgot to delete or rename the file Install.php (I renamed it as “Install.org_delete”).

5.) Registering for the default user account? Or you can login as admin?
Admin login method:-
Admin/admin@123
Or
ctsadmin@spi-global.com/admin@123

Register method:- for default user
v.sangeetha@spi-global.com
SangeethaV
Sangeetha@123
Sangeetha
Vengadassalam

Modification of the Titan System to my needs?
1.)	 Creating new user role:-
Can be done only by admin login:
Go to admin panel -> user roles: 
Role name: Employee
Current Permissions: Admin Members, Project Worker

2.)	 Creating new member for role “Employee”:-
Can be done only by admin login:
Go to admin panel -> Manage members->Add member: 
Role name: Employee
And fill all the required fields.
Eg:
bala@spi-global.com
Balaji
Balaji@123
Prushoth
Employee

3.) Adding extra fields in the add member/edit member?

Below are the 10 extra fields for “add new members”:-
Employee Id
Designation
Department
Category
Date of Joining
Immediate Reporting
Gender
Mobile Number
Blood Group
Skill set

How to add extra fields for “add member”?
a.)	Go to :-  application/controllers/Admin.php
       Modified the function (add_member_pro)
b.)	Go to :-  application/models/Register_model.php
Added the new function (check_employee_id_is_free)
c.)	Go to :-  application/views/Admin/members.php (at line: 58)
d.)	Go to:- application/language/english/content_lang.php (at line: 1647)	 
(from 1551 to 1560)
e.)	Go to:- application/language/english/error_lang.php (at line: 333)	 
(from 298 to 299)
f.)	added extra fields in table (Table: users)

How to add extra fields for “edit member”?
a.)	Go to :-  application/controllers/Admin.php
       Modified the function (edit_member_pro)
b.)	Go to :-  application/views/Admin/edit_member.php  (at line: 22)

4.) Changing the background of the login page?
D:\spi_rad_php\htdocs\conversiontracking\images\casey-horner-339855.jpg (6016 x 4016)
Image link from where I got: https://wallpaperscraft.com/download/autumn_road_rotate_marking_112086/6016x4016


5.)  Adding project title to the login page?
a.)  D:\spi_rad_php\htdocs\conversiontracking\application\views\login\index.php
Added below: 
<div id="project_title">Conversion Tracking System</div>
At line (14)

b.)	D:\spi_rad_php\htdocs\conversiontracking\styles\login_layout.css
Added below at last:
div#project_title {
    text-align: center;
    font-size: 16px;
    font-weight: bold;
    color: #29a79c;
    line-height: 50px;
}
6.) Adding Employee id field for the registration form?
A.)  D:\spi_rad_php\htdocs\conversiontracking\application\views\register\index.php
(17) added employee_id field
<div class="form-group login-form-area has-feedback">
                    <input type="text" class="form-control required digits" name="employee_id" placeholder="<?php echo lang("ctn_1551") ?>" id="employee-id" value="<?php if(isset($employee_id)) echo $employee_id; ?>" maxlength="6">
		            <i class="glyphicon glyphicon-user form-control-feedback login-icon-color" id="login-icon-employee-id"></i>
</div>

B.) Validating the employee_id field
D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Register.php
(560) added new function “check_employee_id()”
And 
In D:\spi_rad_php\htdocs\conversiontracking\application\views\register\index.php
(152) validation jquery for the employee id:
$('#employee-id').on("change", function() {……………….. });

7.)	Login using employee id?

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Login.php

Modified the functions :-
ajax_check_login() and pro() in file Login.php

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\models\Login_model.php
Added a new function: getUserByEmployeeId($employee_id) 

C.)	D:\spi_rad_php\htdocs\conversiontracking\application\language\english\content_lang.php
(340) modified:-
$lang['ctn_303'] = "Employee Id / Email / Username";

8.)	Adding custom field in user settings page? 

For below custom fields:
1.)	Employee Id
2.)	Designation
3.)	Department
4.)	Category
5.)	Date of Joining
6.)	Immediate Reporting
7.)	Gender
8.)	Mobile Number
9.)	Blood Group
10.)	Skill set

Sidebar: Settings

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\user_settings\index.php
Added the above mentioned custom fields in the form.

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\User_settings.php
Modified function “pro ()” and
Added/modified function “index ()” at line 28 as below:
$member = $this->user_model->get_user_by_id($this->user->info->ID);
		if ($member->num_rows() ==0 ) $this->template->error(lang("error_13"));
		
		$this->template->loadContent("user_settings/index.php", array(
			"invoice" => $invoice,
			"member" => $member->row(),
			"fields" => $fields
			)
		);

9.)	Import user/member/employee data?

Sidebar: Admin Panel -> Manage Members

A.)	D:\spi_rad_php\htdocs\conversiontracking \application\controllers\Admin.php
(2359)
New function “import ()” is added.

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\admin\members.php
(190)
New block section added: <div class="import_projects">…… </div>
And (292) added new script for the “loader” while importing.
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

C.)	D:\spi_rad_php\htdocs\conversiontracking\styles\layouts\titan\main.css
(350) added for loading while importing
/* loading */
.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url('../../../images/pageLoader.gif') 50% 50% no-repeat rgb(249,249,249);
    opacity: .8;
}
/* loading */

D.)	D:\spi_rad_php\htdocs\conversiontracking\images\pageLoader.gif (added newly).
E.)	http://loading.io/ (Good site for getting gif images)



10.)	Import projects data?

Sidebar: Projects -> Your Projects

A.)	D:\spi_rad_php\htdocs\conversiontracking \application\controllers\Projects.php
(1204)
New function “import ()” is added.

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\projects\index.php
(137)
New block section added: <div class="import_projects"> … </div>
And (251) added new script for the “loader” while importing.
<script type="text/javascript">
$(document).ready(function () {
	$(window).load(function() { 
		$('.loader').hide();
	});
	$(document).on("click", "#projects_import", function () {
		$('.loader').show();
		return true;
	}); 
});
</script>

C.)	D:\spi_rad_php\htdocs\conversiontracking\styles\layouts\titan\main.css
.import_projects .alert {
    margin: 20px 0 20px 0;
    float: left;
    width: 100%;
}


11.)	Footer Modification:-
A.)	D:\spi_rad_php\htdocs\ctracking\application\language\english\content_lang.php
(181) changed Made By    Developed By
$lang['ctn_170'] = "Developed By";

B.)	D:\spi_rad_php\htdocs\ctracking\application\views\layout\themes\titan_layout.php
(225) modified the footer contents.
<div id="footer" class="clearfix">
      <span class="pull-left">
		<?php echo lang("ctn_170") ?> <a title="SPi Global" href="https://www.spi-global.com/">SPi Global</a> <?php echo $this->settings->info->site_name ?> <!-- V<?php echo $this->settings->version ?> -->
	  </span> 
	  <span class="pull-right">
		<!-- <a href="<?php echo site_url("home/change_language") ?>"><?php echo lang("ctn_171") ?></a> -->
		<strong>Copyright &copy; 2018 - <a title="SPi Global" href="https://www.spi-global.com/">SPi Global</a>.</strong>
	  </span>
    </div>

12.)	Css for import button in Manage member page and Projects page?
D:\spi_rad_php\htdocs\conversiontracking\styles\layouts\titan\main.css
(384)
.import_projects {
    background: #ffffff;
    border-radius: 4px;
    padding: 20px 15px;
    border: 1px solid #d4dce2;
    margin: 10px 0 0 0;
}
.import_projects .admin_row.equal_height input#file {
    margin: 21px 0 15px 0;
    border: 1px solid #cccccc;
    padding: 15px;
}


13.)	Default logo and favicon modification:-

A.)	D:\spi_rad_php\htdocs\conversiontracking\uploads\default.png => default logo (user icon, project icon etc,.)
B.)	D:\spi_rad_php\htdocs\ctracking\images\favicon\   => changed all .png and .ico images.

14.)	To view these custom fields at the view member profile page:-

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\profile\index.php (83)
Displayed the below custom fields:-
1.)	Employee Id
2.)	Designation
3.)	Department
4.)	Category
5.)	Date of Joining
6.)	Immediate Reporting
7.)	Gender
8.)	Mobile Number
9.)	Blood Group
10.)	Skill set


15.)	Task assign to project planning:-
	Project Details				
	Customer				
*	Publisher				
	Project Manager				
*	Input	Single	Multiple		
*	Output	xml	pdf	epub	pdf & epub
	Assign	Single	Multiple		
	Complexity	Simple	Medium	Complex	HeavyComplex
*	Title				
*	ISBN/ISSN				
*	eISBN/eISSN				
	Author				
	Acronym				
	Units	Pages	Articles		
	Process Name				
	Price	 	 	 	
	Units	Pages	Articles	Hourly	

Projects:-
Project Name / Title
Project Icon
Customer
Publisher
ISBN/ISSN
eISBN/Eissn
Author
Acronym
Process Name
Project Manager

Tasks: -
Input
Output
Assigned to
Complexity
Unit Price
Total Pages
Total Articles
Calculated total Price => [Unit Price * Total Pages] or [Unit Price * Total Articles] => just show

Timer: - 
Hourly rate => for the corrections in the file (e.g.: 100 pages file has 10 pages correction, so to estimate rate we go for hourly rate calculation)

SOLUTION:-
16.)	Below are the extra custom fields added to the add projects form:-

A.)	Customer
B.)	Publisher
C.)	ISBN/ISSN
D.)	eISBN/Eissn
E.)	Author
F.)	Acronym
G.)	Process Name
H.)	Project Manager

1.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\projects\index.php (129) => added form fields for the above fields.
2.)	D:\spi_rad_php\htdocs\conversiontracking\application\language\english\content_lang.php
Added below:-
$lang['ctn_1561'] = "Customer";
$lang['ctn_1562'] = "Publisher";
$lang['ctn_1563'] = "ISBN/ISSN";
$lang['ctn_1564'] = "eISBN/Eissn";
$lang['ctn_1565'] = "Author";
$lang['ctn_1566'] = "Acronym";
$lang['ctn_1567'] = "Process Name";
$lang['ctn_1568'] = "Project Manager";
3.)	Add the new fields to the database table “projects”, (added 8 columns after catid is shown below):-                                                   (Null => Yes)
7	customer	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	8	publisher	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	9	isbn	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	10	eisbn	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	11	author	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	12	acronym	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	13	process_name	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More

 	14	pm	varchar(128)	utf8_unicode_ci		Yes	None			  Change
  Drop
•	  More


4.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Projects.php
customer 
publisher 
isbn
eisbn
author
acronym
process_name
pm

Modified the function “add_project ()” for the above fields.

17.)	Below are the extra custom fields added to the edit projects form:-

1.)	customer 
2.)	publisher 
3.)	isbn
4.)	eisbn
5.)	author
6.)	acronym
7.)	process_name
8.)	pm

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\models\Projects_model.php
Modified the function “get_project ()” for the above fields.
B.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Projects.php
Modified the function “edit_project_pro()” for the above fields.
C.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\projects\edit.php(61) => added form fields for the above fields.

18.)	To view these custom fields at the view projects page:-

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\projects\view.php (31)
Displayed the below custom fields:-
customer 
publisher 
isbn
eisbn
author
acronym
process_name
pm

19.)	Below are the extra custom fields added to the add tasks form:-
input			
output
complexity
unitPricePerPage
unitPricePerArticle
totalPages
totalArticles
totalPagesPrice
totalArticlesPrice

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Tasks.php (433)
Modified the existing function “add_task_process ()”

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\tasks\add.php (27)
Added the above custom fields in the form and added the script below at last
	$('#unitPricePerPage, #totalPages').keyup(function(){
		var rateperpage = parseFloat($('#unitPricePerPage').val()) || 0;
		var total_pages = parseFloat($('#totalPages').val()) || 0;
		$('#totalPagesPrice').val(rateperpage * total_pages);    
	});
	$('#unitPricePerArticle, #totalArticles').keyup(function(){
		var rateperarticle = parseFloat($('#unitPricePerArticle').val()) || 0;
		var total_articles = parseFloat($('#totalArticles').val()) || 0;
		$('#totalArticlesPrice').val(rateperarticle * total_articles);    
	});

C.)	D:\spi_rad_php\htdocs\conversiontracking\application\language\english\content_lang.php
Added from “ctn_1569” to “ctn_1577”
D.)	In the Database, table: project_tasks
Added the 9 custom fields like below after the column description:-
 
5	input 	varchar(128) 	utf8_unicode_ci 		Yes	None 			  Change 
  Drop 
•	  More 

 
6	output 	varchar(128) 	utf8_unicode_ci 		Yes	None 			  Change 
  Drop 
•	  More 

 
7	complexity 	varchar(128) 	utf8_unicode_ci 		Yes	None 			  Change 
  Drop 
•	  More 

 
8	unitPricePerPage 	decimal(10,2) 			No	None 			  Change 
  Drop 
•	  More 

 
9	unitPricePerArticle 	decimal(10,2) 			No	None 			  Change 
  Drop 
•	  More 

 
10	totalPages 	int(11) 			No	None 			  Change 
  Drop 
•	  More 

 
11	totalArticles 	int(11) 			No	None 			  Change 
  Drop 
•	  More 

 
12	totalPagesPrice 	decimal(10,2) 			No	None 			  Change 
  Drop 
•	  More 

 
13	totalArticlesPrice 	decimal(10,2) 			No	None 			  Change 
  Drop 
•	  More 



20.)	Below are the extra custom fields added to the edit tasks form:-
input			
output
complexity
unitPricePerPage
unitPricePerArticle
totalPages
totalArticles
totalPagesPrice
totalArticlesPrice

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Tasks.php (748)
Modified the existing function “edit_task_pro ($taskid) { … }”

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\tasks\edit_task.php (26) Added the above custom fields in the form and added the script below at last
	$(document).ready(function() {
	$('#unitPricePerPage, #totalPages').keyup(function(){
		var rateperpage = parseFloat($('#unitPricePerPage').val()) || 0;
		var total_pages = parseFloat($('#totalPages').val()) || 0;
		$('#totalPagesPrice').val(rateperpage * total_pages);    
	});
	$('#unitPricePerArticle, #totalArticles').keyup(function(){
		var rateperarticle = parseFloat($('#unitPricePerArticle').val()) || 0;
		var total_articles = parseFloat($('#totalArticles').val()) || 0;
		$('#totalArticlesPrice').val(rateperarticle * total_articles);    
	});
});	
21.)	Below are the extra custom fields added to the View the task:-

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\tasks\view_task.php(64)


22.)	Import Tasks data?

Sidebar: Tasks -> Your Project Tasks

A.)	D:\spi_rad_php\htdocs\conversiontracking\application\controllers\Tasks.php
(2791)
New function “import ()” is added.

B.)	D:\spi_rad_php\htdocs\conversiontracking\application\views\tasks\index.php
(64)
New block section added: <div class="import_projects"> … </div>
And (157) added new script for the “loader” while importing.
<script type="text/javascript">
$(document).ready(function () {
	$(window).load(function() { 
		$('.loader').hide();
	});
	$(document).on("click", "#tasks_import", function () {
		$('.loader').show();
		return true;
	}); 
});
</script>























Not needed:-
Removed for now in ctracking alone for showing demo:-
1.)	Commented below in file: (removing some fields in the add project popup)
D:\spi_rad_php\htdocs\ctracking\application\views\projects\index.php (101)
<!-- <h4><?php echo lang("ctn_1483") ?></h4>
            <div class="form-group">
                    <label for="p-in" class="col-md-4 label-heading"><?php echo lang("ctn_1484") ?></label>
                    <div class="col-md-8">
                         <select name="templates[]" multiple class="form-control chosen-select-no-single" id="ug" data-placeholder="<?php echo lang("ctn_1485") ?> ...">
                            <?php foreach($templates->result() as $r) : ?>
                                <option value="<?php echo $r->ID ?>"><?php echo $r->name ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
            </div>
            <h4><?php echo lang("ctn_779") ?></h4>
            <div class="form-group">
                    <label for="p-in" class="col-md-4 label-heading"><?php echo lang("ctn_780") ?></label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" name="calendar_id" value="">
                        <span class="help-block"><?php echo lang("ctn_781") ?></span>
                    </div>
            </div>
            <div class="form-group">
                    <label for="p-in" class="col-md-4 label-heading"><?php echo lang("ctn_782") ?></label>
                    <div class="col-md-8">
                        <input type="text" class="form-control jscolor" name="calendar_color" value="fd7d82">
                    </div>
            </div>
			-->

2.)	Hiding using css (side bar)
styles/layout/titan/main.css (see at the last: hiding for now).
Setting display: none for few elements.
3.)	Hiding using css (user setting page, “User data” and “Paying Account” button)
styles/layout/titan/main.css (see at the last: hiding for now).
Setting display: none for few elements.
4.)	Hiding using comment for the user settings page:-
Hiding the Paying account and user data button in the user settings page:
D:\spi_rad_php\htdocs\ctracking\application\views\user_settings\index.php (5 & 6) hided for the demo showing purpose:-
<!-- <a href="<?php echo site_url("user_settings/user_data") ?>" class="btn btn-info btn-sm"><?php echo lang("ctn_1511") ?></a> 
	<a href="<?php echo site_url("user_settings/paying_account") ?>" class="btn btn-info btn-sm"><?php echo lang("ctn_1329") ?></a> -->

