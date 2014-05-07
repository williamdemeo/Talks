<?xml version="1.0"?>
<algebra>
  <basicAlgebra>
    <algName>L8</algName>
    <cardinality>8</cardinality>
    <operations>
      <op>
        <opSymbol>
          <opName>meet</opName>
          <arity>2</arity>
        </opSymbol>
        <opTable>
          <intArray>
            <row r="[0]">0,0,0,0,0,0,0,0</row>
            <row r="[1]">0,1,2,3,4,5,6,7</row>
            <row r="[2]">0,2,2,2,2,2,2,0</row>
            <row r="[3]">0,3,2,3,2,3,2,0</row>
            <row r="[4]">0,4,2,2,4,4,4,0</row>
            <row r="[5]">0,5,2,3,4,5,4,0</row>
            <row r="[6]">0,6,2,2,4,4,6,0</row>
            <row r="[7]">0,7,0,0,0,0,0,7</row>
          </intArray>
        </opTable>
      </op>
      <op>
        <opSymbol>
          <opName>join</opName>
          <arity>2</arity>
        </opSymbol>
        <opTable>
          <intArray>
            <row r="[0]">0,1,2,3,4,5,6,7</row>
            <row r="[1]">1,1,1,1,1,1,1,1</row>
            <row r="[2]">2,1,2,3,4,5,6,1</row>
            <row r="[3]">3,1,3,3,5,5,1,1</row>
            <row r="[4]">4,1,4,5,4,5,6,1</row>
            <row r="[5]">5,1,5,5,5,5,1,1</row>
            <row r="[6]">6,1,6,1,6,1,6,1</row>
            <row r="[7]">7,1,1,1,1,1,1,7</row>
          </intArray>
        </opTable>
      </op>
    </operations>
  </basicAlgebra>
</algebra>
