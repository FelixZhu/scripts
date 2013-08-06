#!/usr/bin/python

import pycassa

from pycassa.system_manager import *

dest = '10.13.95.47:9160'
dest2 = '10.13.94.204:9160'
sys = SystemManager(dest2)

def getKeyspaces():
#	print 'Keyspaces:'
#	print sys.list_keyspaces()
	return sys.list_keyspaces()

def getColFam(keyspace):
#	print 'Column Families:'
#	for colFam in sys.get_keyspace_column_families(keyspace):
#		print colFam
	return sys.get_keyspace_column_families(keyspace)

def getRange(keyspace, columnfamily):
	pool = pycassa.ConnectionPool(keyspace, [dest])
	cf = pycassa.ColumnFamily(pool, columnfamily)
	return list(cf.get_range(row_count = 20))

if __name__ == '__main__':
	keySpaces = getKeyspaces()
	print keySpaces
	for keySpace in keySpaces:
		print keySpace
		for colFam in getColFam(keySpace):
			print keySpace + ":" + colFam 
			print getRange(keySpace, colFam)
