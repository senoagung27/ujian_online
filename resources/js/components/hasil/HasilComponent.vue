<template>
     <div class="col-md-9">
            <div class="panel-heading" style="color: white;">
                Hasil Ujian Siswa
               </div>
          <div class="panel panel-info">
            <table class="table">
              <tr v-for="hasils in hasil" :key="hasils.index">
                <td class="middle">
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                            <img class="media-object" src="https://cdn2.vectorstock.com/i/1000x1000/17/61/male-avatar-profile-picture-vector-10211761.jpg" height="100px" width="100px" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading">Keterangan : {{hasils.keterangan}}</h4>
                      <address>
                        Kelas          :  {{hasils.Kelas}}<br>
                        Nama Siswa     :  {{hasils.Nama}}<br>
                        Jenis Kelasmin :  {{hasils.jenis_kelamin}}<br>
                        Nik            :  {{hasils.nik}}
                      </address>
                    </div>
                    <div class="media-body">
                      <h4 class="media-heading">Total Soal: 10</h4>
                      <address>
                        Jawaban Benar: {{hasils.Benar}}<br>
                        Jawaban Salah: {{hasils.Salah}}<br>
                        Jawaban Kosong: {{hasils.Kosong}}<br>
                        Nilai Anda : {{hasils.Nilai}}
                      </address>
                    </div>
                  </div>
                </td>
                <td width="100" class="middle">
                  <div>
                    <a href="#" @click="hapus(hasils.id)" class="btn btn-circle btn-danger btn-xs" title="Hapus">
                    <i class="fas fa-trash"></i>
                    </a>
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
       hasil:{}
     }
   },
   methods:{
     hapus(id){
          swal({
                    title: "Apakah Anda Yakin Untuk Menghapus?",
                    text: "Jika Yakin Tekan Tombol ok",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
              })
              .then((willDelete)=>{
                  if(willDelete){
                    axios.delete(`/api/nilai/${id}`)
                    swal("Berahasil Menghapus Data!", {
                        icon: "success",
                    });
                        this.getHasil()
                  }else{
                       swal("Gagal Untuk Menghapus!");
                  }
              })
     },
      getHasil(){
           axios.get("/api/nilai")
           .then(res=>this.hasil=res.data.data)
       }
   },
   created(){
       this.getHasil();
   }
}
</script>

