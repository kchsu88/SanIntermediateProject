.class Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;Lccsansan/af/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/af/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/af/getDownloadingList;Lccsansan/af/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXzComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onXzFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsansan/af/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onXzProgress(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public onXzStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsansan/af/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
