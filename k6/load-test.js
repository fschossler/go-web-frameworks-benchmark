import http from 'k6/http';

export const options = {
  vus: 10, // Number of virtual users (simultaneous connections)
  duration: '30s', // Test duration (e.g., 30 seconds)
};

export default function () {
  http.get('http://172.22.175.194:8080/hello');
}
