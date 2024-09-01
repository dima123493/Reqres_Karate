Feature: XML assertions

  Scenario: assert xml
    * def foo = """
    <records>
      <record index="1">a</record>
      <record index="2">b</record>
      <record index="3" foo="bar">c</record>
    </records>
    """
    * match foo count(/records//record) == 3
    * match foo /records//record[@index=2] == 'b'
    * match foo /records//record[@foo='bar'] == 'c'