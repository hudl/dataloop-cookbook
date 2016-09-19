#
# Cookbook Name:: dataloop-cookbook
# Recipe:: windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

encrypted = Chef::EncryptedDataBagItem.load('dataloop', 'dataloop-encrypted')

node.default['dataloop']['agent']['api_key'] = encrypted[node.chef_environment]['api_key']

include_recipe 'dataloop-agent::windows'
