fx_version 'cerulean'
game 'gta5'

description 'KORA phone shop MLO (Strawberry strip mall, sc1_11_mall2 corner unit)'

this_is_a_map 'yes'

files {
    'stream/phoneshop.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/phoneshop.ytyp'

-- kora_qa: Gherkin test scenarios (converted legacy tests), see [kora]/kora_qa/README.md
qa_feature 'tests/*.feature'
