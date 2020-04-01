from flask import Flask
from marshmallow import Schema, fields, pre_load, validate
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy


ma = Marshmallow()
db = SQLAlchemy()


class User():
    __tablename__='users'


    id=db.Column(db.Integer(), primary_key=True,unique=True)
    api_key=db.Column(db.String(), primary_key=True,unique=True)
    username=db.Column(db.String(),primary_key=True)
    first_name=db.Column(db.String())
    last_name=db.Column(db.String())
    password=db.Column(db.String())
    email_address=db.Column(db.String())

    def __init__(self,id,username,first_name,last_name,password,email_address,api_key):
        self.id=id
        self.username=username
        self.first_name=first_name
        self.last_name=last_name
        self.password=password
        self.email_address=email_address
        self.api_key=api_key


    def __repr__(self):
        return 'id -> {}'.format(self.id)


    def serialize(self):
        return {
                'id':self.id,
                'username':self.username,
                'first_name':self.first_name,
                'last_name':self.last_name,
                'password':self.password,
                'email_address':self.email_address,
                'api_key':self.api_key,

        }