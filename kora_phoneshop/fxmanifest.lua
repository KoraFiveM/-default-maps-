fx_version 'cerulean'
game 'gta5'

description 'KORA phone shop MLO (Strawberry strip mall, sc1_11_mall2 corner unit) By kora Team'

this_is_a_map 'yes'

files {
    'stream/phoneshop.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/phoneshop.ytyp'
-- audio occlusion (build/audio_occlusion.py): stream/-91252583.ymt (+ unsigned-name copy). The dat151 room audio
-- (reverb/room tone) crashed the b3889 client on load (c0000005), so it is left out until rebuilt.
