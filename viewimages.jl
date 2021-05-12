
using Images, ImageView, Serialization

raw_data = deserialize("imaging_data/neurondata.blob")

img = reinterpret(Gray{N4f12}, raw_data)

imshow(img)
