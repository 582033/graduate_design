<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "home";
$route['404_override'] = '';

$route['admin'] = "admin/admin/index";
$route['admin/category'] = "admin/admin/category";
$route['admin/category/add'] = "admin/admin/category/add_category";
$route['admin/category/(:num)'] = "admin/admin/category/$1";
$route['admin/topic'] = "admin/admin/topic";
$route['admin/topic/add'] = "admin/admin/add_topic";
$route['admin/topic/(:num)'] = "admin/admin/picture/$1";
$route['admin/topic/(:num)/edit'] = "admin/admin/topic/$1";
$route['admin/picture/(:num)'] = "admin/admin/pic_edit/$1";
$route['admin/picture/add'] = "admin/admin/pic_edit";
$route['admin/setcover/(:num)/(:num)'] = "admin/admin/setcover/$1/$2";
$route['admin/logout'] = "admin/login/logout";
$route['cate/(:num)'] = "home/index/$1";
$route['topic/(:num)'] = "home/topic/$1";



/* End of file routes.php */
/* Location: ./application/config/routes.php */
