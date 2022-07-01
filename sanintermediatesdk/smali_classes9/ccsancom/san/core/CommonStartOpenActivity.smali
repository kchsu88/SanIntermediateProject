.class public Lccsancom/san/core/CommonStartOpenActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field public static final addDownloadListener:I

.field private static getDownloadedRecordByUrl:I

.field public static final getDownloadingList:[B

.field private static removeDownloadListener:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    invoke-static {}, Lccsancom/san/core/CommonStartOpenActivity;->addDownloadListener()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadingList:[B

    const/16 v2, 0xca

    sput v2, Lccsancom/san/core/CommonStartOpenActivity;->addDownloadListener:I

    sget v2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/16 v1, 0xb

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x6at
        0x16t
        0x78t
        0x28t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 3

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/CommonStartOpenActivity$IncentiveDownloadUtils;

    const-string v2, "CPI_AUTO_START"

    invoke-direct {v1, p0, v2}, Lccsancom/san/core/CommonStartOpenActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/core/CommonStartOpenActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    nop

    .line 3
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onEvent["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  Info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonStartOpenActivity"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    .line 19
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedList()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lccsancom/san/core/CommonStartOpenActivity$getDownloadingList;-><init>(Lccsancom/san/core/CommonStartOpenActivity;JLjava/lang/String;Lccsanandroid/content/Intent;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/core/CommonStartOpenActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(BSB)Ljava/lang/String;
    .locals 8

    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x4

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    sget-object v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadingList:[B

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x11

    new-array v2, p0, [B

    add-int/lit8 p0, p0, -0x1

    if-nez v0, :cond_0

    const/16 v3, 0x60

    goto :goto_0

    :cond_0
    const/16 v3, 0x2c

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p2, v1, 0x80

    sput p2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    move p2, p1

    move v1, p2

    const/4 v3, 0x0

    move p1, p0

    goto :goto_2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    int-to-byte v3, p2

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    if-ne v1, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v1, v0, p1

    sget v5, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    move v7, p1

    move p1, p0

    move p0, p2

    move p2, v7

    :goto_2
    neg-int v1, v1

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x8

    move v1, v3

    move v7, p2

    move p2, p0

    move p0, p1

    move p1, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const/16 v0, 0x58

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils:[C

    const-wide v0, -0x3e0e941f18235538L    # -4.676521597791695E9

    sput-wide v0, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x5208s
        0x760s
        -0x7c1s
        -0x521es
        0x689s
        -0x7b9s
        -0x52des
        0x6cds
        -0x418s
        -0x5359s
        0x66as
        -0x4d1s
        -0x5329s
        0x196s
        -0x4b1s
        -0x53cds
        0x130s
        -0x50cs
        -0x5015s
        0x173s
        -0x5f0s
        -0x502cs
        0xb86s
        -0x5eb5s
        0x5e08s
        0xbd9s
        -0x5f6es
        0x5e43s
        0xb1bs
        -0x5f14s
        0x5de4s
        0xabds
        -0x5f8es
        0x5d3as
        0xac9s
        -0x585as
        0x5d59s
        0xa0cs
        -0x58cds
        0x5cees
        0x9bbs
        -0x588ds
        0x5c34s
        0x9dbs
        -0x596as
        0x5c4ds
        0x973s
        0x73s
        -0x5544s
        0x55f1s
        0x2cs
        -0x54ads
        0x55aes
        0xc5s
        -0x54ecs
        0x562cs
        0x15bs
        -0x544ds
        0x56eas
        0x105s
        -0x53b3s
        0x569es
        0x1f1s
        -0x5312s
        0x573bs
        0x264s
        -0x5347s
        0x57ccs
        0x204s
        -0x529ds
        0x578cs
        0x2a1s
        -0x5206s
        0x5824s
        0x356s
        -0x5271s
        0x58f8s
        0x31bs
        -0x51a1s
        0x5920s
        0x3ads
        -0x511es
        0x592as
        0x44fs
        -0x5166s
        0x5990s
        0x442s
        -0x50a0s
    .end array-data
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 77
    const-string v0, "sid"

    const-string v1, "CommonStartOpenActivity"

    .line 30
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 33
    sget v5, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x3f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 32
    :cond_0
    :try_start_1
    iget-object v5, v4, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_2

    .line 77
    sget v5, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v5, v5, 0x5b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 33
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    iget-object v6, v4, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v5, v6, p3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v5

    goto :goto_2

    :goto_1
    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    iget-object v6, v4, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v5, v6, p3}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x0

    :try_start_3
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 77
    :catchall_0
    move-exception p1

    throw p1

    .line 35
    :cond_2
    :try_start_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, p3}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v5

    .line 33
    :goto_2
    nop

    .line 37
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    .line 38
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "portal"

    .line 39
    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pkg"

    .line 40
    invoke-virtual {v7, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 41
    invoke-virtual {v7, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    .line 42
    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cls_name"

    .line 43
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    .line 44
    invoke-virtual {v7, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v5, :cond_3

    .line 33
    const/16 p1, 0x9

    goto :goto_3

    :cond_3
    const/16 p1, 0x16

    :goto_3
    const-string p2, "ad_id"

    const-string p3, "sourcetype"

    packed-switch p1, :pswitch_data_1

    .line 64
    if-eqz v4, :cond_a

    goto/16 :goto_5

    .line 46
    :pswitch_1
    :try_start_5
    iget-object p1, v5, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez p1, :cond_4

    .line 33
    const/16 p1, 0x3c

    goto :goto_4

    :cond_4
    const/16 p1, 0x3b

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 46
    const-string p1, "placement_id"

    .line 47
    :try_start_6
    iget-object p4, v5, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v7, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 49
    :pswitch_2
    iget-object p1, v5, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez p1, :cond_6

    .line 77
    sget p1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 49
    :cond_5
    nop

    .line 50
    :try_start_7
    iget-object p1, v5, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v7, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    const-string p1, "did"

    .line 52
    :try_start_8
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p1, "cpiparam"

    .line 53
    :try_start_9
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "pid"

    .line 54
    :try_start_a
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v5, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "creative_id"

    .line 56
    :try_start_b
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p1, "formatid"

    .line 57
    :try_start_c
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string p1, "adnet"

    .line 58
    :try_start_d
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, v5, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-eqz p2, :cond_8

    .line 77
    sget p2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0xb

    rem-int/lit16 p4, p2, 0x80

    sput p4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    .line 60
    :cond_7
    if-eqz v4, :cond_8

    .line 61
    :try_start_e
    invoke-virtual {v4, p3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    nop

    .line 63
    invoke-virtual {v7, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string p1, "downid"

    .line 64
    :try_start_f
    iget-object p2, v5, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 68
    :goto_5
    iget-object p1, v4, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 69
    iget-object p1, v4, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v7, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 69
    :cond_9
    nop

    .line 71
    invoke-virtual {v4, p3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 64
    :cond_a
    :goto_6
    nop

    .line 71
    const-string p1, "tm"

    .line 74
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x17

    const-string p2, ""

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p2

    rsub-int p2, p2, 0xbc7

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    add-int/lit8 p3, p3, 0x19

    invoke-static {p1, p2, p3}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {v6, p1, v7}, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x2f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    sub-int/2addr v2, v0

    int-to-char p4, v2

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p5

    add-int/lit8 p5, p5, 0x29

    invoke-static {p3, p4, p5}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_2
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 29
    const-string v0, "CommonStartOpenActivity"

    .line 20
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "portal"

    .line 22
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    .line 23
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "tm"

    .line 24
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cls_name"

    .line 25
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    .line 26
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x30

    invoke-static {p1}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result p1

    add-int/lit8 p1, p1, -0x1a

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide p2

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    add-int/lit16 v6, v6, 0xbc8

    int-to-char p2, v6

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x19

    invoke-static {p1, p2, p3}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v2, p1, v3}, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    sget p1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-static {v1, p3, p3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float p3, v2, p3

    rsub-int/lit8 p3, p3, 0x2f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    const v3, 0x1000029

    invoke-static {v1, v1, v1}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {p3, v2, v1}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget p1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener()V
    .locals 5

    .line 11
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6
    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 6
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 6
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x65

    if-lt v3, v4, :cond_7

    :pswitch_1
    goto :goto_3

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_8

    .line 11
    :goto_3
    sget v3, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v3, v3, 0x1f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    .line 11
    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_3
    if-eqz v0, :cond_7

    .line 7
    :goto_5
    const-string v3, "portal"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpi_protect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    const/16 v3, 0x62

    goto :goto_6

    :cond_4
    const/16 v3, 0x51

    :goto_6
    packed-switch v3, :pswitch_data_3

    sget v3, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 7
    :cond_5
    nop

    .line 8
    const-string v3, "pkg"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-direct {p0, v3}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v0, v3}, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;Ljava/lang/String;)V

    .line 6
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    packed-switch v1, :pswitch_data_4

    .line 11
    nop

    :cond_7
    :goto_8
    :pswitch_2
    nop

    .line 6
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/16 v0, 0x31

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 11
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x51
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/core/CommonStartOpenActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    invoke-direct/range {p0 .. p5}, Lccsancom/san/core/CommonStartOpenActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private unifiedDownload(Ljava/lang/String;)V
    .locals 8

    .line 18
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 12
    :cond_0
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    sget v4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0xd

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    :cond_1
    add-int/lit8 v5, v5, 0x31

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 12
    :cond_2
    :try_start_1
    sget-object v4, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadingList:[B

    const/4 v5, 0x5

    aget-byte v5, v4, v5

    sub-int/2addr v5, v1

    int-to-byte v5, v5

    neg-int v6, v5

    int-to-byte v6, v6

    neg-int v7, v6

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lccsancom/san/core/CommonStartOpenActivity;->addDownloadListener(BSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    int-to-byte v6, v2

    const/4 v7, 0x4

    aget-byte v4, v4, v7

    neg-int v4, v4

    int-to-byte v4, v4

    invoke-static {v6, v4, v6}, Lccsancom/san/core/CommonStartOpenActivity;->addDownloadListener(BSB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_3

    .line 15
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    goto/16 :goto_4

    .line 18
    :pswitch_0
    sget v4, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 15
    const/16 v4, 0x3c

    goto :goto_2

    :cond_4
    const/16 v4, 0x30

    :goto_2
    const/high16 v5, 0x10000000

    packed-switch v4, :pswitch_data_1

    .line 18
    nop

    .line 14
    :try_start_3
    invoke-virtual {v3, v5}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    goto :goto_3

    .line 12
    :pswitch_1
    nop

    .line 14
    invoke-virtual {v3, v5}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_1

    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    throw p1

    .line 12
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    throw v4

    :cond_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 15
    :catch_0
    move-exception v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-static {v5, v0, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/2addr v0, v1

    const v1, 0xaddb

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    int-to-char v1, v1

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v0, v1, v2}, Lccsancom/san/core/CommonStartOpenActivity;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonStartOpenActivity"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 2

    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 13
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    const/16 v0, 0x33

    .line 3
    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setGravity(I)V

    .line 4
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5
    const/4 v1, 0x0

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->x:I

    .line 6
    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->y:I

    .line 7
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 10
    const-string p1, "CommonStartOpenActivity"

    const-string v0, "-----onCreate"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lccsancom/san/core/CommonStartOpenActivity;->IncentiveDownloadUtils()V

    .line 13
    invoke-direct {p0}, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener()V

    sget p1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    const-string v1, "-----onDestroy"

    const-string v2, "CommonStartOpenActivity"

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 2
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 2
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onPause()V

    .line 2
    const-string v0, "CommonStartOpenActivity"

    const-string v1, "-----onPause"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3d

    goto :goto_0

    :cond_1
    const/16 v0, 0x4a

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x4b

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .line 11
    nop

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v2, 0x4f

    if-lt v0, v1, :cond_0

    .line 6
    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    const-string v5, "portal"

    invoke-virtual {v0, v5}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "cpi_protect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 6
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 11
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    return-void

    :cond_2
    :pswitch_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsancom/san/core/CommonStartOpenActivity$addDownloadListener;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadingRecordByUrl()J

    move-result-wide v5

    invoke-direct {v2, p0, v5, v6}, Lccsancom/san/core/CommonStartOpenActivity$addDownloadListener;-><init>(Lccsancom/san/core/CommonStartOpenActivity;J)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/core/CommonStartOpenActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/core/CommonStartOpenActivity;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 6
    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 11
    return-void

    :pswitch_2
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
