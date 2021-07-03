python feature_extract.py \
  --config_path patchnetvlad/configs/performance.ini \
  --dataset_file_path=pitts30k_imageNames_index.txt \
  --dataset_root_dir=/path/to/your/pitts/dataset \
  --output_features_dir patchnetvlad/output_features/pitts30k_index


python feature_match.py \
  --config_path patchnetvlad/configs/performance.ini \
  --dataset_root_dir=/path/to/your/pitts/dataset \
  --query_file_path=pitts30k_imageNames_query.txt \
  --index_file_path=pitts30k_imageNames_index.txt \
  --query_input_features_dir patchnetvlad/output_features/pitts30k_query \
  --index_input_features_dir patchnetvlad/output_features/pitts30k_index \
  --ground_truth_path patchnetvlad/dataset_gt_files/pitts30k_test.npz \
  --result_save_folder patchnetvlad/results/pitts30k


python match_two.py \
--config_path patchnetvlad/configs/performance.ini \
--first_im_path=patchnetvlad/example_images/tokyo_query.jpg \
--second_im_path=patchnetvlad/example_images/tokyo_db.png \
--gpu_idx=1