<template>
        <div class="col-md-9">
            <div class="panel-heading" style="color: white;">
                    Data Siswa
            <router-link to="/siswa/add" class="btn btn-primary btn-sm pull-right">+ Tambah Siswa</router-link>
            </div>
          <div class="panel panel-info">
            <table class="table">
              <tr v-for="siswas in siswa" :key="siswas.android_id">
                <td class="middle">
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="media-object" src="https://cdn2.vectorstock.com/i/1000x1000/17/61/male-avatar-profile-picture-vector-10211761.jpg" height="100px" width="100px" alt="...">
                      </a>
                    </div>
                    <div class="media-body">
                      <address>
                     <b>Username</b>            : {{siswas.email}}<br>
                     <b>Nama Siswa</b>          : {{siswas.name}}<br>
                     <b>Jenis Kelasmin</b>      : {{siswas.jenis_kelamin}}<br>
                     <b> Status </b>            : {{siswas.status}}<br>
                     <b> Kelas </b>             : {{siswas.kelas}}<br>
                     <b> Nik </b>               : {{siswas.nik}}
                      </address>
                    </div>
                  </div>
                </td>
                <td width="100" class="middle">
                  <div>
                    <router-link class="btn btn-circle btn-default btn-xs" :to="{name:'siswa_edit',params:{id:siswas.android_id}}"><i class="fas fa-pencil-alt " aria-hidden="true"></i></router-link>
                    <a href="#" @click="hapus(siswas.android_id)"  class="btn btn-circle btn-danger btn-xs" title="Hapus">
                    <i class="fas fa-trash"></i></a>

                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
</template>
<script>
export default {

  data(){
    return{
      siswa:{}
    }
  },
  created(){
    axios.get("/api/user")
    .then(res=>this.siswa=res.data.data)
  },
  methods:{
    hapus(android_id){
       swal({
                    title: "Apakah Anda Yakin Untuk Menghapus?",
                    text: "Jika Yakin Tekan Tombol ok",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
              })
              .then((willDelete)=>{
                  if(willDelete){
                    axios.delete(`/api/user/${android_id}`)
                    swal("Berhasil Menghapus Data!", {
                        icon: "success",
                    });
                        this.getUser()
                  }else{
                       swal("Gagal Untuk Menghapus!");
                  }
              })
        },
        getUser(){
           axios.get("/api/user")
          .then(res=>this.siswa=res.data.data)
        }
  }

}
</script>
