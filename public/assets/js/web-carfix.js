const url = "http://localhost:3000/networks-backend/api/all";
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