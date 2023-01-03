let server = `http://localhost:3000/storybook`;
if (window.location.protocol === "https:") {
  server = `${window.location.origin}/storybook`;
}

export const parameters = {
  server: {
    url: server,
  },
};
