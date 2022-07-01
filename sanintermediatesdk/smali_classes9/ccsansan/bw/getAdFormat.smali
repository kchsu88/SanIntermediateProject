.class public Lccsansan/bw/getAdFormat;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 2

    .line 156
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 160
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "HttpUtils"

    const-string v1, "param decode failed, "

    invoke-static {p0}, Lccsansan/bw/trackReportShow;->removeDownloadListener(Ljava/lang/String;)V

    .line 2
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 9
    :cond_0
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 10
    array-length v5, p0

    if-nez v5, :cond_1

    return-object v3

    .line 13
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 16
    array-length v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, p0, v8

    .line 17
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 18
    array-length v11, v10

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    if-eqz v3, :cond_3

    .line 20
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    nop

    .line 25
    :try_start_0
    aget-object v3, v10, v4

    const-string v9, "UTF-8"

    invoke-static {v3, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 29
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    nop

    .line 35
    aget-object v3, v10, v7

    aget-object v9, v10, v4

    invoke-interface {v5, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    aget-object v3, v10, v7

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    return-object v5

    :cond_5
    return-object v3
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;II)Lccsanokhttp3/OkHttpClient;
    .locals 0

    .line 64
    const/4 p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lccsansan/x/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZII)Lccsanokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0}, Lccsanokhttp3/OkHttpClient;->newBuilder()Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    nop

    .line 11
    const-string v2, "trace_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    .line 14
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_2
    nop

    .line 15
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "portal"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lccsanokhttp3/Request$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 20
    invoke-virtual {v1, v0}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    .line 21
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    goto :goto_0

    :cond_3
    nop

    .line 24
    const-string v0, "Content-Type"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p2, "application/octet-stream"

    .line 25
    :goto_1
    invoke-static {p2}, Lccsanokhttp3/MediaType;->parse(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p3}, Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;[B)Lccsanokhttp3/RequestBody;

    move-result-object p2

    .line 26
    invoke-virtual {v1, p2}, Lccsanokhttp3/Request$Builder;->post(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/Request$Builder;

    .line 27
    invoke-static {p0, p1, p4, p5}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;II)Lccsanokhttp3/OkHttpClient;

    move-result-object p2

    .line 29
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 31
    :try_start_0
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p5

    invoke-virtual {p2, p5}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object p2

    .line 32
    new-instance p5, Lccsansan/x/addDownloadListener;

    invoke-direct {p5, p2}, Lccsansan/x/addDownloadListener;-><init>(Lccsanokhttp3/Response;)V

    const-string v7, ""

    .line 33
    move-object v2, p1

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v2 .. v7}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p5

    :catch_0
    move-exception p2

    .line 36
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p3

    invoke-static/range {v2 .. v7}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;)V

    .line 38
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V
    .locals 11

    .line 40
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v6, v0, p2

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 46
    invoke-virtual {p4}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    .line 47
    invoke-virtual {p4}, Lccsansan/x/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p4}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    move v9, v1

    move-object v10, v2

    move-wide v4, v3

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const/16 v5, 0x12e

    if-ne v1, v5, :cond_1

    return-void

    :cond_1
    move v9, v1

    move-object v10, v2

    move-wide v4, v3

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    move-object/from16 v10, p5

    move-wide v4, v2

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 63
    :goto_0
    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v10}, Lccsansan/bn/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJZILjava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;II)Lccsansan/x/addDownloadListener;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    .line 119
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    nop

    .line 120
    const-string v1, "trace_id"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_3
    new-instance p3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lccsanokhttp3/Request$Builder;

    invoke-direct {v2}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 133
    invoke-virtual {v2, p3}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    if-eqz p2, :cond_4

    .line 135
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 137
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_4
    nop

    .line 142
    invoke-virtual {v2, v1, v0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 143
    const-string p2, "portal"

    invoke-virtual {v2, p2, p0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 144
    invoke-static {p0, p1, p4, p5}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;II)Lccsanokhttp3/OkHttpClient;

    move-result-object p2

    .line 146
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 148
    :try_start_1
    invoke-virtual {v2}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p5

    invoke-virtual {p2, p5}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object p2

    .line 149
    new-instance p5, Lccsansan/x/addDownloadListener;

    invoke-direct {p5, p2}, Lccsansan/x/addDownloadListener;-><init>(Lccsanokhttp3/Response;)V

    const-string v8, ""

    .line 150
    move-object v3, p1

    move-object v4, p0

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p5

    :catch_1
    move-exception p2

    .line 153
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    move-wide v5, p3

    invoke-static/range {v3 .. v8}, Lccsansan/bw/getAdFormat;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;)V

    .line 155
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IIZ)Lccsansan/x/addDownloadListener;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    move-object v8, p0

    move-object v9, p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    .line 69
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 66
    :cond_0
    move-object/from16 v1, p3

    .line 69
    :goto_0
    nop

    .line 70
    const-string v2, "trace_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v3, Lccsanokhttp3/Request$Builder;

    invoke-direct {v3}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 83
    invoke-virtual {v3, v1}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    if-eqz p2, :cond_4

    .line 85
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    goto :goto_2

    :cond_4
    nop

    .line 88
    invoke-virtual {v3, v2, v0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 89
    const-string v0, "portal"

    invoke-virtual {v3, v0, p0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 90
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {p0, v2, v0, v1}, Lccsansan/x/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;ZII)Lccsanokhttp3/OkHttpClient;

    move-result-object v0

    .line 92
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 94
    :try_start_0
    invoke-virtual {v3}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object v0

    .line 95
    new-instance v12, Lccsansan/x/addDownloadListener;

    invoke-direct {v12, v0}, Lccsansan/x/addDownloadListener;-><init>(Lccsanokhttp3/Response;)V

    const-string v6, ""

    const/4 v7, 0x1

    .line 96
    move-object v1, p1

    move-object v2, p0

    move-wide v3, v10

    move-object v5, v12

    invoke-static/range {v1 .. v7}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#okGetForTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUtil"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p0

    move-wide v3, v10

    invoke-static/range {v1 .. v7}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V

    .line 101
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static removeDownloadListener(Ljava/lang/String;J)Lccsanandroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_0
    const-string v0, "bytes "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 109
    :goto_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x2f

    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 113
    new-instance p2, Lccsanandroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 115
    :cond_2
    new-instance p0, Lccsanandroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;II)Lccsansan/x/addDownloadListener;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    .line 40
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_3
    new-instance p3, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lccsanokhttp3/Request$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 53
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->head()Lccsanokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    if-eqz p2, :cond_4

    .line 55
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    goto :goto_1

    :cond_4
    nop

    .line 58
    const-string p2, "trace_id"

    invoke-virtual {v1, p2, v0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 59
    const-string p2, "portal"

    invoke-virtual {v1, p2, p0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 61
    invoke-static {p0, p1, p4, p5}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;II)Lccsanokhttp3/OkHttpClient;

    move-result-object p0

    .line 62
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object p0

    .line 63
    new-instance p1, Lccsansan/x/addDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/x/addDownloadListener;-><init>(Lccsanokhttp3/Response;)V

    return-object p1
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;)V
    .locals 7

    .line 39
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V

    return-void
.end method
