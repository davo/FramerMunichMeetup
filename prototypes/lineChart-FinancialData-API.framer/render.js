const { Chromeless } = require('chromeless')
const path = require('path')

async function run() {
  const chromeless = new Chromeless()

const screenshot = await chromeless.setViewport({width: 1920*2, height: 1920*2, scale: 1})
    .goto('http://192.168.0.49:8000/05ca4a/lineChart-FinancialData-API.framer/index.html')
    .wait(3000)
    .screenshot({ filePath: path.join(__dirname, 'render.png') })

  console.log(screenshot) // prints local file path or S3 url

  await chromeless.end()
}

run().catch(console.error.bind(console))