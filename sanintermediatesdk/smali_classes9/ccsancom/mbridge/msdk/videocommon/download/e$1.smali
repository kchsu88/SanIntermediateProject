.class final Lccsancom/mbridge/msdk/videocommon/download/e$1;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "DownLoadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/download/e;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/g$c;Ljava/lang/String;Z)V
    .locals 0

    .line 34
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->f:Z

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 37
    const-string v0, "DownLoadUtils"

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 45
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v3}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a()V

    .line 49
    :cond_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 50
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 51
    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 52
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 55
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    const/16 v5, 0x1800

    :try_start_1
    new-array v5, v5, [B

    .line 57
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 60
    nop

    .line 61
    invoke-virtual {v6, v5, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 66
    :try_start_3
    iget-boolean v7, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->f:Z

    if-nez v7, :cond_2

    .line 67
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 66
    :cond_2
    move-object v7, v2

    goto :goto_1

    .line 75
    :catch_0
    move-exception v3

    move-object v7, v2

    goto :goto_4

    .line 70
    :cond_3
    move-object v5, v2

    move-object v7, v5

    :goto_1
    const/4 v8, 0x1

    .line 71
    const-string v9, ""

    goto :goto_2

    .line 75
    :catch_1
    move-exception v3

    move-object v5, v2

    move-object v7, v5

    goto :goto_4

    .line 80
    :catchall_0
    move-exception v0

    move-object v6, v2

    goto/16 :goto_c

    .line 75
    :catch_2
    move-exception v3

    move-object v5, v2

    goto :goto_3

    .line 72
    :cond_4
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    .line 74
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 81
    if-eqz v4, :cond_5

    .line 82
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_5
    if-eqz v6, :cond_6

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 91
    :cond_6
    move v1, v8

    goto :goto_8

    .line 75
    :catch_3
    move-exception v3

    goto :goto_4

    .line 80
    :catchall_1
    move-exception v0

    move-object v6, v2

    goto/16 :goto_d

    .line 75
    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_3
    move-object v6, v5

    move-object v7, v6

    .line 76
    :goto_4
    nop

    .line 77
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStringFromUrl failed "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 81
    if-eqz v4, :cond_7

    .line 82
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 87
    :catch_5
    move-exception v0

    goto :goto_6

    .line 84
    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 88
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 90
    nop

    .line 92
    goto :goto_8

    .line 91
    :cond_8
    :goto_7
    nop

    .line 95
    :goto_8
    if-eqz v1, :cond_9

    :try_start_9
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->f:Z

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    array-length v0, v5

    if-lez v0, :cond_9

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v5, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_9

    .line 110
    :catchall_2
    move-exception v0

    goto :goto_a

    .line 98
    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "<mbridgeloadend></mbridgeloadend>"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_b

    .line 102
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->e:Ljava/lang/String;

    invoke-interface {v0, v7, v5, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_9

    .line 105
    :cond_a
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v0, :cond_b

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content write failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 121
    :cond_b
    :goto_9
    goto :goto_b

    .line 111
    :goto_a
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_c
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/e$1;->a:Lccsancom/mbridge/msdk/videocommon/download/g$c;

    if-eqz v1, :cond_d

    .line 116
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 119
    goto :goto_b

    .line 117
    :catch_6
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :cond_d
    :goto_b
    return-void

    .line 80
    :catchall_3
    move-exception v0

    :goto_c
    move-object v2, v4

    .line 81
    :goto_d
    if-eqz v2, :cond_e

    .line 82
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_e

    .line 87
    :catch_7
    move-exception v1

    goto :goto_f

    .line 84
    :cond_e
    :goto_e
    if-eqz v6, :cond_f

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_10

    .line 88
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 90
    goto :goto_11

    .line 91
    :cond_f
    :goto_10
    nop

    .line 92
    :goto_11
    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12
.end method

.method public final b()V
    .locals 0

    .line 127
    return-void
.end method
