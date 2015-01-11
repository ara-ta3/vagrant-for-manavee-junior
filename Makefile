init:
	@echo 個人設定用のスクリプトのサンプルをコピーします
	@echo 個人設定用に書き換えてください
	cp -i script/install/vagrant/install-private.sh.sample script/install/vagrant/install-private.sh
	@echo アプリケーションインストール用に script/keys/private_key_for_github を置いてください
	@echo 事前にgithubに登録し、githubのレポジトリのclone permissionを付与してもらってください
	cp -i script/keys/password_for_private_key.sample script/keys/password_for_private_key
	@echo private key にpasswordを設定している場合、 script/keys/password_for_private_key に記述してください
