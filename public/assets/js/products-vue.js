const productsUrl = env.URL_HOST+"products-backend/api/all";

const appProducts = new Vue({
  el: '#main-product',
  data: {
    productResults: []
  },
  mounted() {
    axios.get(productsUrl).then(res => {
      this.productResults = res.data
    })
  }
});
