require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Mon Epicerie Confirmation de votre Commande", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["pierre.lasante@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Mon Epicerie votre commande a ete expedier", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["pierre.lasante@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

end