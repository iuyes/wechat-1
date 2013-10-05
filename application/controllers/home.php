<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH.'libraries/simple_html_dom.php';
/**
* 
*/
class pageOfCateory 
{
	function __construct($category)
	{
		$this->category = $category;
		$this->setHtmlDom(1);
		$this->setTotalPageNum();
		//echo 'pageNum' . $this->totalPageNum;
	}
	// 总页数
	private $totalPageNum = '';
	// 获取的DOM对象
	private $htmlDOM = '';
	// url prefix
	//private $urlPrefix = 'http://www.anyv.net/index.php/category-1';
	private $urlPrefix = 'http://www.weixinhou.com/category/3619/0/vitality';
	// 类别对应的url上的id
	private $category = '';
	// 当前页
	private $pageNum = 0;
	// 某个类别中的某一页里的链接集合
	private $links = array();
	// 链接容器
	private $linkContainer = '.wx-list-1';

	// 从页面中获取链接集合赋给links
	//解析html页面
	private function setHtmlDom($pageNum)
	{
		$urlParams = $pageNum == 1 ? '#mark' : '/'.$pageNum.'#mark';

		$url = $this->urlPrefix . $urlParams;
		//$url = $this->urlPrefix;
		$this->htmlDOM = file_get_html($url);
	}
	//获取详细信息页面url
	private function getLinksFromCurrentPage()
	{
		$li = $this->htmlDOM
					->find($this->linkContainer,0)
					->find('div');

		foreach ($li as $l) {
			array_push($this->links, $l->find('.pic',0)->href);
		}		
	}

	// 访问总页数的接口
	public function getTotalPageNum()
	{
		return $this->totalPageNum;
	}
	//获取当前页面分页数
	private function setTotalPageNum()
	{
		$childList = array();
		$childNodes = $this->htmlDOM
							->find('.page-num',0)
							->childNodes();
		$Nodes = $childNodes[count($childNodes)-2];
		$this->totalPageNum = $Nodes->plaintext;
	}
	/*
	*	从已经抓取的链接中获取信息
	*/
	private function getInfomationFormLinks()
	{
		set_time_limit(0);
		$model = array();
		if(count($this->links))
		{
			$data = array();

			foreach ($this->links as $links) {
				$html = file_get_html($links);
				if(!($html->find('.dialog'))){
				//$webChatInfo['name'] = $html->find($root_SLT,0)
											// ->find($extInfo_SLT,0)
											// ->first_child()
											// ->plaintext;

				//$webChatInfo['content'] = $html->find($root_SLT,0)
												// ->find($extInfo_SLT,0)
												// ->plaintext;

				// $id = $html->find($root_SLT,0)->find($extInfo_SLT,0)->plaintext;
				// $id = preg_replace('/[\x{4e00}-\x{9fa5}]/iu', '',$id);
				// $id = preg_replace('/[,:：]/', '', $id);
				// $id = preg_replace("/<(.*?)>/","", $id); 
				// $webChatInfo['wechatid'] = trim($id);

				$webChatInfo['name']=$html->find('.app-txt',0)->find('.name',0)->plaintext;
				//获取微信id
				$id = $html->find('.app-dati',0)->find('li',0)->last_child()->plaintext;
				$webChatInfo['wechatid'] = trim($id);
				//$children = $html->find($root_SLT,0)->childNodes();
				// 获取微信账号的描述
				$des = $html->find('.acc-desc',0)->find('p',0)->plaintext;
				// $des = '';
				// foreach ($children as $val) {
				// 	if(!$val->hasAttribute('id') && !$val->hasAttribute('class')) {
				// 		$des .= $val->plaintext;
				// 	}
				// }
				//描述信息
				$webChatInfo['des'] = $des;
				//图片
				$webChatInfo['codeimg'] = $html->find('.code-img',0)->find('img',0) 
										? $html->find('.code-img',0)->find('img',0)->src 
										:  '';

				$webChatInfo['codethumb'] = str_replace('.jpg', '.thumb.jpg', $webChatInfo['codeimg']);
				$webChatInfo['date'] = time();
				array_push($data, $webChatInfo);

				echo $webChatInfo['name'] . '--'.$webChatInfo['wechatid'].'--'. $webChatInfo['des'].' '. count($data) . '<br/>';
				flush();
				ob_flush();
				}
			}
			return $data;
			// var_dump($data);
			// foreach ($data as $d) {
			// 	$ret['wechatid'] = $d['wechatid'];
			// 	$ret['wechatdes'] = $d['des'];
			// 	$ret['date'] = time();
			// 	$ret['imgurl'] = $d['codeimg'];

			// 	$this->storeToDB($ret);
			// }
		}
	}

	public function getData()
	{
		$currentPage = 1;
		$i = 0;
		while ($currentPage <= $this->totalPageNum) {
			$this->setHtmlDom($currentPage);
			$this->getLinksFromCurrentPage();
			$currentPage++;
			$i++;
			//echo 'forTime' . $i;
		}
		return $this->getInfomationFormLinks();
	}

}
class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		//$this->generateUrl();
		//$this->load->model('Wechat_model','model');
	}

	private $categoryPageNum = 0;

	//private $catePrefix = "http://www.anyv.net/index.php/category-";
	private $catePrefix = 'http://www.weixinhou.com/category/';
	private $urlArr = array();

	private $categoryArray = array(
			//交友社区
			'3619/0/vitality',
			//资讯阅读
			'2',
			//影音娱乐
			'51',
			//生活购物
			'19',
			//网络科技
			'3',
			//文化教育
			'20',
			//本地服务
			'',
			//网站相关
		);

	private function generateUrl() {
		foreach ($this->categoryArray as $id) {
			array_push($this->urlArr, $this->catePrefix . $id);
		}
		print_r($this->urlArr);
	}

	public function index()
	{
		header("Content-type: text/html; charset=utf-8");
		// $beginPage = 1;
		$handler = new pageOfCateory(1);
		// $totalPageNum = $handler->getTotalPageNum();
		// while ($beginPage <= $totalPageNum) {
			
		// }
		$data = $handler->getData();
		foreach ($data as $d) {
			$ret['wechatid'] = $d['wechatid'];
			$ret['wechatdes'] = $d['des'];
			//$ret['date'] = time();
			$ret['imgurl'] = $d['codeimg'];

			//$this->storeToDB($ret);
		}
	}

	private function storeToDB($data)
	{
		$this->model->storeWechatInfo($data);
	}

	public function dbTest() 
	{
		//$this->load->model('Wechat_model','model');
		// $d['wechatid'] = 'fuck';
		// $d['des'] = 'fuck you';
		// $d['codeimg'] = 'http://fuck.com';

		// $ret['wechatid'] = $d['wechatid'];
		// $ret['wechatdes'] = $d['des'];
		// $ret['date'] = time();
		// $ret['imgurl'] = $d['codeimg'];

		// $this->model->storeWechatInfo($ret);
	}
}