<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 mx-auto w-full">

          <div class="overflow-x-auto relative">
            <router-link
                to="/admin/createfiledb"
            >
              <button class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-blueGray-300 py-2 px-4 border border-blue-500 hover:border-transparent rounded">
                Add FileDb
              </button>
            </router-link>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
              <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th scope="col" class="py-3 px-6">
                  Name
                </th>
                <th scope="col" class="py-3 px-6">
                  Url
                </th>
                <th scope="col" class="py-3 px-6">
                  Type
                </th>
                <th scope="col" class="py-3 px-6">
                  Size (MB)
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="file in files" :key="file.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">

                <td class="py-4 px-6">
                  {{file.name}}
                </td>
                <td class="py-4 px-6">
                  {{file.url}}
                </td>
                <td class="py-4 px-6">
                  {{file.type}}
                </td>
                <td class="py-4 px-6">
                  {{file.size}}
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
import axios from "axios";

export default {
  name: "FileDb",
  data: () => ({
    files: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/files', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.files = res.data;
      console.warn(res.data.data)

      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  },

}
</script>

<style scoped>

</style>