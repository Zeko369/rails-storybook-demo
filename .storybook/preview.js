let server = `http://localhost:3000/storybook`;
if (!!process.env.RAILWAY_ENVIRONMENT) {
  server = `https://web-production-1eef.up.railway.app/storybook`;
}

export const parameters = {
  server: {
    url: server,
  },
};
