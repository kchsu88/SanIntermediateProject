.class public interface abstract Lccsancom/vungle/warren/ui/view/WebViewAPI;
.super Ljava/lang/Object;
.source "WebViewAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;,
        Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
    }
.end annotation


# virtual methods
.method public abstract notifyPropertiesChange(Z)V
.end method

.method public abstract setAdVisibility(Z)V
.end method

.method public abstract setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setErrorHandler(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V
.end method

.method public abstract setMRAIDDelegate(Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V
.end method

.method public abstract setWebViewObserver(Lccsancom/vungle/warren/omsdk/WebViewObserver;)V
.end method
