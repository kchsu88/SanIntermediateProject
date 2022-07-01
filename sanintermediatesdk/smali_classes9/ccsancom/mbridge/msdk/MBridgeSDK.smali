.class public interface abstract Lccsancom/mbridge/msdk/MBridgeSDK;
.super Ljava/lang/Object;
.source "MBridgeSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
    }
.end annotation


# virtual methods
.method public abstract getConsentStatus(Lccsanandroid/content/Context;)Z
.end method

.method public abstract getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;
.end method

.method public abstract init(Ljava/util/Map;Lccsanandroid/app/Application;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            ")V"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;Lccsanandroid/app/Application;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Lccsanandroid/app/Application;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Lccsanandroid/app/Application;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/app/Application;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/out/SDKInitStatusListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract preload(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preloadFrame(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setConsentStatus(Lccsanandroid/content/Context;I)V
.end method

.method public abstract setDoNotTrackStatus(Lccsanandroid/content/Context;Z)V
.end method

.method public abstract setDoNotTrackStatus(Z)V
.end method

.method public abstract setThirdPartyFeatures(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserPrivateInfoType(Lccsanandroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract showUserPrivateInfoTips(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/CallBackForDeveloper;)V
.end method

.method public abstract updateDialogWeakActivity(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userPrivateInfo(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;
.end method
