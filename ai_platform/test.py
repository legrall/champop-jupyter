from icecream import ic

import tensorflow as tf

from tensorflow.io.gfile import GFile
from PIL import Image
annotation_path = 'gs://champop2/yolo-keras/yolo_generated_dataset/voc_classes.txt'

# from google.cloud import storage
# client = storage.Client()
# # https://console.cloud.google.com/storage/browser/[bucket-id]/
# bucket = client.get_bucket('champop2')
# # Then do other things...
# blob = bucket.get_blob('/yolo-keras/yolo_generated_dataset/voc_classes.txt')
# ic(blob)
# path = GFile(annotation_path, 'r').readlines()

card_path = 'gs://champop2/yolo-keras/yolo_generated_dataset/images/10-club_10-heart_911669903.png'
# path = GFile(card_path, 'rb')
# im = Image.open(path)
# im.save('im.png')
# ic(type(path))
# ic(path)
# gs://champop2/yolo-keras/yolo_generated_dataset/train.txt

from trainer.yolo3.utils import rand, get_random_data

input_shape = (736,736)
line = '6-diamond_3-spade_062461507.png	504,449,578,524,19	180,213,263,339,6'
image_data, box_data = get_random_data(line, input_shape, max_boxes=2, load_pretrained=False)

ic(image_data.shape)
ic(box_data.shape)