import axios from "axios";

const baseURL = import.meta.env.VITE_API_HOST

const instance = axios.create({
  baseURL
})

const {get, post, put, del} = instance

export {get, post, put, del}