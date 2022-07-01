.class public Lccsansan/ar/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/Exception;

.field private addDownloadListener:J

.field private removeDownloadListener:Z

.field private unifiedDownload:Lccsansan/am/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/am/IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ar/addDownloadListener;->unifiedDownload:Lccsansan/am/IncentiveDownloadUtils;

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/ar/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Exception;

    .line 4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/ar/addDownloadListener;->removeDownloadListener:Z

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsansan/ar/addDownloadListener;->addDownloadListener:J

    return-void
.end method

.method private addDownloadListener(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 126
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 128
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 129
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p1, ""

    return-object p1
.end method

.method private getDownloadingList(Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload contents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.SanStats.UploadTask"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsansan/cb/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 68
    array-length v4, p1

    if-eqz v4, :cond_4

    .line 71
    const/4 v4, 0x0

    aget-byte v5, p1, v4

    invoke-static {v5}, Lccsansan/cw/getDownloadingList;->IncentiveDownloadUtils(B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 72
    new-instance v6, Ljava/net/URL;

    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    const-string v7, "%s&length=%d"

    goto :goto_0

    :cond_0
    const-string v7, "%s?length=%d"

    :goto_0
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v4

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post url:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "POST"

    .line 75
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 77
    const v0, 0xea60

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "Accept-Charset"

    const-string v6, "UTF-8"

    .line 81
    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 84
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 87
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lccsansan/ar/addDownloadListener;->addDownloadListener(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload status code:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v7, 0xc8

    if-ne v7, p1, :cond_1

    const-string v6, ""

    goto :goto_1

    :cond_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", cause:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 95
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/ar/addDownloadListener;->addDownloadListener:J

    return v4

    .line 97
    :catchall_0
    move-exception p1

    move-object v0, v5

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "encode packet failed!"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/ar/addDownloadListener;->addDownloadListener:J

    .line 125
    throw p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/ar/addDownloadListener;->removeDownloadListener:Z

    return v0
.end method

.method public getDownloadingList()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ar/addDownloadListener;->addDownloadListener:J

    return-wide v0
.end method

.method public removeDownloadListener()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ar/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Exception;

    return-object v0
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;ILjava/lang/String;)Z
    .locals 12

    .line 2
    const-string v0, "AD.SanStats.UploadTask"

    const-string v1, "try to dispatch"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lccsansan/ar/addDownloadListener;->removeDownloadListener:Z

    .line 9
    iget-object v4, p0, Lccsansan/ar/addDownloadListener;->unifiedDownload:Lccsansan/am/IncentiveDownloadUtils;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lccsansan/am/IncentiveDownloadUtils;->addDownloadListener(I)Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/ai/addDownloadListener;

    .line 11
    invoke-virtual {v6}, Lccsansan/ai/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v9, p0, Lccsansan/ar/addDownloadListener;->unifiedDownload:Lccsansan/am/IncentiveDownloadUtils;

    invoke-virtual {v9, v8}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v5

    if-le v10, p2, :cond_1

    .line 19
    iput-boolean v7, p0, Lccsansan/ar/addDownloadListener;->removeDownloadListener:Z

    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 24
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatch commit id:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", event count:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-virtual {v6, p1}, Lccsansan/ai/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 33
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "header"

    .line 34
    :try_start_1
    invoke-virtual {v6}, Lccsansan/ai/addDownloadListener;->getThumbPathByRecord()Lccsanorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v7, v10, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "events"

    .line 35
    :try_start_2
    invoke-static {v9}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 36
    invoke-static {p1}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v6
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_3

    const-string v10, "lat"

    .line 38
    :try_start_3
    iget-object v11, v6, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "lng"

    .line 39
    :try_start_4
    iget-object v6, v6, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v10, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 41
    :cond_3
    invoke-virtual {v2, v7}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 43
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    .line 44
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .line 46
    const-string v6, "Serialize this upload package failed!"

    invoke-static {v6}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "upload events count:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_5
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/ar/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "upload succeed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 57
    iget-object p1, p0, Lccsansan/ar/addDownloadListener;->unifiedDownload:Lccsansan/am/IncentiveDownloadUtils;

    invoke-virtual {p1, v1}, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    return v7

    :catch_1
    move-exception p1

    .line 61
    const-string p2, "upload result failed!"

    invoke-static {v0, p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    iput-object p1, p0, Lccsansan/ar/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/Exception;

    return v3
.end method
