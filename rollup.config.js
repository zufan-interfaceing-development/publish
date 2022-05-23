import babel from 'rollup-plugin-babel'
import resolve from '@rollup/plugin-node-resolve'
import external from 'rollup-plugin-peer-deps-external'
import postcss from 'rollup-plugin-postcss'
export default [
    {
        input: './src/index.js', //entry point
        output: [
            {
                file: 'dist/index.js',
                format: 'cjs'
            },
            {
                file: 'dist/index.es.js',
                format: 'es',
                exports: 'named',
            }
        ],
        plugin: [
            postcss({
                plugins:[],
                minimize: false,
            }),
            babel({
                exclude: 'node_modules/**',
                preset: ['@babel/preset-react']
            }),
            external(),
            resolve(),
        ]
    }
] 