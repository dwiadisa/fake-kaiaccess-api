<?php
require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

class Manifest extends REST_Controller
{

    public function __construct($config = 'rest')
    {
        parent::__construct($config);
    }
    // fungsi read (get) API
    public function index_get()
    {
        $id = $this->get('id_manifest');
        if ($id == '') {
            $manifest = $this->db->get('data_manifest_lengkap')->result();
        } else {
            $this->db->where('id_manifest', $id);
            $manifest = $this->db->get('data_manifest_lengkap')->result();
        }

        $this->response($manifest, 200);
    }
    // fungsi create (post) API
    public function index_post()
    {
        $random = strtoupper(random_string('alnum'));
        $data = array(
            'kode_reservasi' =>  $random,
            'relasi' => $this->post('relasi'),
            'penumpang' => $this->post('penumpang'),
            'tanggal_berangkat' => $this->post('tanggal_berangkat'),

        );
        $insert = $this->db->insert('data_manifest', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 200));
        }
    }
    // funngsi update (put) pada API
    public function index_put()
    {

        $id = $this->put('id');

        $data = array(
            'id_manifest' => $this->put('id'),
            'relasi' => $this->put('relasi'),
            'penumpang' => $this->put('penumpang'),
            'tanggal_berangkat' => $this->put('tanggal_berangkat'),

        );
        $this->db->where('id_manifest', $id);
        $update = $this->db->update('data_manifest', $data);

        if ($update) {
            $this->response($data, 200);
            # code...
        } else {
            # code...
            $this->response(array('status' => 'fail', 502));
        }
    }
    // fungsi delete pada API

    public function index_delete()
    {
        $id = $this->delete('id');
        $this->db->where('id_manifest', $id);
        $delete = $this->db->delete('data_manifest');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
}

/* End of file Manifest.php and path \application\controllers\Manifest.php */
