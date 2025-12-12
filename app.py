from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "¡Hola Mundo! Ciclo DevOps completado con éxito."

if __name__ == '__main__':
    # Escuchar en todas las interfaces (0.0.0.0) es vital para Docker
    app.run(host='0.0.0.0', port=5000)