.class public Lccsansan/p/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;,
        Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

.field private static getDownloadedList:I

.field private static getDownloadingList:J

.field private static getDownloadingRecordByUrl:I

.field public static final removeDownloadListener:I

.field private static final unifiedDownload:Lccsanokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$Df7lldXecjHc91IBPgDNPqBqzwA(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4Roe6JLgJaSkvW6BS3-7YJML_0(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Lccsanandroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener()V

    invoke-static {}, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener()V

    .line 1
    new-instance v1, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadStatusByUrl()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 3
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadStatusByUrl()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v4}, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 4
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadStatusByUrl()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v4}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload:Lccsanokhttp3/OkHttpClient;

    sget v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;
    .locals 5

    .line 224
    nop

    .line 217
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 218
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    .line 222
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 224
    :pswitch_0
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 222
    const/16 p1, 0x2c

    goto :goto_2

    :cond_1
    const/4 p1, 0x2

    :goto_2
    const-string v2, "accessibilityTraversal"

    const-string v3, "accessibility"

    const-string v4, "searchBoxJavaBridge_"

    packed-switch p1, :pswitch_data_1

    .line 218
    goto :goto_3

    .line 224
    :pswitch_1
    nop

    .line 220
    :try_start_0
    invoke-virtual {v0, v4}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v3}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception p1

    throw p1

    .line 220
    :goto_3
    :try_start_2
    invoke-virtual {v0, v4}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v3}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 224
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AD.CPI.Helper"

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    nop

    .line 222
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/2addr p1, v1

    .line 224
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 132
    const-string v0, "AD.CPI.Helper"

    .line 115
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v2, Lccsanokhttp3/Request$Builder;

    invoke-direct {v2}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 117
    invoke-virtual {v2, v1}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    const-string v3, "User-Agent"

    .line 118
    invoke-virtual {v2, v3, p2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 119
    sget-object v3, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lccsanokhttp3/Response;->code()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_0

    .line 121
    const/16 v3, 0x51

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 132
    sget v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 121
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v6, "Location"

    packed-switch v3, :pswitch_data_1

    .line 132
    goto :goto_4

    .line 120
    :pswitch_0
    nop

    .line 121
    :try_start_1
    invoke-virtual {v2, v6}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_2

    :goto_3
    goto :goto_6

    :goto_4
    invoke-virtual {v2, v6}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0x5b

    :try_start_2
    div-int/2addr v3, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    const/16 v3, 0x33

    goto :goto_5

    :cond_3
    const/16 v3, 0x11

    :goto_5
    packed-switch v3, :pswitch_data_3

    goto :goto_3

    .line 122
    :pswitch_1
    :try_start_3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_6

    .line 125
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_5

    .line 121
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 132
    return-object v2

    .line 129
    :cond_5
    :try_start_4
    invoke-direct {p0, v2, p2}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    sget p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    .line 132
    return-object p1

    .line 129
    :goto_6
    return-object p1

    .line 132
    :catchall_0
    move-exception p1

    throw p1

    .line 129
    :catch_0
    move-exception p2

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#reportClickTrackUrlWithUA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils()Lccsansan/p/getDownloadedRecordByUrl;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/p/getDownloadedRecordByUrl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/p/getDownloadedRecordByUrl;

    invoke-direct {v1}, Lccsansan/p/getDownloadedRecordByUrl;-><init>()V

    sput-object v1, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    return-object v0
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 16

    move/from16 v0, p11

    .line 20
    nop

    .line 8
    sget-object v1, Lccsansan/p/deleteDownList;->XZ_FINISH:Lccsansan/p/deleteDownList;

    invoke-virtual {v1}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 20
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, ""

    packed-switch v1, :pswitch_data_0

    .line 10
    sget-object v1, Lccsansan/p/deleteDownList;->START_AZ:Lccsansan/p/deleteDownList;

    invoke-virtual {v1}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-static {v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v2, v1

    const-string v1, "\u9195\u8d17\uf616\u0798\u91f1\u9777\uc27f\u49db\uf9c5\u0f33\u6a2d\ub195\u4188\u67f4"

    invoke-static {v1, v2}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 20
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    :cond_2
    :goto_3
    goto :goto_4

    :pswitch_1
    sget v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 10
    :cond_3
    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v1, "\ubc47\u0348\ufd66\u2a3f\ubc2e\u1929\uc90b\u6466\ud41a\u816f\u6150\u9c3f\u6c51\ue9a8"

    cmp-long v8, v4, v6

    invoke-static {v1, v8}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 20
    sget v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    .line 13
    :goto_4
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 17
    :cond_4
    invoke-static {v4}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/16 v0, 0x51

    goto :goto_5

    :cond_5
    const/16 v0, 0x1a

    :goto_5
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    return-void

    :goto_6
    const/4 v0, 0x4

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v14

    new-instance v15, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p11

    move/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lccsansan/p/getDownloadedRecordByUrl$addDownloadListener;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V

    invoke-virtual {v14, v15}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Lccsanandroid/content/Context;)V
    .locals 2

    .line 114
    nop

    .line 107
    invoke-direct {p0, p1, p2}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;

    invoke-direct {v0, p0, p4, p1, p3}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    invoke-virtual {p2, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_3

    :pswitch_0
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p4, p1, 0x4d

    rem-int/lit16 v0, p4, 0x80

    sput v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 108
    :cond_1
    if-eqz p3, :cond_3

    .line 114
    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 110
    const/16 p1, 0x17

    goto :goto_1

    :cond_2
    const/16 p1, 0x62

    :goto_1
    invoke-interface {p3, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_1

    const/16 p1, 0x21

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 114
    :catchall_0
    move-exception p1

    throw p1

    .line 110
    :cond_3
    :goto_2
    :pswitch_1
    nop

    .line 114
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x47

    goto :goto_2

    :cond_1
    const/16 p0, 0x18

    :goto_2
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 3

    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils:[B

    const/16 v1, 0x75

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :array_0
    .array-data 1
        0x1t
        0x42t
        0x22t
        0x46t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public static getDownloadingList()I
    .locals 4

    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/2addr v1, v2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V
    .locals 4

    .line 65
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 50
    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 65
    :goto_3
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReferrer() finalUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "intent://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/16 v0, 0x32

    goto :goto_4

    :cond_2
    const/16 v0, 0x34

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 65
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 54
    :cond_3
    const/4 v0, 0x1

    .line 56
    :try_start_1
    invoke-static {p3, v0}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object v0

    const-string v2, "browser_fallback_url"

    .line 57
    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#updateReferrer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_5
    :pswitch_1
    invoke-static {p3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 65
    :cond_4
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsansan/p/getDownloadedRecordByUrl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Lccsansan/p/getDownloadedRecordByUrl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic getDownloadingList(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V
    .locals 2

    .line 73
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 66
    :cond_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 67
    const-string v0, "referrer"

    invoke-virtual {p0, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReferrer() referrer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v0, p2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    :cond_1
    iget-object p1, p2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p1, p0}, Lccsansan/l/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object p2, p2, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "client"

    invoke-static {v0, p1, p2, p0}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide v0, 0x48ed72e0482d1a0fL    # 2.0522772829449894E43

    sput-wide v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList:J

    return-void
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 12

    .line 216
    nop

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#uploadAdClickByWebView url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_b

    .line 139
    new-instance v2, Lccsanandroid/content/Intent;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 144
    sget v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 139
    :cond_0
    :try_start_0
    sget-object v3, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils:[B

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    int-to-byte v6, v5

    add-int/lit8 v7, v6, -0x1

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(BBI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    int-to-byte v8, v6

    aget-byte v9, v3, v4

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(BBI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v6, 0x10000

    invoke-virtual {v5, v2, v6}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 141
    iget-object v9, v5, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_7

    iget-object v9, v9, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 216
    sget v10, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v10, v10, 0x43

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    .line 141
    :cond_1
    nop

    .line 142
    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 216
    sget v9, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v9, v9, 0x49

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 142
    :cond_2
    :try_start_1
    aget-byte v9, v3, v4

    int-to-byte v9, v9

    int-to-byte v10, v9

    add-int/lit8 v11, v10, -0x1

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(BBI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v10, v3, v4

    sub-int/2addr v10, v7

    int-to-byte v10, v10

    int-to-byte v11, v10

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    invoke-static {v10, v11, v3}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(BBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1, v2, v6}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 216
    sget v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    :try_start_2
    array-length v3, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    goto :goto_1

    .line 216
    :catchall_0
    move-exception p1

    throw p1

    .line 144
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x24

    goto :goto_0

    :cond_4
    const/16 v2, 0x38

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_5
    goto :goto_2

    .line 145
    :goto_1
    :pswitch_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lccsanandroid/content/pm/ResolveInfo;

    .line 216
    goto :goto_2

    .line 142
    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    throw p2

    :cond_6
    throw p1

    .line 145
    :cond_7
    :goto_2
    const-string p1, "X-Requested-With"

    if-eqz v5, :cond_9

    .line 147
    iget-object v2, v5, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    .line 144
    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    nop

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 147
    iget-object v2, v2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 148
    iget-object v2, v5, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v2, v2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :pswitch_1
    nop

    .line 150
    const-string v2, "com.android.browser"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 139
    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_a

    throw p2

    :cond_a
    throw p1

    .line 153
    :cond_b
    :goto_4
    new-instance p1, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;

    invoke-direct {p1, p0, p3, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 216
    invoke-virtual {v0, p2, v1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    .line 48
    move-object/from16 v1, p2

    const-string v4, "redirect"

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 23
    const/4 v14, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    move-object/from16 v15, p1

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v2, Lccsanokhttp3/Request$Builder;

    invoke-direct {v2}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 25
    invoke-virtual {v2, v0}, Lccsanokhttp3/Request$Builder;->url(Ljava/net/URL;)Lccsanokhttp3/Request$Builder;

    const-string v3, "User-Agent"

    .line 26
    invoke-virtual {v2, v3, v1}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 27
    sget-object v3, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object v11

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v19, v2, v12

    .line 29
    invoke-virtual {v11}, Lccsanokhttp3/Response;->code()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x12e

    const/16 v16, 0x0

    if-ne v2, v3, :cond_6

    .line 48
    sget v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    const/16 v17, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 30
    const/16 v2, 0x3d

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    :try_start_1
    sget-object v2, Lccsansan/cy/pause;->CPI_REPORT:Lccsansan/cy/pause;

    goto :goto_1

    :pswitch_0
    sget-object v2, Lccsansan/cy/pause;->CPI_REPORT:Lccsansan/cy/pause;

    invoke-static/range {p1 .. p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :goto_1
    invoke-static/range {p1 .. p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    sget v5, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v5, v5, 0x2f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 48
    :cond_2
    const/4 v9, 0x0

    .line 30
    :goto_3
    const/4 v5, 0x0

    move-wide/from16 v6, v19

    move-object/from16 v8, p3

    move-object/from16 v10, p1

    :try_start_2
    invoke-static/range {v2 .. v10}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, "Location"

    .line 31
    invoke-virtual {v11, v2}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 30
    const/16 v3, 0x35

    goto :goto_4

    :cond_3
    const/16 v3, 0xf

    :goto_4
    packed-switch v3, :pswitch_data_1

    move-object/from16 v3, p0

    goto :goto_6

    .line 32
    :pswitch_1
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_4

    move-object/from16 v3, p0

    goto :goto_6

    :cond_4
    const-string v3, "AD.CPI.Helper"

    .line 35
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 36
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    :try_start_4
    invoke-direct {v3, v2, v1, v4}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 30
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_2

    .line 48
    :pswitch_2
    goto :goto_7

    .line 36
    :goto_6
    nop

    .line 48
    return-void

    .line 29
    :cond_6
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 38
    :goto_7
    :try_start_5
    invoke-virtual {v11}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    .line 39
    new-instance v9, Lccsansan/x/addDownloadListener;

    invoke-direct {v9, v11}, Lccsansan/x/addDownloadListener;-><init>(Lccsanokhttp3/Response;)V

    const-string v6, "TrackHelper"

    const-string v10, ""

    const/4 v11, 0x1

    .line 40
    move-object/from16 v5, p1

    move-wide v7, v12

    invoke-static/range {v5 .. v11}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V

    .line 42
    sget-object v0, Lccsansan/cy/pause;->CPI_REPORT:Lccsansan/cy/pause;

    invoke-static/range {p1 .. p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v17, "success"

    const/16 v18, 0x0

    :try_start_6
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 30
    const/4 v5, 0x1

    goto :goto_8

    :cond_7
    const/4 v5, 0x0

    :goto_8
    packed-switch v5, :pswitch_data_3

    .line 42
    goto :goto_9

    :pswitch_3
    const/16 v22, 0x0

    goto :goto_a

    .line 48
    :goto_9
    const/16 v22, 0x1

    .line 42
    :goto_a
    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v21, p3

    move-object/from16 v23, p1

    invoke-static/range {v15 .. v23}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 45
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v6, "TrackHelper"

    move-object/from16 v5, p1

    move-wide v7, v12

    invoke-static/range {v5 .. v11}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLccsansan/x/addDownloadListener;Ljava/lang/String;Z)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v19, v5, v12

    .line 48
    sget-object v15, Lccsansan/cy/pause;->CPI_REPORT:Lccsansan/cy/pause;

    invoke-static/range {p1 .. p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v22, v0, 0x1

    move-object/from16 v21, p3

    move-object/from16 v23, p1

    invoke-static/range {v15 .. v23}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    :cond_8
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static unifiedDownload()I
    .locals 3

    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x11

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method private static unifiedDownload(BBI)Ljava/lang/String;
    .locals 6

    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x11

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    sget-object v0, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils:[B

    mul-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x1a

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    if-nez v0, :cond_0

    const/16 v2, 0x1e

    goto :goto_0

    :cond_0
    const/16 v2, 0x26

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    move p2, p1

    move-object v2, v1

    const/4 v4, 0x0

    move p1, p0

    move-object v1, v0

    move v0, p2

    goto :goto_2

    :goto_1
    int-to-byte v4, p2

    aput-byte v4, v1, v2

    if-ne v2, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v0, p1

    move v5, p1

    move p1, p0

    move p0, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p0

    add-int/lit8 p0, v0, -0x8

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    move v5, p2

    move p2, p0

    move p0, p1

    move p1, v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    sget p0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x30

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 49
    nop

    .line 25
    iget-object v1, v10, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 49
    const/16 v2, 0x24

    goto :goto_0

    :cond_0
    const/16 v2, 0x57

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 49
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :try_start_0
    array-length v2, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 25
    :goto_2
    nop

    .line 49
    :pswitch_1
    return-void

    .line 25
    :cond_2
    nop

    .line 49
    sget v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    :cond_3
    const/4 v13, 0x0

    .line 29
    :goto_3
    iget-object v1, v10, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    if-nez v13, :cond_4

    .line 31
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v14

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 33
    iget-object v1, v10, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 34
    iget-object v1, v10, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    new-instance v8, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v11, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v15, v14, v11}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    .line 49
    goto :goto_4

    :cond_4
    iget-object v1, v10, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v9, v0, v1, v12}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 8

    .line 106
    nop

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadAdClick url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadedList()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadedList()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 106
    :pswitch_0
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 79
    :cond_2
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lccsansan/p/getDownloadedRecordByUrl$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lccsansan/p/getDownloadedRecordByUrl$$ExternalSyntheticLambda1;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Lccsanandroid/content/Context;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_2

    .line 95
    :goto_1
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;

    invoke-direct {v0, p0, p2, p3, p4}, Lccsansan/p/getDownloadedRecordByUrl$deleteDownItem;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 106
    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_2

    :cond_4
    const/16 p1, 0x34

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/util/List;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;

    const-string v3, "ReportUrl"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14

    move-object v0, p1

    .line 24
    nop

    .line 0
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 0
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "pop_source"

    .line 11
    invoke-virtual {p1, v2}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "hadReport212"

    const/4 v5, 0x1

    if-nez v3, :cond_6

    :try_start_1
    const-string v3, "bind"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    .line 24
    const/16 v3, 0x19

    goto :goto_0

    :cond_1
    const/16 v3, 0x1c

    :goto_0
    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 13
    :cond_2
    :try_start_2
    const-string v3, "transfer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_3

    .line 24
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    :pswitch_0
    sget v3, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-string v7, "preset"

    packed-switch v3, :pswitch_data_2

    .line 13
    goto :goto_3

    .line 24
    :pswitch_1
    :try_start_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    array-length v3, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 13
    :goto_3
    :try_start_5
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_3

    .line 13
    :goto_5
    :pswitch_2
    nop

    .line 14
    invoke-virtual {p1, v4, v6}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 24
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 14
    :cond_6
    :pswitch_3
    nop

    .line 18
    :try_start_6
    invoke-virtual {p1, v4, v5}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result v6

    .line 20
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->deleteDownItem()J

    move-result-wide v10

    .line 21
    move-object v2, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v2 .. v13}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 24
    goto :goto_6

    .line 21
    :catch_0
    move-exception v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u9b07\u85b1\u6456\u2d12\u9b24\u9fda\u5027\u6348\uf355\u0796\uf863\u9b1a\u4b1b\u6f53\u60a4\u33e4\ua381\ud701\u08c7\uab83\u3b9e\u3f1c\ub13d\uc27f\u9244\ua6f8\u5968\u7a6b"

    const-string v8, "AD.CPI.Helper"

    cmp-long v9, v3, v5

    invoke-static {v7, v9}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/16 v0, 0x30

    goto :goto_7

    :cond_7
    const/16 v0, 0xa

    :goto_7
    packed-switch v0, :pswitch_data_4

    goto :goto_8

    :pswitch_4
    return-void

    :goto_8
    :try_start_7
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_4
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 15

    .line 9
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6
    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    const-string v1, ""

    const-string v2, "\u5521\u338b\uccd1\u557a\u5545\u29eb\uf8b8\u1b39\u3d71\ub1af\u50ea\ue377"

    packed-switch v0, :pswitch_data_0

    .line 9
    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    invoke-static {v2, v0}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 0
    :pswitch_0
    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    invoke-static {v2, v0}, Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :goto_3
    return-void

    .line 9
    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v14, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p11

    move-object/from16 v11, p5

    move/from16 v12, p10

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingList;-><init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;ILccsanandroid/content/Context;)V

    invoke-virtual {v0, v14}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 6
    sget v0, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 9
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method
