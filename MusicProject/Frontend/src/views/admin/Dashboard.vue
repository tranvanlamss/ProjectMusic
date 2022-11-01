<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 md:px-10 mx-auto w-full">
          <div>
            <!-- Card stats -->
            <div  class="flex flex-wrap">
              <div class="w-full lg:w-6/12 xl:w-3/12 px-4">
                <div class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg">
                  <router-link to="/admin/song">
                    <div class="flex-auto p-4">
                      <div class="flex flex-wrap">
                        <div class="relative w-full pr-4 max-w-full flex-grow flex-1">
                          <h5 class="text-blueGray-400 uppercase font-bold text-xs">
                            Song
                          </h5>
                          <span class="font-semibold text-xl text-blueGray-700">{{songcounts}}</span>
                        </div>
                        <div class="relative w-auto pl-4 flex-initial">
                          <div class="bg-red-500 text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 shadow-lg rounded-full">
                            <i class="far fa-chart-bar"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </router-link>
                </div>
              </div>
              <div class="w-full lg:w-6/12 xl:w-3/12 px-4">
                <div class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg">
                  <router-link to="/admin/album">
                    <div class="flex-auto p-4">
                      <div class="flex flex-wrap">
                        <div class="relative w-full pr-4 max-w-full flex-grow flex-1">
                          <h5 class="text-blueGray-400 uppercase font-bold text-xs">
                            Album
                          </h5>
                          <span class="font-semibold text-xl text-blueGray-700">{{albumcounts}}</span>
                        </div>
                        <div class="relative w-auto pl-4 flex-initial">
                          <div class="bg-orange-500 text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 shadow-lg rounded-full">
                            <i class="fas fa-chart-pie"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </router-link>
                </div>
              </div>
              <div class="w-full lg:w-6/12 xl:w-3/12 px-4">
                <div class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg">
                  <router-link to="/admin/singer">
                    <div class="flex-auto p-4">
                      <div class="flex flex-wrap">
                        <div class="relative w-full pr-4 max-w-full flex-grow flex-1">
                          <h5 class="text-blueGray-400 uppercase font-bold text-xs">
                            Singer
                          </h5>
                          <span class="font-semibold text-xl text-blueGray-700">{{singercounts}}</span>
                        </div>
                        <div class="relative w-auto pl-4 flex-initial">
                          <div class="bg-pink-500 text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 shadow-lg rounded-full">
                            <i class="fas fa-users"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </router-link>
                </div>
              </div>
              <div class="w-full lg:w-6/12 xl:w-3/12 px-4">
                <div class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg">
                  <router-link to="/admin/user">
                    <div class="flex-auto p-4">
                      <div class="flex flex-wrap">
                        <div class="relative w-full pr-4 max-w-full flex-grow flex-1">
                          <h5 class="text-blueGray-400 uppercase font-bold text-xs">
                            User
                          </h5>
                          <span class="font-semibold text-xl text-blueGray-700">{{usercounts}}</span>
                        </div>
                        <div class="relative w-auto pl-4 flex-initial">
                          <div class="bg-emerald-500 text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 shadow-lg rounded-full">
                            <i class="fas fa-percent"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </router-link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="flex flex-wrap">
      <div class="w-full xl:w-8/12 mb-12 xl:mb-0 px-4">
        <card-line-chart />
      </div>
      <div class="w-full xl:w-4/12 px-4">
        <card-bar-chart />
      </div>
    </div>
  </div>
</template>
<script>
import CardLineChart from "@/components/Cards/CardLineChart.vue";
import CardBarChart from "@/components/Cards/CardBarChart.vue";
import CardStats from "@/components/Cards/CardStats";
import axios from "axios";

export default {
  name: "dashboard-page",
  components: {
    CardLineChart,
    CardBarChart,
    CardStats,
  },

  data () {
    return {
      usercounts: null,
      songcounts: null,
      singercounts: null,
      albumcounts: null,
    }
  },

  mounted () {
    axios
        .get('http://localhost:8080/count/get-count-user', {
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
        .then(response => (this.usercounts = response.data)),

        axios
            .get('http://localhost:8080/count/get-count-song', {
              headers: {
                "Authorization" : localStorage.getItem('token_admin')
              }
            })
            .then(response => (this.songcounts = response.data)),

        axios
            .get('http://localhost:8080/count/get-count-singer', {
              headers: {
                "Authorization" : localStorage.getItem('token_admin')
              }
            })
            .then(response => (this.singercounts = response.data)),

    axios
            .get('http://localhost:8080/count/get-count-album', {
              headers: {
                "Authorization" : localStorage.getItem('token_admin')
              }
            })
            .then(response => (this.albumcounts = response.data))
  },
};
</script>

