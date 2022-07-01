.class public Lccsansan/bs/getDownloadingList;
.super Lccsansan/bs/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/getDownloadingList$getDownloadingList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsansan/bs/IncentiveDownloadUtils;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field public static final addDownloadListener:[B

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field public static final getDownloadingList:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    invoke-static {}, Lccsansan/bs/getDownloadingList;->removeDownloadListener()V

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/bs/getDownloadingList;->addDownloadListener:[B

    const/16 v1, 0x14

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadingList:I

    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x1a

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x68t
        0x32t
        0x34t
        -0x58t
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

.method public constructor <init>(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/bs/IncentiveDownloadUtils;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/bs/getDownloadingList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/bs/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    sget p0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x5c

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(ISB)Ljava/lang/String;
    .locals 8

    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    mul-int/lit8 p0, p0, 0x16

    rsub-int/lit8 p0, p0, 0x19

    sget-object v0, Lccsansan/bs/getDownloadingList;->addDownloadListener:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x11

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    if-nez v0, :cond_0

    const/16 v2, 0x4f

    goto :goto_0

    :cond_0
    const/16 v2, 0x46

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move p2, p1

    move-object v2, v1

    const/4 v4, 0x0

    move p1, p0

    move-object v1, v0

    move v0, p2

    goto :goto_2

    :pswitch_0
    move-object v2, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p1

    move p1, p0

    :goto_1
    move p0, p2

    goto :goto_3

    :goto_2
    add-int/2addr p0, p2

    add-int/lit8 p2, p0, -0x8

    goto :goto_1

    :goto_3
    const/4 p2, 0x1

    add-int/2addr p1, p2

    int-to-byte v5, p0

    aput-byte v5, v2, v4

    if-ne v4, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v1, p1

    sget v6, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v6, v6, 0x21

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    const/4 p2, 0x0

    :goto_4
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    move p2, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/bs/getDownloadingList;->unifiedDownload:J

    const/16 v0, 0x481

    sput-char v0, Lccsansan/bs/getDownloadingList;->getDownloadedRecordByUrl:C

    const/4 v0, 0x0

    sput v0, Lccsansan/bs/getDownloadingList;->IncentiveDownloadUtils:I

    return-void
.end method

.method private removeDownloadListener(Lccsanandroid/content/pm/PackageInfo;)V
    .locals 7

    .line 25
    nop

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "need_stats_error_az"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    const v3, 0x2cfd6016

    const-string v4, ""

    invoke-static {v4, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    sub-int/2addr v3, v4

    const-string v4, "\u74b0\u5e97\u5922\ubbc0\udc4e\u10b1\ub0a8\u4dd2\u6b47\u1441\u6fab"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u16f1\ufd60\uae2c\ub1b7"

    invoke-static {v4, v5, v1, v3, v6}, Lccsansan/bs/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lccsansan/dr/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 17
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 25
    sget v3, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageInfo;

    .line 17
    iget-object v5, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v5}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x4a

    :try_start_0
    div-int/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    throw p1

    .line 16
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageInfo;

    .line 17
    iget-object v5, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v5}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    move-object v1, v3

    .line 25
    nop

    .line 17
    :pswitch_0
    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    packed-switch v2, :pswitch_data_1

    .line 25
    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 17
    :cond_4
    if-eqz v1, :cond_5

    :pswitch_1
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    goto :goto_3

    .line 25
    :cond_6
    iget-object p1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    const-string v0, "wrong"

    invoke-static {v0, p1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    goto :goto_5

    .line 23
    :goto_3
    iget-object p1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    const-string v0, "right"

    invoke-static {v0, p1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    .line 25
    sget p1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    .line 17
    const/16 p1, 0x2b

    goto :goto_4

    :cond_7
    const/16 p1, 0x24

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 25
    :pswitch_2
    nop

    :goto_5
    return-void

    .line 17
    :cond_8
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 7

    .line 5
    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 5
    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2
    :cond_1
    :try_start_0
    sget-object v1, Lccsansan/bs/getDownloadingList;->addDownloadListener:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    int-to-byte v3, v1

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    invoke-static {v1, v3, v4}, Lccsansan/bs/getDownloadingList;->getDownloadingList(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    int-to-byte v4, v3

    int-to-byte v5, v4

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/bs/getDownloadingList;->getDownloadingList(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0x42

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 2
    :cond_3
    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    :pswitch_0
    sget p1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x7

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    throw v0

    :cond_5
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/bs/getDownloadingList;->unifiedDownload:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/bs/getDownloadingList;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/bs/getDownloadingList;->getDownloadedRecordByUrl:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    nop

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils(Ljava/io/File;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    const/16 v1, 0x43

    goto :goto_0

    :cond_0
    const/16 v1, 0x5b

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/high16 v0, 0x10000000

    .line 8
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_3

    :pswitch_0
    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 6
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    packed-switch v1, :pswitch_data_1

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :pswitch_1
    sget p1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 6
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v2, :pswitch_data_2

    .line 9
    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :pswitch_2
    nop

    .line 6
    sget p1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    .line 9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/bs/getDownloadingList$getDownloadingList;
    .locals 3

    .line 22
    nop

    .line 1
    :try_start_0
    new-instance v0, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/bs/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/bs/getDownloadingList;)V

    .line 17
    iget-object v1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v1, v0}, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bk/getDownloadingList;)V

    .line 18
    new-instance v0, Lccsansan/bs/getDownloadingList$getDownloadingList$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/getDownloadingList$getDownloadingList$addDownloadListener;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 20
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    .line 22
    new-instance v0, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;-><init>()V

    return-object v0
.end method

.method public synthetic addDownloadListener()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/bs/getDownloadingList$getDownloadingList;

    move-result-object v0

    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Lccsansan/bs/getDownloadingList$getDownloadingList;
    .locals 7

    .line 30
    nop

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0}, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bw/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lccsansan/bs/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    goto/16 :goto_5

    .line 30
    :pswitch_0
    sget v2, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 7
    const/16 v2, 0x4c

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    :goto_1
    packed-switch v2, :pswitch_data_1

    :try_start_1
    iget v2, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_3

    :pswitch_1
    iget v2, v0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v3}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_2
    goto :goto_4

    :goto_3
    iget-object v3, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v3}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v3

    const/4 v4, 0x0

    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 8
    :goto_4
    iget-object v2, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    iget-wide v3, v0, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v3, v4}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 9
    iget-object v2, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    iget-wide v3, v0, Lccsanandroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v2, v3, v4}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 12
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v0

    iget-object v2, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0, v2}, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils(ILccsancom/san/convert/database/ConvertIntent;)V

    .line 14
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsansan/bs/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;-><init>()V

    const-string v2, "event"

    const-string v3, "\u8964\u566a\u79b4\u3732\ue2da\u0f70\u1be2\ubf42\u5e4b\u75a3\u3d2b\u0384\u71e9"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const v5, 0xe3bd

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    sub-int/2addr v5, v1

    int-to-char v1, v5

    const v5, -0x5d7416f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    const-string v6, "\u9179\u28be\ubdfa\u66e3"

    invoke-static {v3, v4, v1, v5, v6}, Lccsansan/bs/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    .line 30
    return-object v0

    .line 20
    :goto_5
    :try_start_2
    invoke-static {}, Lccsansan/bw/trackReportClick;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    const/16 v0, 0x38

    goto :goto_6

    :cond_3
    const/16 v0, 0x53

    :goto_6
    packed-switch v0, :pswitch_data_2

    .line 22
    iget-object v0, p0, Lccsansan/bs/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-static {v0}, Lccsansan/bh/getDownloadingList;->getDownloadedList(Lccsancom/san/convert/database/ConvertIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :pswitch_2
    new-instance v0, Lccsansan/bs/getDownloadingList$getDownloadingList$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/getDownloadingList$getDownloadingList$addDownloadListener;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 29
    new-instance v1, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v1, v0}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    .line 30
    new-instance v0, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/bs/getDownloadingList$getDownloadingList$IncentiveDownloadUtils;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x53
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic unifiedDownload()Lccsansan/bs/IncentiveDownloadUtils$removeDownloadListener;
    .locals 3

    .line 2
    sget v0, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lccsansan/bs/getDownloadingList;->getDownloadingList()Lccsansan/bs/getDownloadingList$getDownloadingList;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingList;->getDownloadingList()Lccsansan/bs/getDownloadingList$getDownloadingList;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v1, Lccsansan/bs/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bs/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v0

    :goto_4
    const/16 v1, 0x31

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
