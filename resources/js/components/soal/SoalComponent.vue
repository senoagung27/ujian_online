<template>
    <div class="col-md-9">
        <div class="panel-heading" style="color: white;">
            Kelola Soal
        <router-link to="/soal/add" class="btn btn-primary btn-sm pull-right">+ Tambah Soal</router-link>
        </div>
        <div class="panel panel-info">
            <table class="table table-hover">
                <thead class="table-head">
                    <tr>
                        <th>No</th>
                        <th>Pertanyaan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(soal,index) in soal" :key="index">
                        <td>{{index+1}}</td>
                        <td>
                          {{soal.soal}}
                        </td>
                        <td>
                            <a href="#" @click="hapus(soal.id)" ><i class="fas fa-trash" aria-hidden="true"></i></a>
                            <router-link :to="{name:'edit_soal',params:{id:soal.id}}"><i class="fas fa-pencil-alt " aria-hidden="true"></i></router-link>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
 </div>
</template>
<script>
import swal from 'sweetalert';
    export default {
          data(){
             return{
                 soal:{}
             }
          },
          mounted(){
              axios.get('api/soal')
              .then(res=>this.soal=res.data.data)
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
                    axios.delete(`/api/soal/${id}`)
                    swal("Berahasil Menghapus Data!", {
                        icon: "success",
                    });
                        this.getSoal()
                  }else{
                       swal("Gagal Untuk Menghapus!");
                  }
              })
            },
            getSoal(){
               axios.get('api/soal')
              .then(res=>this.soal=res.data.data)
            }
          }
    }

</script>
