import 'package:mek_data_class/mek_data_class.dart';

part 'payment_intent.g.dart';

@DataClass()
class StripePaymentIntent with _$StripePaymentIntent {
  final String id;
  final double amount;
  final double amountCapturable;
  final double amountReceived;
  final String? application;
  final double? applicationFeeAmount;
  final String? captureMethod;
  final String? cancellationReason;
  final int? canceledAt;
  final String? clientSecret;
  final String? confirmationMethod;
  final int created;
  final String? currency;
  final String? customer;
  final String? description;
  final String? invoice;
  final bool livemode;
  final Map<String, String>? metadata;
  final String? onBehalfOf;
  final String? paymentMethodId;
  final PaymentIntentStatus? status;
  final String? review;
  final String? receiptEmail;
  final String? setupFutureUsage;
  final String? transferGroup;

  const StripePaymentIntent({
    required this.id,
    required this.amount,
    required this.amountCapturable,
    required this.amountReceived,
    required this.created,
    required this.status,
    this.applicationFeeAmount,
    this.livemode = true,
    this.metadata = const {},
    this.application,
    this.captureMethod,
    this.cancellationReason,
    this.canceledAt,
    this.clientSecret,
    this.confirmationMethod,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.onBehalfOf,
    this.paymentMethodId,
    this.review,
    this.receiptEmail,
    this.setupFutureUsage,
    this.transferGroup,
  });
}

enum PaymentIntentStatus {
  canceled,
  processing,
  requiresCapture,
  // requiresAction,
  requiresConfirmation,
  requiresPaymentMethod,
  succeeded,
  // unknown
}
