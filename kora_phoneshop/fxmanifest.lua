fx_version 'cerulean'
game 'gta5'

description 'KORA phone shop MLO (Strawberry strip mall, sc1_11_mall2 corner unit) By kora Team'

this_is_a_map 'yes'
-- stream/ is sorted into map/ audio/ interior/ props/{remodel,phones,dlc_free}/ vanilla_overrides/ by MLO/phoneshop/build/stream_layout.py

files {
    'stream/map/phoneshop.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/map/phoneshop.ytyp'
-- audio occlusion (build/audio_occlusion.py): stream/audio/-91252583.ymt (+ unsigned-name copy). The dat151 room audio
-- (reverb/room tone) crashed the b3889 client on load (c0000005), so it is left out until rebuilt.

-- kora_qa: Gherkin test scenarios (converted legacy tests), see [kora]/kora_qa/README.md
qa_feature 'tests/*.feature'
