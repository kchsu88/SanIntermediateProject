.class Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;
.super Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dn/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field removeDownloadListener:Lccsanokhttp3/Response;


# direct methods
.method constructor <init>(Lccsansan/dn/addDownloadListener;Lccsanokhttp3/Response;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;-><init>()V

    .line 2
    iput-object p2, p0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanokhttp3/Response;

    .line 3
    invoke-virtual {p2}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/util/Map;

    .line 5
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p2, "Content-Range"

    invoke-virtual {p1, p2}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDownloadingList()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanokhttp3/Response;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public unifiedDownload()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanokhttp3/Response;

    invoke-virtual {v0}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lccsanokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected body is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
