<?php

namespace App\Http\Controllers\api;

use App\Customer;
use App\Http\Controllers\Controller;
use App\Order;
use App\OrderProduct;
use App\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validacion de productos
        $total = 0; $data = []; $total_units=0; $details = [];

        foreach($request->phones as $phone){
            $product = Product::find($phone['id']);
            if( !$product ){
                return response()->json("The phone's ID is not registered",400);
            }
            $total += $phone['quantity'] * $product->price;
            $total_units += $phone['quantity'];
            $data[] = [
                'order_id' => null,
                'product_id' => $product->id,
                'quantity' => $phone['quantity'],
                'unit_price' => $product->price
            ];
            $details[] = [
                'product_id' => $product->id, 
                'name' => $product->name, 
                'description' => $product->description,
                'price' => $product->price,
                'total_item' => $product->price * $phone['quantity']
            ];
        }

        $customer = Customer::where('email',$request->email)->first();

        if( !isset($customer) ){
            $customer = new Customer();
            $customer->email = $request->email;
        }
        $customer->name = $request->name;
        $customer->surname = $request->surname;

        if( $customer->save() ){
            $order = new Order();
            $order->customer_id = $customer->id;
            $order->total = $total;

            if($order->save()){
                $orderProduct = new OrderProduct();
                $orderProduct->insert($this->assing_order_id( $data, 'order_id', $order->id ));

                if($orderProduct){
                    $request->total = $total;
                    return response()->json([
                        'number_order' => $order->id,
                        'customer_name' => $request->name.' '.$request->surname,
                        'email' => $request->email,
                        'total_order' => $total,
                        'units' => $total_units,
                        'date_order' => $order->created_at,
                        'details' => $details
                    ],201);
                }
            }

        }

        return response()->json('It is not possible to process the order',409);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    private function assing_order_id($data, $index_key, $value_key){
        foreach ($data as $key => &$value) {
            foreach ($value as $key1 => &$value1) {
                if($key1 == $index_key)
                    $value1 = $value_key;
            }
            unset($value1);
        }
        unset($value);   
        return $data; 
    }

}
