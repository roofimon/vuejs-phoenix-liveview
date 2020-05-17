<template>
  <div>
      <input v-model="telephone" v-mask="'(###)###-####'" type="text" />
  </div>
</template>

<script>
    export default {
        data() {
            return {
                telephone: ''
            }
        }
    }
</script>