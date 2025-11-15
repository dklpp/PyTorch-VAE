load_celeba:
	gdown 1m8-EBPgi5MRubrm6iQjafK2QMHDBMSfJ
	unzip celeba.zip
	rm -rf celeba.zip
	unzip celeba/img_align_celeba.zip
	rm -rf celeba/img_align_celeba.zip
	mv img_align_celeba/ celeba/
	mv celeba/ Data/

make run_vae:
	CUDA_VISIBLE_DEVICES=2 python run.py -c configs/vae.yaml