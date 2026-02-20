package MomenTarek.billingsoftware.service;

import MomenTarek.billingsoftware.io.StripePaymentResponse;
import com.razorpay.RazorpayException;

public interface StripeService {
    StripePaymentResponse createPaymentIntent(Double amount, String currency) throws Exception;
}
