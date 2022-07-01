.class Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;

    iput-object p2, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
