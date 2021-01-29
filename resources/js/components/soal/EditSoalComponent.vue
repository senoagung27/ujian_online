<template>

    <div class="col-md-9">
        <div class="panel panel-info">
            <div class="panel-heading">
                <strong style="color: white;">Tambah Soal</strong>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="name" class="control-label col-md-3">Pertanyaan</label>
                                <div class="col-md-8">
                                       <vue-simplemde v-model="soal.soal" ref="markdownEditor" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="control-label col-md-3">Jawaban A</label>
                                <div class="col-md-8">
                                    <input type="text" v-model="soal.jawaban_a" name="a" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="company" class="control-label col-md-3">Jawaban B</label>
                                <div class="col-md-8">
                                    <input type="text" v-model="soal.jawaban_b" name="b" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="email" class="control-label col-md-3">Jawaban C</label>
                                <div class="col-md-8">
                                    <input type="text" v-model="soal.jawaban_c" name="c" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="phone" class="control-label col-md-3">Jawaban D</label>
                                <div class="col-md-8">
                                    <input type="text" v-model="soal.jawaban_d" class="form-control" name="D">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="control-label col-md-3">Kunci Jawaban</label>
                                <div class="col-md-8">
                                    <select v-model="soal.knc_jawaban" class="form-control" name="knc_jawaban">
                                        <option value="a" :v-bind:value="soal.knc_jawaban" selected >A</option>
                                        <option value="b">B</option>
                                        <option value="c">C</option>
                                        <option value="d">D</option>
                                    </select>
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
                                 <router-link to="/soal"  class="btn btn-default">Batal<span class="badge"></span></router-link>

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
             soal:{},
           }
       },
       created() {
          axios.get(`/api/soal/${this.$route.params.id}`)
          .then(res=>this.soal=res.data.data)
        },
        methods:{
            submit(){
                axios.put(`/api/soal/${this.$route.params.id}`,this.soal)
                .then((response)=>[
                    this.$router.push({name:'soal'})
                ])
            }
        }
    }
</script>
<style>
  @import '~simplemde/dist/simplemde.min.css';
</style>