#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# project imports
from application import create_app
from application.config import MasterConfig

app = create_app(MasterConfig)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
