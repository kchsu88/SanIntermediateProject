.class Lccsansan/br/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/br/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/br/unifiedDownload;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsansan/br/unifiedDownload;

    iput-object p2, p0, Lccsansan/br/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string p1, "CacheWebViewClient"

    const-string v0, "interceptRequest saveUrl onFailure"

    invoke-static {p1, v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p1, "CacheWebViewClient"

    const-string v0, "interceptRequest saveUrl onResponse"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/br/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/br/unifiedDownload;)Lccsansan/av/getDownloadingList;

    move-result-object p1

    iget-object v0, p0, Lccsansan/br/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lccsanokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/io/InputStream;)Z

    :cond_0
    return-void
.end method
