const sliderUrl = env.URL_HOST+"sliders-backend/api/all";

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
