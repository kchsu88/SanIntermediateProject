.class public Lccsansan/dn/addDownloadListener;
.super Lccsansan/dn/unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;,
        Lccsansan/dn/addDownloadListener$addDownloadListener;
    }
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:C

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:C

.field private static unifiedDownload:C


# instance fields
.field private IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    const v0, 0xef06

    sput-char v0, Lccsansan/dn/addDownloadListener;->unifiedDownload:C

    const v0, 0xcfdb

    sput-char v0, Lccsansan/dn/addDownloadListener;->removeDownloadListener:C

    const/16 v0, 0x4539

    sput-char v0, Lccsansan/dn/addDownloadListener;->getDownloadedList:C

    const/16 v0, 0x4196

    sput-char v0, Lccsansan/dn/addDownloadListener;->getDownloadingList:C

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/dn/unifiedDownload;-><init>(II)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/dn/addDownloadListener;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    .line 6
    invoke-static {p1, p2}, Lccsansan/dn/removeDownloadListener;->IncentiveDownloadUtils(II)Lccsanokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dn/addDownloadListener;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    return-void
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

    sget-char v11, Lccsansan/dn/addDownloadListener;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dn/addDownloadListener;->getDownloadedList:C

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

    sget-char v11, Lccsansan/dn/addDownloadListener;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/dn/addDownloadListener;->unifiedDownload:C

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


# virtual methods
.method public synthetic IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;
    .locals 3

    .line 1
    sget v0, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lccsansan/dn/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/dn/addDownloadListener$addDownloadListener;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1a

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x22

    goto :goto_1

    :cond_1
    const/16 v0, 0x4f

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    const/16 v0, 0x2d

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;)Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    nop

    .line 2
    instance-of v0, p1, Lccsansan/dn/addDownloadListener$addDownloadListener;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 3
    move-object v0, p1

    check-cast v0, Lccsansan/dn/addDownloadListener$addDownloadListener;

    .line 5
    invoke-virtual {p1}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lccsansan/dn/addDownloadListener$addDownloadListener;->removeDownloadListener()Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 23
    sget v2, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 23
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/util/Pair;

    .line 8
    iget-object v3, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList()Lccsanandroid/util/Pair;

    move-result-object p1

    .line 14
    iget-object v1, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v5, ""

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-ltz v8, :cond_4

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-ltz v2, :cond_2

    .line 23
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v3, :pswitch_data_1

    sget v2, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 15
    :pswitch_1
    nop

    .line 23
    move-object p1, v5

    goto :goto_4

    .line 15
    :cond_3
    :goto_3
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/io/Serializable;

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Range"

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 18
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "XzHttpClient"

    .line 19
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ubdb4\ue75a\uaa3e\udd1e\u51a5\u2965\u6095\u8df9\u9a20\u56fc\u83fe\u6578\u3c62\u1296\u8a76\u08d0\u4e32\u469d\u63bbe"

    const/16 v3, 0x30

    invoke-static {v5, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x12

    invoke-static {v2, v3}, Lccsansan/dn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lccsansan/dn/addDownloadListener;->IncentiveDownloadUtils:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lccsanokhttp3/Call;->execute()Lccsanokhttp3/Response;

    move-result-object p1

    .line 21
    new-instance v0, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p1}, Lccsansan/dn/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/dn/addDownloadListener;Lccsanokhttp3/Response;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute ok http client error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    sget v3, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 8
    :cond_5
    iget-object v3, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    sget v2, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 10
    :cond_6
    iget-object v3, v2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/dn/addDownloadListener$addDownloadListener;
    .locals 2

    .line 1
    new-instance v0, Lccsansan/dn/addDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p1}, Lccsansan/dn/addDownloadListener$addDownloadListener;-><init>(Lccsansan/dn/addDownloadListener;Ljava/lang/String;)V

    sget p1, Lccsansan/dn/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/dn/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method
