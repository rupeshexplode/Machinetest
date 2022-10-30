<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
ini_set('display_errors', 1);

class Adding_products extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->database();
       
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->config->cache_query();
    }

    public function index()
    {
        
    }
    function product($para1 = '', $para2 = '', $para3 = '')
    {
        if ($para1 == 'do_add') {
            $options = array();
            if ($_FILES["images"]['name'][0] == '') {
                $num_of_imgs = 0;
            } else {
                $num_of_imgs = count($_FILES["images"]['name']);
            }
            $data['product_name']              = $this->input->post('product_name');
            $data['product_description']        = $this->input->post('product_description');
            $data['product_price']        = $this->input->post('product_price');
            $data['num_of_imgs']        = $num_of_imgs;
			$data['front_image']        = 0;
     
            $this->db->insert('product', $data);
            $id = $this->db->insert_id();
            $this->benchmark->mark_time();
            if(!demo()){
                $this->crud_model->file_up("images", "product", $id, 'multi');
            }
            recache();
        } else if ($para1 == "update") {
			
            $options = array();
            if ($_FILES["images"]['name'][0] == '') {
                $num_of_imgs = 0;
            } else {
                $num_of_imgs = count($_FILES["images"]['name']);
            }
            $num = $this->crud_model->get_type_name_by_id('product', $para2, 'num_of_imgs');
            $data['product_name'] = $this->input->post('product_name');
            $data['product_description']  = $this->input->post('product_description');
            $data['product_price']  = $this->input->post('product_price');
            $data['num_of_imgs']  = $num + $num_of_imgs;
            $data['front_image']  = 0;
            if(!demo()){
                $this->crud_model->file_up("images", "product", $para2, 'multi');
            }
            $this->db->where('product_id', $para2);
            $this->db->update('product', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['product_data'] = $this->db->get_where('product', array(
                'product_id' => $para2
            ))->result_array();
            $this->load->view('back/adding_products/product_edit', $page_data);
        } elseif ($para1 == 'delete') {
            if(!demo()){
                $this->crud_model->file_dlt('product', $para2, '.jpg', 'multi');
                $this->db->where('product_id', $para2);
                $this->db->delete('product');
                //$this->crud_model->set_category_data(0);
                recache();
            }
        } elseif ($para1 == 'list') {
		
            $this->db->order_by('product_id', 'desc');
            $page_data['all_product'] = $this->db->get('product')->result_array();
            $this->load->view('back/adding_products/product_list', $page_data);
        } elseif ($para1 == 'list_data') {
			
            $limit      = $this->input->get('limit');
            $order      = $this->input->get('order');
            $offset     = $this->input->get('offset');
            $sort       = $this->input->get('sort');
            
            $total      = $this->db->get('product')->num_rows();
            $this->db->limit($limit);
            $sort = 'product_id';
            $order = 'DESC';
            $this->db->order_by($sort,$order);
            $products   = $this->db->get('product', $limit, $offset)->result_array();
            $data       = array();
            foreach($products as $row) {

                $res['image']  = '<img class="img-sm" style="height:auto !important; border:1px solid #ddd;padding:2px; border-radius:2px !important;" src="'.$this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','one').'"  />';
                $res['product_name']  = $row['product_name'];
                $res['product_description']  = $row['product_description'];
                $res['product_price']  = $row['product_price'];
                $res['options'] = "<a class=\"btn btn-success btn-xs btn-labeled fa fa-wrench\" data-toggle=\"tooltip\"
                                onclick=\"ajax_set_full('edit','".translate('edit_product')."','".translate('successfully_edited!')."','product_edit','".$row['product_id']."');proceed('to_list');\" data-original-title=\"Edit\" data-container=\"body\">
                                    ".translate('edit')."
                            </a>
                            <a onclick=\"delete_confirm('".$row['product_id']."','".translate('really_want_to_delete_this?')."')\"
                                class=\"btn btn-danger btn-xs btn-labeled fa fa-trash\" data-toggle=\"tooltip\" data-original-title=\"Delete\" data-container=\"body\">
                                    ".translate('delete')."
                            </a>";
                $data[] = $res;
            }
            $result = array(
                             'total' => $total,
                             'rows' => $data
                           );

            echo json_encode($result);

        } else if ($para1 == 'dlt_img') {
            
		$a = explode('_', $para2);
		$this->crud_model->file_dlt('product', $a[0], '.jpg', 'multi', $a[1]);
		recache();
            
        } elseif ($para1 == 'add') {
            $this->load->view('back/adding_products/product_add');
        }   
		else {
            $page_data['page_name']   = "product";
            $page_data['all_product'] = $this->db->get('product')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
}
