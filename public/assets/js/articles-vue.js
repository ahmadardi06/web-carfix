// const hosts = 'http://149.129.240.111/';
// const sliderUrl = hosts+"sliders-backend/api/all";
const ttUrl = env.URL_HOST+"articles-backend/api/tt/all";
const enUrl = env.URL_HOST+"articles-backend/api/en/all";

const appTt = new Vue({
  el: '#appTt',
  data: {
    ttResults: []
  },
  mounted() {
    axios.get(ttUrl).then(res => {
      this.ttResults = res.data
    })
  },
  methods: {
  	cutMethodBody: (str) => {
  		return str.substring(0, 50) + '...';
  	},
  	dateIndo: (str) => {
  		var hari = ['Minggu','Senin','Selasa','Rabu','Kamis',"Jum'at",'Sabtu'];
			var bulan = ['Jan','Feb','Mar','Apr','Mei','Jun','Jul', 'Jun','Agt','Sept','Okt','Nov','Des'];

		  var dateNya = new Date(str);
		  var _tgl = dateNya.getDate();
		  var _hari = dateNya.getDay();
		  var _bulan = dateNya.getMonth();
		  var _tahun = dateNya.getFullYear();
		  var _jam = dateNya.getHours();
		  var _min = dateNya.getMinutes();

		  var hariNya = hari[_hari];
		  var bulanNya = bulan[_bulan];

		  return hariNya + ', ' + _tgl + ' ' + bulanNya + ' ' + _tahun + ' - ' + _jam + ':' + _min;
  	},
  },
});

const appEn = new Vue({
  el: '#appEn',
  data: {
    enResults: []
  },
  mounted() {
    axios.get(enUrl).then(res => {
      this.enResults = res.data
    })
  },
  methods: {
  	cutMethodBody: (str) => {
  		return str.substring(0, 50) + '...';
  	},
  	dateIndo: (str) => {
  		var hari = ['Minggu','Senin','Selasa','Rabu','Kamis',"Jum'at",'Sabtu'];
			var bulan = ['Jan','Feb','Mar','Apr','Mei','Jun','Jul', 'Jun','Agt','Sept','Okt','Nov','Des'];

		  var dateNya = new Date(str);
		  var _tgl = dateNya.getDate();
		  var _hari = dateNya.getDay();
		  var _bulan = dateNya.getMonth();
		  var _tahun = dateNya.getFullYear();
		  var _jam = dateNya.getHours();
		  var _min = dateNya.getMinutes();

		  var hariNya = hari[_hari];
		  var bulanNya = bulan[_bulan];

		  return hariNya + ', ' + _tgl + ' ' + bulanNya + ' ' + _tahun + ' ' + _jam + ':' + _min;
  	},
  }
});
