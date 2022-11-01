<template>
  <form>
    <div class="user-add pt-20">
      <div>
        <h2 style="font-weight: bold">Create FileDB</h2><br/>
        <div>
          <input style="width: 50%; border-radius: 7px" type="text" v-model="name" placeholder="Name"/>
          <br/><br/>
<!--          <input style="width: 50%; border-radius: 7px" type="file" v-on:change="onChangeFileUpload" placeholder="File"/>-->
          <input type="file" @change="uploadFile" ref="file">
          <br/><br/>
        </div>

        <button
            class="bg-emerald-500 text-white active:bg-blueGray-600 text-sm font-bold uppercase px-2 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
            type="button"
            v-on:click="submitFile"
        >
          Submit
        </button>
      </div>
    </div>
  </form>
</template>

<script>
import axios from "axios";

export default {
  name: "CreateFileDB",
  data() {
    return {
      name: '',
      file: '',
    }
  },

  methods: {
    uploadFile() {
      this.Images = this.$refs.file.files[0];
    },
    submitFile() {
      const formData = new FormData();
      formData.append('file', this.Images);
      const headers = { "Authorization" : localStorage.getItem('token_admin')};
      axios.post('http://localhost:8080/upload', formData, { headers }).then((res) => {
        res.data.files; // binary representation of the file
        res.status; // HTTP status
      }).then(() => {
        this.$router.push({path: '/admin/files'})
      });
    }
  }
}
</script>

<style scoped>

</style>