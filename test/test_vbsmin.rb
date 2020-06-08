# frozen_string_literal: true

require 'digest'
require 'minitest/autorun'
require 'vbsmin'

class VbsminTest < Minitest::Test
  def setup
    @vm = VBSMin.new
    @vm.minify('samples/pyenv.vbs')
    @vm2 = VBSMin.new
    @vm2.minify('samples/features.vbs')
  end

  def test_vbsmin_attributes
    assert_equal(15_321, @vm.input_size)
    assert_equal(12_324, @vm.output_size)
    assert_equal(2997, @vm.diff_size)
  end

  # md5 of pyenv.min.example.vbs
  def test_vbsmin_output
    assert_equal('dd96ee19cc1c3a50558d26e489f05a96', Digest::MD5.file('samples/pyenv.min.vbs').hexdigest)
    assert_equal('2a48c32d60485c1bed8e0221eb20a785', Digest::MD5.file('samples/features.min.vbs').hexdigest)
  end
end
