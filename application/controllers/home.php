<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH.'libraries/simple_html_dom.php';
/**
* 
*/
/**
* 下载图片
* 功能：php完美实现下载远程图片保存到本地
* 参数：文件url,保存文件目录,保存文件名称，使用的下载方式
* 当保存文件名称为空时则使用远程文件原来的名称
*/

//获取详细信息
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
	private $urlPrefix = 'http://www.weixinhou.com/category/';//3457/0/vitality#mark';
	// 类别对应的url上的id
	private $category = '';
	// 当前页
	private $pageNum = 0;
	//分类页面url集合
	private $cateUrl = array();
	// 某个类别中的某一页里的链接集合
	private $links = array();
	// 链接容器
	private $linkContainer = '.wx-list-1';

	// 从页面中获取链接集合赋给links

	//解析分类页面html
	private function setHtmlDom($pageNum)
	{
		$urlParams = $pageNum == 1 ? '' : $pageNum;

		$url = $this->urlPrefix . $this->category . '/0/vitality/' . $urlParams . '#mark';
		echo '当前页面url：'.$url.'<br/>';
		//$url = $this->urlPrefix;
		$this->htmlDOM = file_get_html($url);
	}
	// 访问总页数的接口
	public function getTotalPageNum()
	{
		return $this->totalPageNum;
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
	//获取当前页面分页数
	private function setTotalPageNum()
	{
		$childList = array();
		$childNodes = $this->htmlDOM
							->find('.page-num',0)
							->childNodes();
		$Nodes = $childNodes[count($childNodes)-2];
		$this->totalPageNum = $Nodes->plaintext;
		echo '分页数：'.$this->totalPageNum.'<br/>';
	}
	/*
	*	从已经抓取的链接中获取详细信息
	*/
	private function getInfomationFormLinks()
	{
		set_time_limit(0);
		$model = array();
		if(count($this->links))
		{
			$data = array();

			foreach ($this->links as $links) {
				if($links){
					$html = file_get_html($links);
				}
				if($html&&!$html->find('.dialog')){

				$webChatInfo['name']=$html->find('.app-txt',0)->find('.name',0)->plaintext;
				//获取微信id
				$id = $html->find('.app-dati',0)->find('li',0)->last_child()->plaintext;
				$webChatInfo['wechatid'] = trim($id);
				// 获取微信账号的描述
				$des = $html->find('.acc-desc',0)->find('p',0)->plaintext;
				//描述信息
				$webChatInfo['des'] = $des;
				//图片url
				$webChatInfo['codeimg'] = $html->find('.code-img',0)->find('img',0) 
										? $html->find('.code-img',0)->find('img',0)->src 
										:  '';
				
				//下载图片
				$ext = strrchr($webChatInfo['codeimg'], '.');
				//存储路径
				$save_dir = $this->category.'/';
				//文件名
				$filename = md5(time() . 'www' . rand(1000,2000)) . $ext;
				//下载并存储图片
				$this->getImgByUrl($links,$webChatInfo['codeimg'],$save_dir,$filename);
				
				$webChatInfo['codethumb'] = str_replace('.jpg', '.thumb.jpg', $webChatInfo['codeimg']);
				$webChatInfo['type'] = $this->category;
				$webChatInfo['date'] = time();
				$webChatInfo['imgPath'] = $save_dir.$filename;
				array_push($data, $webChatInfo);

				echo '<span style=color:red;>'.count($data) . '、</span>' . $webChatInfo['name'] . '：<span style=color:blue;>'. $webChatInfo['wechatid'] . '</span> | <span style="color:lightblue";> '.$webChatInfo['des'].'</span> | <br/> <script>window.scrollTo(0,document.body.scrollHeight)</script>';
				
				flush();
				ob_flush();
				}
			}
			return $data;
			var_dump($data);
			// foreach ($data as $d) {
			// 	$ret['wechatid'] = $d['wechatid'];
			// 	$ret['wechatdes'] = $d['des'];
			// 	//$ret['date'] = time();
			// 	$ret['imgurl'] = $d['codeimg'];

			// 	$this->storeToDB($ret);
			// }
		}
	}
	//下载并保存图片
	public function getImgByUrl($pageUrl,$imgUrl,$save_dir,$filename){
		$ch = curl_init();
		if(!file_exists($save_dir) && !mkdir($save_dir,0777,true)){
			mkdir($save_dir,0777,true);
		}
		$fp = fopen($save_dir.$filename, "w");
		curl_setopt($ch, CURLOPT_FILE, $fp);
		$options = array(
			//需要抓取的图片路径
			CURLOPT_URL => $imgUrl,
			//是否当前页面输出
			CURLOPT_HEADER => false,
			//伪造  CURLOPT_REFERER 地址
			CURLOPT_REFERER=>$pageUrl,
			);
		curl_setopt_array($ch, $options);
		curl_exec($ch);
		curl_close($ch);
		fclose($fp);
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
		$this->load->model('Wechat_model','model');
	}

	private $categoryPageNum = 0;

	//private $catePrefix = "http://www.anyv.net/index.php/category-";
	private $catePrefix = 'http://www.weixinhou.com/category/';
	private $urlArr = array();

	private $categoryArray = array(
			//交友
			'3619',
			//资讯
			'3455',
			//娱乐
			'3457',
			//生活
			'3456',
			//网络
			'3461',
			//教育
			'3458',
			//本地
			'3459',
			//网站
			'3460'
		);

	private function generateUrl() {
		foreach ($this->categoryArray as $id) {
			array_push($this->urlArr, $this->catePrefix . $id . '/0/vitality#mark');
		}
		print_r($this->urlArr);
	}

	public function index()
	{
		header("Content-type: text/html; charset=utf-8");
		// $beginPage = 1;
		$handler = new pageOfCateory(3619);
		// $totalPageNum = $handler->getTotalPageNum();
		// while ($beginPage <= $totalPageNum) {
			
		// }
		$data = $handler->getData();
		foreach ($data as $d) {
			$ret['wechatid'] = $d['wechatid'];
			$ret['wechatdes'] = $d['des'];
			//$ret['date'] = time();
			$ret['wechatname'] = $d['name'];
			$ret['imgurl'] = $d['codeimg'];
			$ret['wechatType'] = $d['type'];
			$ret['wechatImgPath'] = $d['imgPath'];

			$this->storeToDB($ret);
			$this->dbTest();
		}
	}

	private function storeToDB($data)
	{
		$this->model->storeWechatInfo($data);
	}

	public function dbTest() 
	{
		$imgUrls = $this->model->getUrlsByCategory(3619);
        $img = new Image(3619,'3619');
        $img->downloadImgFromList($imgUrls);

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
	public function test()
    {
        $val = "wwwww                 xxxxx";
        //$val = str_replace(array(' ','&nbsp;'),'',$val);
        $ret = preg_split('/ /',$val);
        $r = $ret[0] . ' ' . $ret[count($ret) - 1];
        echo $r;
    }
}