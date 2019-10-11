<?php

namespace Tests\Feature;

use App\Transfer;
use App\Wallet;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Log;
use Tests\TestCase;


class OrderTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_post_order()
    {
        $response = $this->json('POST', '/api/order',[
            'name' => "Cheila",
            'surname' => "Bautista",
            'email' => "cheilabautista@hotmail.com",
            "phones" => [
                [
                    "id" => 2,
                    "quantity" => 2
                ],
                [
                    "id" => 3,
                    "quantity" => 2
                ]
            ]            
        ]);

        $response->assertJsonStructure([
            'number_order','customer_name','email','total_order','units','date_order','details' => [
                         "*" => [
                             'product_id','name','description','price','total_item'
                         ]
                     ]
        ])->assertStatus(201);

        $this->assertCount(2, $response->json()['details']);
    }
}
