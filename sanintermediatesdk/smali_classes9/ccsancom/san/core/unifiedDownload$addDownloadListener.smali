.class final Lccsancom/san/core/unifiedDownload$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/CommonActivityLifecycle$AppStatusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;Z)V
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
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils()V

    .line 2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->getDownloadingList()V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "EXIT"

    invoke-static {v0, v1}, Lccsansan/c/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->getDownloadedRecordByUrl()V

    return-void
.end method

.method public onAppInit(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lccsancom/san/ads/AdSourceHelper;->initializeInActivity(Lccsanandroid/app/Activity;)V

    return-void
.end method
