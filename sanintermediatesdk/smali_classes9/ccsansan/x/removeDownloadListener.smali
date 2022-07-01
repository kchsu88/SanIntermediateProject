.class public Lccsansan/x/removeDownloadListener;
.super Lccsanokhttp3/EventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanokhttp3/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnd(Lccsanokhttp3/Call;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->callEnd(Lccsanokhttp3/Call;)V

    .line 2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;Ljava/lang/Exception;)V

    return-void
.end method

.method public callFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->callFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 2
    invoke-static {p1, p2}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;Ljava/lang/Exception;)V

    return-void
.end method

.method public callStart(Lccsanokhttp3/Call;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->callStart(Lccsanokhttp3/Call;)V

    .line 2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Lccsanokhttp3/Call;Z)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->unifiedDownload()V

    return-void
.end method

.method public connectEnd(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanokhttp3/EventListener;->connectEnd(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl()V

    return-void
.end method

.method public connectFailed(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lccsanokhttp3/EventListener;->connectFailed(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsanokhttp3/Protocol;Ljava/io/IOException;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->deleteDownItem()V

    return-void
.end method

.method public connectStart(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanokhttp3/EventListener;->connectStart(Lccsanokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/x/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->connectionAcquired(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl()V

    return-void
.end method

.method public connectionReleased(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->connectionReleased(Lccsanokhttp3/Call;Lccsanokhttp3/Connection;)V

    return-void
.end method

.method public dnsEnd(Lccsanokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanokhttp3/EventListener;->dnsEnd(Lccsanokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->addDownloadListener()V

    return-void
.end method

.method public dnsStart(Lccsanokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->dnsStart(Lccsanokhttp3/Call;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/x/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyEnd(Lccsanokhttp3/Call;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanokhttp3/EventListener;->requestBodyEnd(Lccsanokhttp3/Call;J)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/x/getDownloadingList;->unifiedDownload(J)V

    return-void
.end method

.method public requestBodyStart(Lccsanokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->requestBodyStart(Lccsanokhttp3/Call;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadingCount()V

    return-void
.end method

.method public requestHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->requestHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Request;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->deleteDownList()V

    return-void
.end method

.method public requestHeadersStart(Lccsanokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->requestHeadersStart(Lccsanokhttp3/Call;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl()V

    return-void
.end method

.method public responseBodyEnd(Lccsanokhttp3/Call;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanokhttp3/EventListener;->responseBodyEnd(Lccsanokhttp3/Call;J)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/x/getDownloadingList;->IncentiveDownloadUtils(J)V

    return-void
.end method

.method public responseBodyStart(Lccsanokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->responseBodyStart(Lccsanokhttp3/Call;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->resume()V

    return-void
.end method

.method public responseHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 9

    .line 1
    const-string v0, "miss"

    const-string v1, "hit"

    const-string v2, "X-Cache-Remote"

    const-string v3, "X-Cache"

    const-string v4, "Content-Length"

    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->responseHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V

    const-wide/16 v5, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p2, v4}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    const/4 v4, 0x0

    .line 12
    :try_start_1
    invoke-virtual {p2, v3}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v3}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 13
    :goto_1
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 15
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "X-Cache:hit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "X-Cache:miss"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    :cond_3
    move-object v7, v4

    .line 22
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {p2, v2}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p2, v2}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v4

    .line 23
    :goto_3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v7, :cond_6

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    goto :goto_4

    :cond_6
    const-string v3, " "

    .line 27
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    nop

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "X-Cache-Remote:hit"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "X-Cache-Remote:miss"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :cond_8
    :goto_5
    nop

    .line 33
    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_d

    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_9

    goto :goto_7

    .line 38
    :cond_9
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object v0

    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v1

    if-nez v7, :cond_a

    move-object v2, v4

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v1, v5, v6, v2}, Lccsansan/x/getDownloadingList;->addDownloadListener(IJLjava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_b

    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_c

    .line 41
    :cond_b
    invoke-static {p1, v4}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;Ljava/lang/Exception;)V

    :cond_c
    return-void

    .line 42
    :cond_d
    :goto_7
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v0

    .line 43
    const-string v1, "Location"

    invoke-virtual {p2, v1}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p1, v0, p2}, Lccsansan/x/getDownloadingList;->unifiedDownload(ILjava/lang/String;)V

    return-void
.end method

.method public responseHeadersStart(Lccsanokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->responseHeadersStart(Lccsanokhttp3/Call;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadedCount()V

    return-void
.end method

.method public secureConnectEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Handshake;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanokhttp3/EventListener;->secureConnectEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Handshake;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->getDownloadedList()V

    return-void
.end method

.method public secureConnectStart(Lccsanokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanokhttp3/EventListener;->secureConnectStart(Lccsanokhttp3/Call;)V

    .line 2
    invoke-static {p1}, Lccsansan/x/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanokhttp3/Call;)Lccsansan/x/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/x/getDownloadingList;->IncentiveDownloadUtils()V

    return-void
.end method
