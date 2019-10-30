<?php 

	trait Todo{
		private $varios;
		public function getVarios(){
			return $this->varios;
		}
		public function setVarios($varios){
			$this->varios = $varios;
		}
	}

	trait Nada{
		var $algunos;
	}


	class Base {
		var $title;
		var $author;
		var $pages;

		function __construct($title, $author, $pages=200){
			$this->title = $title;
			$this->author = $author;
			$this->pages = $pages;
		}
	}

	class Book extends Base{
		use Todo, Nada;
	}

	$libro = new Book("Harry Pother","Jose Hernadez");
	$libro->setVarios('Nueva edition');
	$libro->algunos = 'solo para algunos';
	
	echo "Titulo: $libro->title<br/>Paginas: $libro->pages<br/>Todo: ".$libro->getVarios()."<br/> Nada: $libro->algunos";
	/*
	Respuesta: 
		Titulo: Harry Pother
		Paginas: 200
		Todo: Nueva edition
		Nada: solo para algunos
	*/
 ?>
