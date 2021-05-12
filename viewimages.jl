
using Images, ImageView, Serialization

# This is pure n-dimensional array form
raw_data = deserialize("imaging_data/neurondata.blob")

# This is normalized gray value form used by Image.jl
# Not mandatory we use it, but plays nicer with tooling in related packages (e.g. ImageView)
img = reinterpret(Gray{N4f12}, raw_data)

imshow(img)
