const promoUrl = env.URL_HOST+"promo-backend/api/all";

const appPromo = new Vue({
  el: '#appPromo',
  data: {
    promoResults: []
  },
  mounted() {
    axios.get(promoUrl).then(res => {
    	console.log(res)
      this.promoResults = res.data
    })
  }
});
