const sliderUrl = env.URL_HOST+"sliders-backend/api/all";
console.log(sliderUrl);
const appSlider = new Vue({
  el: '#main-slide',
  data: {
    sliderResults: []
  },
  mounted() {
    axios.get(sliderUrl).then(res => {
      this.sliderResults = res.data
    })
  }
});
