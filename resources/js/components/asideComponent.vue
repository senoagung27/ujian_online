<template>
    <div class="list-group-custom">
        <router-link to="/home"  class="list-group-item active">Home<span class="badge"></span></router-link>
        <router-link to="/soal"  class="list-group-item">Kelola Soal<span class="badge"></span></router-link>
        <router-link to="/hasil" class="list-group-item">Hasil Ujian<span class="badge"></span></router-link>
        <router-link to="/pengaturan"   class="list-group-item">Pengaturan Ujian<span class="badge"></span></router-link>
        <router-link to="/siswa"   class="list-group-item">Daftar Siswa<span class="badge"></span></router-link>
        <a href="#" class="list-group-item">Logout<span class="badge"></span></a>
 </div>
</template>
<script>
    export default {

    }
</script>
