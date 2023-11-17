package com.appodeal.appodeal_flutter

import android.app.Activity
import android.view.View
import com.appodeal.ads.Appodeal
import com.appodeal.ads.nativead.NativeAdView
import com.appodeal.appodeal_flutter.native_ad.NativeAdCustomView
import com.appodeal.appodeal_flutter.native_ad.NativeAdOptions
import io.flutter.plugin.platform.PlatformView
import java.lang.ref.WeakReference

internal class AppodealNativeAdView(activity: Activity, arguments: HashMap<*, *>) : PlatformView {
    private val placement: String = arguments["placement"] as? String ?: "default"

    @Suppress("UNCHECKED_CAST")
    private val nativeAdOptions: NativeAdOptions? =
        NativeAdOptions.toNativeAdOptions(arguments["options"] as Map<String, Any>)

    private val adView: WeakReference<NativeAdView> by lazy {
        val nativeAd = Appodeal.getNativeAds(1).firstOrNull() ?: return@lazy WeakReference(null)
        val nativeAdOptions = nativeAdOptions ?: return@lazy WeakReference(null)

        // when (nativeAdOptions) {}
        val adView = NativeAdCustomView(activity, nativeAdOptions).bind()
        adView.registerView(nativeAd, placement)
        WeakReference(adView)
    }

    override fun getView(): View? = adView.get()

    override fun dispose() {
        adView.get()?.destroy()
    }
}

