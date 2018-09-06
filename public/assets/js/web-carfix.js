const hosts = 'http://149.129.240.111/';
const url = hosts+"networks-backend/api/all";
// const url = env.URL_HOST+"networks-backend/api/all";

const appMenu = new Vue({
  el: '#appMenu',
  data: {
    menuResults: []
  },
  mounted() {
    axios.get(url).then(res => {
      this.menuResults = res.data
    })
  }
});


