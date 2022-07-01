.class final Lccsancom/san/api/ActionSdkInitProxy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/api/ActionSdkInitProxy;->unifiedDownload(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit()V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/aa/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method public onAppInit(Lccsanandroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
