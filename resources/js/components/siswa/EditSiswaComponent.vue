<template>
        <div class="col-md-9">
          <div class="panel panel-info">
            <div class="panel-heading">
              <strong style="color: white;">Tambah Siswa</strong>
            </div>
            <div class="panel-body">
              <div class="form-horizontal">
                <div class="row">
                  <div class="col-md-8">
                    <div class="form-group">
                      <label for="name" class="control-label col-md-3">Email Siswa</label>
                      <div class="col-md-8">
                        <input type="email" name="email" v-model="form.email"  class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="name" class="control-label col-md-3">Nama Siswa</label>
                      <div class="col-md-8">
                        <input type="text" v-model="form.name" name="name" id="name" class="form-control">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="company" class="control-label col-md-3">Kelas</label>
                      <div class="col-md-8">
                        <input type="text" v-model="form.kelas" name="kelas" id="company" class="form-control">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="email" class="control-label col-md-3">Nik Siswa</label>
                      <div class="col-md-8">
                        <input type="text" v-model="form.nik" name="nik" id="email" class="form-control">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="phone" class="control-label col-md-3">Jenis Kelasmin</label>
                      <div class="col-md-8">
                        <select name="jenis_kelamin" v-model="form.jenis_kelamin" class="form-control">
                          <option value="Laki-Laki">Laki-Laki</option>
                          <option value="Perempuan">Perempuan</option>
                        </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="name" class="control-label col-md-3">Alamat Siswa</label>
                      <div class="col-md-8">
                        <textarea name="address" v-model="form.alamat" id="address" rows="3" class="form-control"></textarea>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="group" class="control-label col-md-3">Password</label>
                      <div class="col-md-5">
                       <input type="password" v-model="form.password" name="password" class="form-control">
                      </div>

                    </div>
                  </div>

                </div>
              </div>
            </div>
            <div class="panel-footer">
              <div class="row">
                <div class="col-md-8">
                  <div class="row">
                    <div class="col-md-offset-3 col-md-6">
                      <button type="submit" @click="submit()" class="btn btn-primary">Simpan</button>
                    <router-link to="/siswa" class="btn btn-default">Batal</router-link>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</template>
<script>
export default {
    data(){
        return{
            form:{}
        }
    },
    created(){
        axios.get(`/api/user/${this.$route.params.id}`)
        .then(res=>this.form=res.data.data)
    },
     methods:{
       submit(){
           axios.put(`/api/user/${this.$route.params.id}`,this.form)
           .then((response)=>{
                this.$router.push({name:'siswa'})
           })
       }
     }
}
</script>
