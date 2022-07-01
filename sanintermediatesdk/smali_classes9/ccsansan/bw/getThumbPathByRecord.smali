.class public Lccsansan/bw/getThumbPathByRecord;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:C

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:C

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    const/16 v0, 0x18

    sput-char v0, Lccsansan/bw/getThumbPathByRecord;->IncentiveDownloadUtils:C

    const v0, 0xbd60

    sput-char v0, Lccsansan/bw/getThumbPathByRecord;->removeDownloadListener:C

    const v0, 0xbe7e

    sput-char v0, Lccsansan/bw/getThumbPathByRecord;->addDownloadListener:C

    const/16 v0, 0x6398

    sput-char v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingList:C

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/bw/getThumbPathByRecord;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bw/getThumbPathByRecord;->addDownloadListener:C

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

    sget-char v11, Lccsansan/bw/getThumbPathByRecord;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/bw/getThumbPathByRecord;->IncentiveDownloadUtils:C

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

.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result p0

    sget v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    const/16 v1, 0x31

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 3

    .line 31
    sget v0, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 10
    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    goto :goto_1

    :cond_1
    const/16 v0, 0x4b

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/16 v2, 0x1d

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 31
    :pswitch_1
    sget p0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 10
    const/16 p0, 0x2c

    goto :goto_3

    :cond_2
    const/16 p0, 0x5e

    :goto_3
    packed-switch p0, :pswitch_data_2

    .line 31
    :pswitch_2
    return v1

    .line 13
    :cond_3
    :goto_4
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lccsancom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    sget-object v0, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 15
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    new-instance v0, Lccsansan/bw/getThumbPathByRecord$getDownloadingList;

    invoke-direct {v0}, Lccsansan/bw/getThumbPathByRecord$getDownloadingList;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/DrawableRequestBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check url cache failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SourceXzUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5e
        :pswitch_2
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Z)Ljava/io/File;
    .locals 5

    .line 9
    sget p1, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    const/16 p1, 0xe

    goto :goto_0

    :cond_1
    const/16 p1, 0x22

    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :pswitch_0
    sget p0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/16 p0, 0x25

    goto :goto_1

    :cond_2
    const/16 p0, 0x2f

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 1
    return-object v0

    .line 9
    :pswitch_1
    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    .line 4
    :goto_2
    :try_start_2
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lccsancom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 6
    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->downloadOnly(II)Lccsancom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lccsancom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    goto :goto_3

    .line 7
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    const-string v3, "\ue6a8\ufa0f\uf6fb\u0108\uc71a\u38cc\uaf84\u28d8\ucf6e\uf108\u4427\ua50a\u5c75\u8790\u3932\u0b12\u0944\u68fa\udfeb\u80ea\u3fad\uc0b3"

    const-string v4, "SourceXzUtils"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, 0x15

    invoke-static {v3, v1}, Lccsansan/bw/getThumbPathByRecord;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 3
    sget v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    const/16 v0, 0x4e

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lccsansan/bw/getThumbPathByRecord;->removeDownloadListener(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p0, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getThumbPathByRecord;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x26

    goto :goto_1

    :cond_2
    const/16 p0, 0x1d

    :goto_1
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_1

    goto :goto_2

    .line 1
    :pswitch_1
    goto :goto_3

    .line 3
    :goto_2
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch
.end method
