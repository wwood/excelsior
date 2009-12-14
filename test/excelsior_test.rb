# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'rubygems'
require 'excelsior'

class ExcelsiorTest < Test::Unit::TestCase
  def test_tsv
    expected = [[1,2,3],[1,2,3]]
    i = 0;
    Excelsior::Reader.rows(File.open('data/test.tsv','rb'),"\t") do |rows|
      assert_equal expected[i], rows
    end
    assert_equal expected.length, i
  end
end
