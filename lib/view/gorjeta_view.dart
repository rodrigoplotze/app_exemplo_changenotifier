import 'package:flutter/material.dart';

class GorjetaView extends StatelessWidget {
  const GorjetaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // BARRA DE TÍTULO
      //
      appBar: AppBar(
        title: Text(
          'GorjetaCalc',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      //
      // BODY
      //
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          children: [
            //
            // VALOR DA CONTA
            //
            TextField(
              style: TextStyle(fontSize: 36),
              decoration: InputDecoration(
                labelText: 'Valor da Conta',
                prefixIcon: Icon(Icons.attach_money),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onChanged: (value) {
               
              },
            ),
            //
            // PERCENTUAL DE DESCONTO
            //
            SizedBox(height: 20),
            Row(
              children: [
                Text('Percentual da Gorjeta', style: TextStyle(fontSize: 22)),
                SizedBox(width: 30),
                DropdownButton<double>(
                  value: 10,
                  onChanged: (double? newValue) {
                    
                  },
                  items: [10.0,20.0]
                      .map<DropdownMenuItem<double>>((double value) {
                    return DropdownMenuItem<double>(
                      value: value,
                      child: Text('$value%'),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20),
            //
            // BOTÃO CALCULAR
            //
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                foregroundColor: Colors.white,
                minimumSize: Size(200, 50),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                
              },
              child: Text('calcular'),
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              'Valor da Gorjeta: R\$',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Total a Pagar: R\$',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
