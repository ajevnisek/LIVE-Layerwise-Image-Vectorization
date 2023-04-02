for EMOJI_PATH in /home/adminubuntu/research/datasets/sampled_emojis/*
  do
    echo $EMOJI_PATH
    EMOJI_NAME=${EMOJI_PATH##*/}
    echo $EMOJI_NAME
    python main.py --config config/base.yaml --experiment experiment_64x1 \
      --signature $EMOJI_NAME --target $EMOJI_PATH --log_dir log/ --new-shape 240 \
      --seed 123456789
  done