import Vue from 'vue'
import VueRouter from 'vue-router'

import SoalComponent from '../components/soal/SoalComponent.vue'
import EditSoalComponent from '../components/soal/EditSoalComponent.vue'
import AddSoalComponent from '../components/soal/AddSoalComponent.vue'


import HomeComponent from '../components/home/HomeComponent.vue'
import HasilComponent from '../components/hasil/HasilComponent.vue'
import PengaturanComponent from '../components/pengaturan/PengaturanComponent.vue'


import SiswaComponent from '../components/siswa/SiswaComponent.vue'
import AddSiswaComponent from '../components/siswa/AddSiswaComponent.vue'




const routes = [
    //soal
    { name: 'home',              path: '/home',             component: HomeComponent },

    { name: 'hasil',              path: '/hasil',             component: HasilComponent },
    
    { name: 'pengaturan',              path: '/pengaturan',             component: PengaturanComponent },

    { name: 'siswa',              path: '/siswa',             component: SiswaComponent },
    { name: 'add_siswa',              path: '/siswa/add',             component: AddSiswaComponent },


    { name: 'soal',              path: '/soal',             component: SoalComponent },
    { name: 'add_soal',              path: '/soal/add',             component: AddSoalComponent },
    { name: 'edit_soal',              path: '/soal/edit',             component: EditSoalComponent }

]

Vue.use(VueRouter)
const router = new VueRouter({
    routes, // short for `routes: routes`
    hasbang:false,
    mode:'history'
  })
  export default router
