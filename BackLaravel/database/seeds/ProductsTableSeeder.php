<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
                'name' => 'OPPO R17',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 150,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/oppo_r17.png',
            ],
            [
                'name' => 'NOKIA 7 PLUS',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 155,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/nokia_7_plus.png'
            ],
            [
                'name' => 'SAMSUMG GALAXI S10E',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 100,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/samsuns_galaxi_s10e.png'
            ],
            [
                'name' => 'HUAWEI P10',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 225,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/huawei_p10.png'
            ],
            [
                'name' => 'XIAOMI MI MIX 25',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 985,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/xiaomi_mi_mix_25.png'
            ],
            [
                'name' => 'APPLE IPHONE 11',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1300,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/apple_iphone_11.png'
            ],
            [
                'name' => 'XIAOMI REDMI 8',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1100,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/xiaomi_redmi_8.png'
            ],
            [
                'name' => 'MOTOROLA ONE MACRO',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1115,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/motorola_ne_macro.png'
            ],
            [
                'name' => 'YEZZ MAX 1 PLUS',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 975,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/yezz_max_1_plus.png'
            ],
            [
                'name' => 'SAMSUMG GALAXI A70S',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1200,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/samsung_galaxi_a70s.png'
            ],
            [
                'name' => 'ONEPLUS 7T',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1200,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/oneplus_7t.png'
            ],
            [
                'name' => 'YESSLIV 1',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1150,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploadsyessliv_1/.png'
            ],
            [
                'name' => 'XIAOMI REDMI 8A',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1500,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/xiaomi_redmi_8a.png'
            ],
            [
                'name' => 'SAMSUNG GALAXI A20S',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 4500,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/samsung_galaxi_a20s.png'
            ],
            [
                'name' => 'OPPO RENO',
                'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.',
                'price' => 1350,
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
                'image' => '/uploads/oppo_reno.png'
            ]
        ]);
    }
}
