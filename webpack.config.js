module.exports = {
  mode: "development",
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: {
          loader: "ts-loader",
          options: {
            transpileOnly: true,
          },
        },
      },
    ],
  },
  resolve: {
    extensions: [".js", ".ts", ".tsx", ".json"],
    fallback: {
      stream: require.resolve("stream-browserify"),
      timers: require.resolve("timers-browserify"),
    }
  },
};
