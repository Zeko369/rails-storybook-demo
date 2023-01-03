module.exports = {
  stories: ["../stories/**/*.stories.json"],
  addons: ["@storybook/addon-controls"],

  webpackFinal: async (config, { configType }) => {
    if (configType === "DEVELOPMENT") {
      return config;
    }

    config.output.publicPath = "/docs/";
    return config;
  },
  managerWebpack: async (config, { configType }) => {
    if (configType === "DEVELOPMENT") {
      return config;
    }

    config.output.publicPath = "/docs/";
    return config;
  },
};
