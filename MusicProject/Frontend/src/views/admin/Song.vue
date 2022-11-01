<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 mx-auto w-full">
          <div class="overflow-x-auto relative">
            <router-link
                to="/admin/createsong"
            >
              <button style="background-color:lightgreen" class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-blueGray-300 py-2 px-4 border border-blue-500 hover:border-transparent rounded">                Add Song
              </button>
            </router-link>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
              <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th scope="col" class="py-3 px-6">
                  Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Name
                </th>
                <th scope="col" class="py-3 px-6">
                  Album Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Lyrics
                </th>
                <th scope="col" class="py-3 px-6">
                  Url
                </th>
                <th scope="col" class="py-3 px-6">
                  Genre Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Singer Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Author Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Status
                </th>
                <th scope="col" class="py-3 px-6">
                  Action
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="song in songs" :key="song.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{song.id}}
                </th>
                <td class="py-4 px-6">
                  {{song.name}}
                </td>
                <td class="py-4 px-6">
                  {{song.album.name}}
                </td>
                <td class="py-4 mr-4">
                  {{song.lyrics}}
                </td>
                <td class="py-4 px-6">
                  {{song.url}}
                </td>
                <td class="py-4 px-6">
                  {{song.genre.name}}
                </td>
                <td class="py-4 px-6">
                  {{song.singer.name}}
                </td>
                <td class="py-4 px-6">
                  {{song.author.name}}
                </td>
                <td class="py-4 px-6">
                  {{song.deleted}}
                </td>
                <td class="py-4 ">
                  <router-link :to="`/admin/editsong/${song.id}`" > <button   style="background-color:#64bded"  class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4 hover:border-transparent rounded">Edit</button></router-link>
                  <button style="background-color:rgba(255,0,0,0.75)" class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-2 hover:border-transparent rounded" @click="deleteSong(song.id)">Delete</button>
                </td>
              </tr>
              </tbody>
            </table>

          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import CardTable from "@/components/Cards/CardTable.vue";
import axios from "axios";

export default {
  components: {
    CardTable,
  },
  data: () => ({
    songs: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/song/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.songs = res.data;
      console.warn(res.data.data)
      this.songs = res.data.data
      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  },

  methods: {
    deleteSong(id) {
      let text = "Are You ACTUALLY Want To Delete It!";
      if (confirm(text) == true) {
        axios.delete("http://localhost:8080/song/delete/" + id,{
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
            .then((res) => {
              console.log(res)
              location.reload();
            })
            .catch(function (error) {
              console.log(error.res)
            })
      } else {
        return;
      }

    }
  }
};
</script>