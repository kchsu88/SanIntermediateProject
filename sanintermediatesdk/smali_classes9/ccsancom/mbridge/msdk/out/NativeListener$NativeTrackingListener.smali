.class public interface abstract Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeTrackingListener"
.end annotation


# virtual methods
.method public abstract onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadFinish(Lccsancom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStart(Lccsancom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
.end method

.method public abstract onInterceptDefaultLoadingDialog()Z
.end method

.method public abstract onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
.end method

.method public abstract onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
.end method

.method public abstract onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
.end method
