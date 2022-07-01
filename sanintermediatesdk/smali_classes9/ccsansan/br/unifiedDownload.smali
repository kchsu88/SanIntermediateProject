.class public Lccsansan/br/unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bm/getDownloadingList;


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingCount:I

.field private static getDownloadingRecordByUrl:C


# instance fields
.field private IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

.field private addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

.field private getDownloadingList:Lccsansan/av/getDownloadingList;

.field private removeDownloadListener:Z

.field private unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    const/16 v0, 0x7699

    sput-char v0, Lccsansan/br/unifiedDownload;->getDownloadStatusByUrl:C

    const/16 v0, 0x1527

    sput-char v0, Lccsansan/br/unifiedDownload;->getDownloadedRecordByUrl:C

    const v0, 0xbae2

    sput-char v0, Lccsansan/br/unifiedDownload;->getDownloadingRecordByUrl:C

    const/16 v0, 0x26fa

    sput-char v0, Lccsansan/br/unifiedDownload;->getDownloadedList:C

    return-void
.end method

.method public constructor <init>(Lccsansan/av/getDownloadingList;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    const-string v3, "\u0852\ua881\u653b\uc78f\ua9ad\u3993\u79fb\u5e39\u7e76\u5e20\u94ce\u10b0\u9e6a\u0a4f\uac73\u5480\u631a\u1eef\u4a85\uf358\ue411\ud0b6"

    invoke-static {v3, v2}, Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/br/unifiedDownload;->removeDownloadListener:Z

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1e

    const-string v2, "\u0852\ua881\u653b\uc78f\ua9ad\u3993\u79fb\u5e39\u7e76\u5e20\u94ce\u10b0\u9e6a\u0a4f\uac73\u5480\u631a\u1eef\u4a85\uf358\ubb99\ue688\u9326\ub94b\u9c94\u7ce4\ue6c5\u70cc\uc78b\uc327"

    invoke-static {v2, v1}, Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/br/unifiedDownload;->unifiedDownload:I

    .line 6
    iput-object p1, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    .line 7
    invoke-direct {p0}, Lccsansan/br/unifiedDownload;->addDownloadListener()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 5

    .line 41
    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 41
    const/16 v0, 0x5d

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    goto :goto_2

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    :catchall_1
    move-exception p1

    throw p1

    :cond_3
    return-object v2

    .line 24
    :goto_2
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 27
    :cond_4
    invoke-static {p1}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5_have path ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CacheWebViewClient"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    sget p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    .line 29
    return-object v2

    .line 41
    :pswitch_1
    :try_start_2
    array-length p1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v2

    :catchall_2
    move-exception p1

    throw p1

    .line 32
    :cond_6
    :try_start_3
    iget-object v1, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    invoke-virtual {v1, v0}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    .line 34
    invoke-direct {p0, p1, v0}, Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_4

    .line 34
    :cond_7
    nop

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptRequest have cache uriPath = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Lccsanandroid/webkit/WebResourceResponse;

    const-string v3, ""

    invoke-direct {v0, p1, v3, v1}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 41
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/br/unifiedDownload;)Lccsansan/av/getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x51

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    :goto_0
    iget-object p0, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 5

    .line 26
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 26
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 0
    goto :goto_5

    .line 14
    :pswitch_0
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    const-string v4, "?cache=open"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0xb

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 26
    sget v2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    .line 21
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lccsansan/br/unifiedDownload;->removeDownloadListener:Z

    invoke-direct {p0, v2, p1}, Lccsansan/br/unifiedDownload;->removeDownloadListener(ZLccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 26
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 25
    invoke-static {}, Lccsansan/bo/getDownloadingList;->getDownloadingList()Z

    move-result v2

    goto :goto_2

    .line 21
    :pswitch_1
    return-object v2

    .line 25
    :goto_2
    if-eqz v2, :cond_3

    .line 26
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    .line 25
    :pswitch_2
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->getDownloadingList(Lccsanandroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    .line 26
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lccsansan/br/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :cond_5
    :goto_4
    return-object v3

    :goto_5
    sget p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 4

    .line 4
    nop

    .line 1
    new-instance v0, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3, v1}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lccsansan/br/unifiedDownload;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private getDownloadingList()J
    .locals 5

    .line 13
    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "WIFI"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x1a

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    goto :goto_7

    .line 5
    :cond_2
    const-string v1, "MOB_4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    const/16 v1, 0x41

    goto :goto_2

    :cond_3
    const/16 v1, 0x17

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_6

    .line 5
    :pswitch_0
    const-string v1, "MOB_UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_6

    .line 7
    :cond_4
    const-string v1, "MOB_3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    .line 7
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 9
    :cond_5
    const-string v1, "MOB_2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x1f4

    .line 13
    return-wide v0

    .line 12
    :cond_6
    iget v0, p0, Lccsansan/br/unifiedDownload;->unifiedDownload:I

    if-lez v0, :cond_7

    .line 3
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 12
    const-wide/16 v0, 0xbb8

    goto :goto_5

    .line 13
    :pswitch_1
    sget v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    .line 3
    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_3

    .line 12
    int-to-long v0, v0

    goto :goto_5

    .line 13
    :pswitch_2
    int-to-long v0, v0

    const/4 v2, 0x0

    :try_start_1
    array-length v2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    throw v0

    :goto_5
    nop

    .line 12
    return-wide v0

    :goto_6
    const-wide/16 v0, 0x7d0

    return-wide v0

    .line 13
    :cond_9
    :goto_7
    :pswitch_3
    iget v0, p0, Lccsansan/br/unifiedDownload;->unifiedDownload:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 5

    .line 20
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    if-eqz v2, :cond_2

    .line 20
    const/16 v3, 0x25

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e

    :goto_0
    const-string v4, ""

    packed-switch v3, :pswitch_data_0

    .line 11
    :try_start_0
    invoke-virtual {v2, v0}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {p1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v3, Lccsanandroid/webkit/WebResourceResponse;

    invoke-direct {v3, v2, v4, v0}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    move-object v1, v3

    goto :goto_1

    .line 17
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :pswitch_0
    nop

    .line 20
    nop

    :goto_1
    iget-object v0, p0, Lccsansan/br/unifiedDownload;->addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-nez v1, :cond_5

    sget v2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const-string v2, "failed"

    goto :goto_3

    :cond_5
    const-string v2, "success"

    :goto_3
    const-string v3, "load_cache"

    invoke-interface {v0, p1, v3, v2, v4}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9

    .line 79
    nop

    .line 42
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 43
    new-instance v1, Lccsanokhttp3/Request$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 44
    invoke-virtual {v1, p2}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lccsansan/br/unifiedDownload;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 48
    new-instance v3, Lccsansan/br/unifiedDownload$addDownloadListener;

    invoke-direct {v3, p0, p2, p1, v2}, Lccsansan/br/unifiedDownload$addDownloadListener;-><init>(Lccsansan/br/unifiedDownload;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v3}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    .line 69
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0}, Lccsansan/br/unifiedDownload;->getDownloadingList()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    sget v4, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v4, v4, 0x77

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/16 v4, 0x5d

    :goto_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 79
    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 74
    :cond_2
    iget-object v0, p0, Lccsansan/br/unifiedDownload;->addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    const-string v4, "\u0852\ua881\u653b\uc78f\ua9ad\u3993\u79fb\u5e39\u28eb\u1a1b\ue08c\u15d8"

    invoke-static {v4, p1}, Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v4, "failed"

    const-string v5, "Timeout"

    invoke-interface {v0, p2, p1, v4, v5}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_3

    const/16 p1, 0x48

    goto :goto_3

    :cond_3
    const/16 p1, 0x4c

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 77
    :cond_4
    :pswitch_1
    invoke-interface {v1}, Lccsanokhttp3/Call;->cancel()V

    .line 79
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(ZLccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 6

    .line 23
    nop

    .line 7
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const/16 v0, 0x4d

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_6

    .line 23
    :pswitch_0
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 8
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_1
    if-eqz p1, :cond_5

    :goto_3
    goto :goto_5

    :goto_4
    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_3

    .line 10
    :goto_5
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsansan/br/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have pending stream is  cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheWebViewClient"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 14
    const-string v0, "interceptRequest saveUrl success"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lccsansan/br/unifiedDownload;->addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    const-string v4, "\ua9ad\u3993\u79fb\u5e39\u3da3\u60c2\u479e\u30f4\u73ff\ua0fb\ucaf1\uc30e\u836e\ubcde\u3d96\u2186\u838c\udc3b"

    invoke-static {v4, v3}, Lccsansan/br/unifiedDownload;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-interface {v0, v1, v3, v4, v2}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lccsanandroid/webkit/WebResourceResponse;

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v2, p1}, Lccsanandroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_7

    .line 18
    :cond_4
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/br/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_6

    .line 21
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 22
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 22
    :cond_6
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 23
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/br/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object v1

    sget p1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_6

    :catchall_0
    move-exception p1

    throw p1

    :cond_7
    :goto_6
    :pswitch_2
    nop

    :goto_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/br/unifiedDownload;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/br/unifiedDownload;->getDownloadingRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/br/unifiedDownload;->getDownloadedList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/br/unifiedDownload;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    nop

    .line 27
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lccsansan/br/unifiedDownload;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p1

    new-instance v0, Lccsansan/br/unifiedDownload$unifiedDownload;

    invoke-direct {v0, p0, p2}, Lccsansan/br/unifiedDownload$unifiedDownload;-><init>(Lccsansan/br/unifiedDownload;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    sget p1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/br/unifiedDownload;->addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/bm/getDownloadingList$removeDownloadListener;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    iput-object p1, p0, Lccsansan/br/unifiedDownload;->addDownloadListener:Lccsansan/bm/getDownloadingList$removeDownloadListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x32

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 1

    .line 3
    sget p1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    :cond_0
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/br/unifiedDownload;->addDownloadListener(Lccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    sget p2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p2, p2, 0x1b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
    .locals 1

    .line 2
    sget p1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    :cond_0
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/br/unifiedDownload;->addDownloadListener(Lccsanandroid/net/Uri;)Lccsanandroid/webkit/WebResourceResponse;

    move-result-object p1

    sget p2, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p2, p2, 0x51

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)Z
    .locals 1

    sget p1, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()V
    .locals 3

    .line 5
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4
    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/br/unifiedDownload;->getDownloadingList:Lccsansan/av/getDownloadingList;

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x1

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsansan/br/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v2, p0}, Lccsansan/br/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsansan/br/unifiedDownload;)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    sget v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 4
    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 5
    goto :goto_5

    :pswitch_1
    return-void

    :goto_5
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 1

    sget p1, Lccsansan/br/unifiedDownload;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload;->getDownloadingCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
