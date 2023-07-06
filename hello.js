export default {
  async fetch(request, env) {
    const testResp = new Response(JSON.stringify({}), {
      headers: {
        'content-type': 'application/xxx; charset="UTF-8"'
      }
    });

    await testResp.json();

    return new Response();
  }
}
