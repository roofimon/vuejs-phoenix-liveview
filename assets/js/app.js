// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"
import Vue from "vue";
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import counter  from "./components/counter.vue";
import calendar from "./components/datepicker.vue";
import TodoApp from "./components/App.vue";
import VueMask from 'v-mask'
// Install BootstrapVue
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)
Vue.use(VueMask);

new Vue({
    render: h => h(TodoApp)
}).$mount("#calendar")