.class Lccsancom/san/mads/webview/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/webview/IncentiveDownloadUtils;Z)Z

    return-void
.end method
