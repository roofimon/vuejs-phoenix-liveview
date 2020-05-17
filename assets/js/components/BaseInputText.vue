<template>
  <div class="input-group mb-3">
    <div class="input-group-prepend">
      <button class="btn btn-outline-secondary" type="button" id="button-addon1">Button</button>
    </div>
    <input
      type="text"
      :value="value"
      v-on="listeners" 
      class="form-control" 
      placeholder="" 
      aria-label="Example text with button addon" 
      aria-describedby="button-addon1">
  </div>  
</template>

<script>
export default {
  props: {
    value: {
      type: String,
      default: '',
    }
  },
  computed: {
    listeners () {
      return {
        // Pass all component listeners directly to input
        ...this.$listeners,
        // Override input listener to work with v-model
        input: event => this.$emit('input', event.target.value)
      }
    }
  }  
}
</script>

<style lang="scss" scoped>
</style>
