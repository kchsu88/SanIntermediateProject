.class Lccsansan/ba/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bm/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ba/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/ba/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ba/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ba/addDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ba/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ba/addDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ba/addDownloadListener;

    iget-object v0, v0, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/ba/addDownloadListener$unifiedDownload;->unifiedDownload:Lccsansan/ba/addDownloadListener;

    iget-object v1, v1, Lccsansan/ba/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lccsansan/aq/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "WebView_Intercept_Resource"

    invoke-static {v0, p2, p1}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
