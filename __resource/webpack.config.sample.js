const path = require('node:path');
const webpack = require('webpack');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const {ESBuildMinifyPlugin} = require('esbuild-loader');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const PugPlugin = require('pug-plugin');
const htmlList = require('./pug/htmlList');
const makePug = (list) => list.map(item => new HtmlWebpackPlugin({
    template: `pug/${item.name}.pug`,
    filename: `html/${item.name}.html`,
    inject: false,
    minify: false,
    data: item?.data
}));

const config = (env, options) => {
    const isProduction = options.mode === 'production';
    const isServer = !!env['WEBPACK_SERVE'];

    const config = {
        mode: env?.mode ?? 'development',
        devtool: isProduction ? false : 'inline-source-map',
        resolve: {
            modules: ['node_modules'],
            extensions: ['.js', '.scss'],
        },
        entry: {
            app: [
                './js/app',
                './scss/app'
            ],
        },
        output: {
            path: isServer ? path.resolve(__dirname, '../') : path.resolve(__dirname, '../src/main/webapp/'),
            filename: `assets/js/[name].js`
        },
        module: {
            rules: [
                {
                    test: /\.jsx?$/,
                    loader: 'esbuild-loader'
                },
                {
                    test: /\.(sa|sc|c)ss$/,
                    use: [
                        MiniCssExtractPlugin.loader,
                        {
                            loader: 'css-loader',
                            options: {
                                sourceMap: true,
                                importLoaders: 2,
                                url: false,
                            }
                        },
                        {
                            loader: 'postcss-loader',
                            options: {
                                postcssOptions: {
                                    plugins: [
                                        [
                                            'autoprefixer'
                                        ],
                                    ],
                                },
                                sourceMap: true,
                            }
                        },
                        {
                            loader: 'sass-loader',
                            options: {
                                sassOptions: {
                                    outputStyle: 'expanded',
                                },
                                sourceMap: true
                            }
                        },
                    ]
                },
                {
                    test: /\.pug$/,
                    use: [
                        {
                            loader: PugPlugin.loader,
                            options: {
                                pretty: '    ',
                            }
                        }
                    ],
                }
            ]
        },
        devServer: {
            headers: {
                'Access-Control-Allow-Origin': '*'
            },
            static: [
                {
                    directory: path.resolve(__dirname, '../'),
                    publicPath: '/travelmonth',
                },
                {
                    directory: path.resolve(__dirname, '../src/main/webapp/'),
                    publicPath: '/travelmonth',
                }
            ],
            historyApiFallback: true,
            compress: true,
            port: 8882,
            hot: true,
        },
        plugins: [
            new webpack.LoaderOptionsPlugin({
                minimize: true
            }),
            new MiniCssExtractPlugin({
                filename: 'assets/css/[name].css'
            }),
            ...makePug(htmlList)
        ],
        optimization: {
            splitChunks: {
                cacheGroups: {
                    defaultVendors: {
                        chunks: 'initial',
                        name: 'vendors',
                        test: /[\\/]node_modules[\\/]/,
                        enforce: true,
                    },
                    default: {
                        minChunks: 2,
                        priority: -20,
                        reuseExistingChunk: true
                    }
                },
            }
        }
    };

    if (options['plugins']) {
        config.plugins = (config.plugins || []).concat(options['plugins']);
    }

    if (isProduction) {
        config.optimization.minimizer = [
            new ESBuildMinifyPlugin({
                target: 'es2016',
                css: true
            }),
        ];
    }

    return config;
};
module.exports = config;