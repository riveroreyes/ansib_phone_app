<?php

namespace Tests\Unit;

use App\Transfer;
use App\Product;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;


class ProductTest extends TestCase
{

    //use RefreshDatabase;

    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_get_all_products()
    {
        $response = $this->json('GET','/api/product');

        $response->assertStatus(200)
                 ->assertJsonStructure([
                     '*'=>['id','name','description','price','image']
                 ]);

    }
}
