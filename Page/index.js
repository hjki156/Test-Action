fetch('./config.txt').then(e => e.text())
.then(data => {
	console.info(data)
}).catch(err => {
	console.error(err)
})