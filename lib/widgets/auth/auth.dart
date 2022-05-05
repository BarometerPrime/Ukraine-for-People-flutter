import 'package:flutter/material.dart';
import 'package:candy_progect/theme/app_buttom_style.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вхід до вашого профілю'),
      ),
      body: ListView(
        children: [
          _FormauWidget(),
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text(
            '''
             Для отримання більш широкого функціоналу додатку(реєстрація проектів, експертний рівень, доступ до чату та "звернення громадян") ми рекомендуємо вам зареєструватися. Якщо ви не маєте профілю зареєструйтеся це безкоштовно та легко.''',
            style: textStyle,
          ),
          TextButton(
              style: AppButtonStyle.linkbutton,
              onPressed: () {},
              child: Text('Зареєструватись')),
          SizedBox(height: 25),
          Text(
            '''
              Якщо ви не отримали листа підтвердження аунтифікації натисніть тут для отримання листа на вашу скриньку електронної пошти''',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
              style: AppButtonStyle.linkbutton,
              onPressed: () {},
              child: Text('Перевірити email')),
        ],
      ),
    );
  }
}

class _FormauWidget extends StatefulWidget {
  _FormauWidget({Key? key}) : super(key: key);

  @override
  __FormauWidgetState createState() => __FormauWidgetState();
}

class __FormauWidgetState extends State<_FormauWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText;

  void _login() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'невірний логін або пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Скинути пароль');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Color(0xFF212529));
    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final color = const Color(0xFF01B4E4);
    final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errorText != null) ...[
            SizedBox(height: 10),
            Text(
              errorText,
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
          SizedBox(height: 20),
          Text(
            'Логін',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
            controller: _loginTextController,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                fontSize: 24,
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Пароль',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextField(
            controller: _passwordTextController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              ElevatedButton(
                  onPressed: _login,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    ),
                  ),
                  child: Text(
                    'Увійти',
                  )),
              SizedBox(width: 50),
              TextButton(
                  onPressed: _resetPassword,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(color),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    ),
                  ),
                  child: Text(
                    'Оновити пароль',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
