.class Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/af/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/webview/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;-><init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
