
using HDF5, Serialization

file = h5open("imaging_data/7_20X.h5", "r")

raw_data = Array(file["data"]["neurons"])

raw_data = UInt16.(permutedims(raw_data, reverse(1:ndims(raw_data))))

# temporarily use native Julia serializer so we can grab the stack from disk faster
serialize("imaging_data/neurondata.blob", raw_data)


