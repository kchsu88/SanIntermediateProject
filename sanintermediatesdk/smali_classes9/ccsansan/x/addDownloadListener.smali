.class public Lccsansan/x/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private getDownloadingList:I

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsansan/x/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lccsansan/x/addDownloadListener;->getDownloadingList:I

    .line 4
    invoke-virtual {p1}, Lccsanokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/x/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lccsanokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lccsansan/x/addDownloadListener;->getDownloadingList(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/x/addDownloadListener;->unifiedDownload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Exception occur in response body"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 15
    new-instance p1, Ljava/io/IOException;

    const-string v0, "response body is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDownloadingList(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 3
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/x/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/x/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/x/addDownloadListener;->addDownloadListener:Ljava/util/Map;

    return-object v0
.end method

.method public removeDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/x/addDownloadListener;->getDownloadingList:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "UrlResponse [statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/x/addDownloadListener;->getDownloadingList:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
