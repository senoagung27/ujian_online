import Vue from 'vue'
import VueRouter from 'vue-router'

import SoalComponent from '../components/soal/SoalComponent.vue'
import AddSoalComponent from '../components/soal/AddSoalComponent.vue'
import EditSoalComponent from '../components/soal/EditSoalComponent.vue'



import HomeComponent from '../components/home/HomeComponent.vue'
import HasilComponent from '../components/hasil/HasilComponent.vue'
import PengaturanComponent from '../components/pengaturan/PengaturanComponent.vue'

import SiswaComponent from '../components/siswa/SiswaComponent.vue'
import AddSiswaComponent from '../components/siswa/AddSiswaComponent.vue'
import EditSiswaComponent from '../components/siswa/EditSiswaComponent.vue'


const routes = [
     //home
     { name: 'home',             path: '/home',            component: HomeComponent },
    //soal
    { name: 'soal',              path: '/soal',             component: SoalComponent },
    { name: 'add_soal',          path: '/soal/add',         component: AddSoalComponent },
    { name: 'edit_soal',         path: '/soal/:id',         component:EditSoalComponent },

    //hasil
    { name: 'hasil',              path: '/hasil',             component: HasilComponent },

    //peraturan
    { name: 'pengaturan',         path: '/pengaturan',        component: PengaturanComponent },

    //siswa
    { name: 'siswa',              path: '/siswa',              component: SiswaComponent },
    { name: 'siswa_add',          path: '/siswa/add',          component: AddSiswaComponent },
    { name: 'siswa_edit',         path: '/siswa/:id',        component:EditSiswaComponent},





]

Vue.use(VueRouter)
const router = new VueRouter({
    routes, // short for `routes: routes`
    hasbang:false,
    mode:'history'
  })
  export default router
