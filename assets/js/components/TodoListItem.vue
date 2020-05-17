<template>
  <tr>
      <th scope="row"><button class="btn btn-danger" @click="$emit('remove', todo.id)">X</button></th>
      <td>{{ todo.text }}</td>
      <td>Otto</td>
      <td>@mdo</td>
  </tr>  
</template>

<script>
export default {
  props: {
    todo: {
      type: Object,
      required: true
    }
  }
}
</script>