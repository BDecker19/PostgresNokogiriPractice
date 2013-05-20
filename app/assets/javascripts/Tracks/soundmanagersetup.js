soundManager.setup({
	url: '/swf/',
	flashVersion: 9,
	onready: function() {
		soundManager.createSound({
			id: 'mySound',
			url: '<%= @track.track_file.url %>',
			autoLoad: true,
			autoPlay: false,
			onload: function() {
				alert('The sound '+this.id+' loaded!');
			},
			volume: 50
		});
	}
});