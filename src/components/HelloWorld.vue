<script setup>
import { ref } from 'vue'
import {sayHello} from "../api/hello";

const count = ref(0)
const message = ref("亿力音乐盒后台")

const hi = function () {
  sayHello().then(response => {
    console.log(response)
  })
  message.value = '已请求'
}
</script>

<template>
  <h1>{{ message }}</h1>
  {{hi()}}
  <q-btn color="primary" label="Primary"/>
</template>

<style scoped>
a {
  color: #42b983;
}
</style>
