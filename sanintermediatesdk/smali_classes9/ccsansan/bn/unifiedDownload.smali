.class public Lccsansan/bn/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadStatusByUrl:I

.field public static final getDownloadingList:[B

.field private static removeDownloadListener:[C

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/bn/unifiedDownload;->addDownloadListener()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/unifiedDownload;->getDownloadingList:[B

    const/16 v0, 0x67

    sput v0, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils:I

    sget v0, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x43t
        0x20t
        -0x51t
        0x4ft
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

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/bn/unifiedDownload;->removeDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/bn/unifiedDownload;->addDownloadListener:J

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

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLccsanandroid/content/Intent;)V
    .locals 4

    .line 37
    nop

    .line 20
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "url"

    .line 21
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pkg_name"

    .line 22
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "start_way"

    if-eqz p3, :cond_0

    .line 37
    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 22
    goto :goto_1

    :pswitch_0
    nop

    .line 37
    const-string p2, "market_app"

    goto :goto_2

    :goto_1
    const-string p2, "browser"

    .line 23
    :goto_2
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "force_gp"

    const/16 p2, 0x23

    const-string v1, "false"

    const-string v2, "true"

    if-eqz p4, :cond_2

    .line 37
    sget p4, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/2addr p4, p2

    rem-int/lit16 v3, p4, 0x80

    sput v3, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p4, p4, 0x2

    if-nez p4, :cond_1

    const/4 p4, 0x0

    :try_start_2
    array-length p4, p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p4, v2

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    .line 23
    :cond_1
    move-object p4, v2

    goto :goto_3

    :cond_2
    move-object p4, v1

    .line 24
    :goto_3
    :try_start_3
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p3, :cond_7

    .line 37
    sget p1, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 26
    :cond_3
    :try_start_4
    invoke-static {}, Lccsansan/bw/getDownloadedCount;->getDownloadingList()Lccsanandroid/util/Pair;

    move-result-object p1

    .line 27
    iget-object p3, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 28
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p4, "is_gp_login"

    if-eqz p3, :cond_4

    .line 37
    const/16 p2, 0x3a

    goto :goto_4

    :cond_4
    nop

    :goto_4
    packed-switch p2, :pswitch_data_1

    .line 28
    goto :goto_5

    :pswitch_1
    move-object p2, v1

    goto :goto_6

    .line 37
    :goto_5
    move-object p2, v2

    .line 29
    :goto_6
    :try_start_5
    invoke-virtual {v0, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "can_get_account"

    .line 30
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string p2, "com.android.vending"

    invoke-static {p1, p2}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x77

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    int-to-char p3, p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    rsub-int/lit8 p4, p4, 0xf

    invoke-static {p2, p3, p4}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_5

    .line 37
    const/16 p1, 0x39

    goto :goto_7

    :cond_5
    const/16 p1, 0x3f

    :goto_7
    packed-switch p1, :pswitch_data_2

    .line 31
    goto :goto_8

    .line 37
    :pswitch_2
    sget p1, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 31
    :cond_6
    move-object v1, v2

    .line 32
    :goto_8
    :try_start_6
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p0, v0, p5}, Lccsansan/bn/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/util/HashMap;Lccsanandroid/content/Intent;)V

    :cond_7
    const-string p1, "Start_AppMarket"

    .line 35
    invoke-static {p0, p1, v0}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectStartAppMarket error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    sget p0, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_2
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 11
    const-string v0, ""

    .line 1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "pid"

    .line 2
    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ad_id"

    .line 3
    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "url"

    .line 4
    invoke-virtual {v2, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "rld"

    .line 5
    invoke-virtual {v2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result p1

    int-to-byte p1, p1

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    invoke-static {v1, v1}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0xd

    invoke-static {p0, p1, p2}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 6
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "result"

    .line 7
    invoke-virtual {v2, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source"

    .line 8
    invoke-virtual {v2, p0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p1

    rsub-int/lit8 p1, p1, 0xd

    const/16 p2, 0x30

    invoke-static {v0, p2, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    add-int/lit16 p2, p2, 0x6d47

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p3

    shr-int/lit8 p3, p3, 0x8

    rsub-int/lit8 p3, p3, 0x18

    invoke-static {p1, p2, p3}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, -0xffffdb

    invoke-static {v1, v1, v1}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result p3

    sub-int/2addr p2, p3

    const p3, 0xf45f

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p4

    sub-int/2addr p3, p4

    int-to-char p3, p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    rsub-int/lit8 p4, p4, 0x21

    invoke-static {p2, p3, p4}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    nop

    .line 93
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 98
    sget v0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 93
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 98
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_6

    :pswitch_0
    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 93
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    const/16 v2, 0x63

    goto :goto_3

    :cond_4
    const/16 v2, 0x4d

    :goto_3
    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_1
    sget v2, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x33

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    .line 97
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x58

    goto :goto_4

    :cond_6
    const/16 v2, 0x23

    :goto_4
    packed-switch v2, :pswitch_data_2

    :cond_7
    goto :goto_2

    :goto_5
    :pswitch_2
    return v0

    :cond_8
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const/16 v0, 0x86

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/unifiedDownload;->removeDownloadListener:[C

    const-wide v0, -0x13891f832b281a30L    # -3.080592080130516E214

    sput-wide v0, Lccsansan/bn/unifiedDownload;->addDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        -0x1a41s
        -0x3429s
        -0x4ee2s
        -0x68d4s
        0x7d7fs
        0x6281s
        0x48d4s
        0x2edfs
        0x1424s
        -0x5b7s
        -0x2063s
        -0x3a5bs
        0x6d0bs
        -0x7709s
        -0x597es
        -0x23bbs
        -0x5a7s
        0x1000s
        0xfcfs
        0x2592s
        0x43a3s
        0x7979s
        -0x68des
        -0x4d27s
        -0x570fs
        -0x3948s
        -0x396s
        0x1a19s
        0x3027s
        0x2ff2s
        0x45b4s
        0x6353s
        -0x668bs
        -0x48dds
        -0x2d36s
        -0x377es
        -0xbd4s
        0x11fbs
        0x3f9es
        0x455bs
        0x636cs
        -0x76e7s
        -0x692as
        -0x4375s
        -0x2546s
        -0x1fa0s
        0xe3bs
        0x2bc0s
        0x31e8s
        0x5fa1s
        0x6573s
        -0x7d00s
        -0x56c2s
        -0x4915s
        -0x2353s
        -0x5b6s
        0x6cs
        0x2e3as
        0x4bd3s
        0x519bs
        0x7fffs
        -0x7a96s
        -0x5cf3s
        -0x3723s
        -0x2910s
        -0x343s
        0x1a1fs
        0x2055s
        0x4e7fs
        0x53s
        -0x1a5cs
        -0x343fs
        -0x4efes
        -0x68ccs
        0x7d4fs
        0x62a9s
        0x48des
        0x2ef3s
        0x1424s
        -0x5bfs
        -0x2064s
        -0x3a54s
        -0x542fs
        -0x6ef0s
        0x7740s
        0x63s
        -0x1a41s
        -0x3434s
        -0x4ee4s
        -0x68dbs
        0x7d73s
        0x6294s
        0x48e3s
        0x2ef4s
        0x1431s
        -0x5aes
        -0x207cs
        -0x3a77s
        -0x5402s
        -0x6eeds
        0x7744s
        0x5d61s
        0x42bcs
        0x28ccs
        0xe15s
        -0xbdcs
        -0x25afs
        -0x4070s
        -0x5a40s
        -0x7460s
        0x7135s
        0x5752s
        0x3c82s
        0x22afs
        0x8e2s
        -0x11c0s
        -0x2bf6s
        -0x45e0s
        0x69s
        -0x1a5ds
        -0x3401s
        -0x4ee9s
        -0x68d0s
        0x7d4fs
        0x6289s
        0x48des
        0x2ef3s
        0x1424s
        -0x5bfs
        -0x2064s
        -0x3a54s
        -0x540bs
        -0x6efcs
    .end array-data
.end method

.method private static getDownloadingList(SIS)Ljava/lang/String;
    .locals 7

    sget v0, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x6b

    ushr-int p2, v1, p2

    add-int/lit8 p2, p2, 0x6c

    rsub-int/lit8 p0, p0, 0x11

    rsub-int/lit8 p0, p0, 0x32

    rsub-int/lit8 p1, p1, 0x44

    add-int/lit8 p1, p1, 0x7c

    sget-object v1, Lccsansan/bn/unifiedDownload;->getDownloadingList:[B

    new-array v4, p0, [B

    add-int/lit8 p0, p0, 0x9

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x17

    mul-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x19

    sget-object v1, Lccsansan/bn/unifiedDownload;->getDownloadingList:[B

    new-array v4, p0, [B

    add-int/lit8 p0, p0, -0x1

    if-nez v1, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    move v0, p2

    const/4 v5, 0x0

    move p2, p1

    move p1, p0

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    add-int/2addr p1, v2

    int-to-byte v5, p2

    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    if-ne v0, p0, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_4
    aget-byte v0, v1, p1

    move v6, p1

    move p1, p0

    move p0, v0

    move v0, p2

    move p2, v6

    :goto_5
    add-int/2addr v0, p0

    add-int/lit8 p0, v0, -0x8

    move v0, v5

    move v6, p2

    move p2, p0

    move p0, p1

    move p1, v6

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 19
    const-string v0, ""

    .line 12
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "adid"

    .line 13
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 14
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pkg_name"

    .line 15
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "start_way"

    const/4 p2, 0x5

    if-eqz p4, :cond_0

    .line 19
    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/16 p3, 0x59

    :goto_0
    const-string p4, "browser"

    packed-switch p3, :pswitch_data_0

    .line 15
    goto :goto_2

    .line 19
    :pswitch_0
    sget p3, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/2addr p3, p2

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 15
    goto :goto_3

    .line 19
    :pswitch_1
    const/4 p2, 0x4

    :try_start_1
    div-int/2addr p2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    sget p2, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    :cond_2
    const-string p4, "market_app"

    .line 16
    :goto_3
    :try_start_2
    invoke-virtual {v2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x30

    invoke-static {v0, p1, v1, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x45

    const/4 p2, 0x0

    invoke-static {v1, p2, p2}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p3

    cmpl-float p2, p3, p2

    int-to-char p2, p2

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result p3

    shr-int/lit8 p3, p3, 0x16

    add-int/lit8 p3, p3, 0x10

    invoke-static {p1, p2, p3}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p0, p1, v2}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0x56

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    int-to-char p3, p3

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p4

    rsub-int/lit8 p4, p4, 0x21

    invoke-static {p2, p3, p4}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    sget v0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 92
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 0
    :goto_2
    return-void

    .line 81
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lccsanandroid/content/Intent;->getData()Lccsanandroid/net/Uri;

    move-result-object p0

    .line 83
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "pkg"

    .line 84
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_2

    .line 92
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 84
    const-string v0, "uri"

    goto :goto_5

    .line 92
    :goto_4
    :pswitch_1
    goto :goto_6

    .line 86
    :goto_5
    :try_start_2
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_6
    const-string p0, "status"

    .line 87
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "error"

    .line 89
    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    sget p0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 90
    :cond_3
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "Start_Browser"

    invoke-static {p0, p1, v1}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectStartBrowserPkg error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :catchall_0
    move-exception p0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(II)Z
    .locals 1

    .line 112
    nop

    .line 111
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-ge p1, p0, :cond_0

    const/16 p0, 0x49

    goto :goto_0

    :cond_0
    const/16 p0, 0x43

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    sget p0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_2

    :goto_1
    sget p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    :cond_2
    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/util/HashMap;Lccsanandroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 80
    const-string v0, "Stats.Common"

    .line 50
    sget v1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 80
    :cond_0
    nop

    .line 0
    const/4 v1, 0x0

    int-to-byte v1, v1

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    :try_start_0
    invoke-static {v1, v2, v3}, Lccsansan/bn/unifiedDownload;->getDownloadingList(SIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget v2, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils:I

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsansan/bn/unifiedDownload;->getDownloadingList(SIS)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x10000

    .line 39
    :try_start_1
    invoke-virtual {p0, p2, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    nop

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/pm/ResolveInfo;

    .line 43
    iget-object v4, v4, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    const/high16 v4, 0x20000

    .line 48
    invoke-virtual {p0, p2, v4}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_2

    .line 50
    const/16 p2, 0x2c

    goto :goto_2

    :cond_2
    const/4 p2, 0x3

    :goto_2
    packed-switch p2, :pswitch_data_0

    goto :goto_5

    .line 80
    :pswitch_0
    sget p2, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x5

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    .line 50
    const/16 p2, 0x13

    goto :goto_3

    :cond_3
    const/16 p2, 0x5b

    :goto_3
    packed-switch p2, :pswitch_data_1

    .line 80
    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    goto :goto_4

    .line 49
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/content/pm/ResolveInfo;

    .line 50
    iget-object p2, p2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p2, p2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :goto_4
    check-cast p2, Lccsanandroid/content/pm/ResolveInfo;

    .line 50
    iget-object p2, p2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p2, p2, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    throw p0

    .line 54
    :cond_4
    :goto_5
    :try_start_4
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 56
    :try_start_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-lez p2, :cond_5

    const-string p2, "default_chooser"

    .line 57
    :try_start_6
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 59
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-lez p2, :cond_6

    const-string p2, "all_chooser"

    .line 60
    :try_start_7
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_0
    move-exception p2

    :cond_6
    :goto_6
    const-string p2, "activity_chooser"

    .line 66
    :try_start_8
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/16 p2, 0x16

    const-string v3, "selected_market"

    if-lt p0, p2, :cond_9

    .line 69
    :try_start_9
    invoke-static {}, Lccsansan/bw/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-static {p0, v2}, Lccsansan/bn/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 71
    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectStartMarketChooser selected market : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const-string p0, "error_fetch_wrong"

    .line 74
    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_9
    const-string p0, "error_low_version"

    .line 77
    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_8
    goto :goto_9

    .line 0
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    throw p1

    :cond_a
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 77
    :catch_1
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectStartMarketChooser error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(I)Z
    .locals 3

    .line 110
    sget v0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p0}, Lccsansan/bn/unifiedDownload;->getDownloadingList(II)Z

    move-result p0

    goto :goto_1

    :pswitch_0
    invoke-static {v2, p0}, Lccsansan/bn/unifiedDownload;->getDownloadingList(II)Z

    move-result p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;IIII)V
    .locals 2

    .line 107
    nop

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "add_count"

    .line 100
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "access_use_add"

    .line 101
    :try_start_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "folder_ergodic_add"

    .line 102
    :try_start_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "pkg_receive_add"

    .line 103
    :try_start_4
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "current_time"

    .line 104
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Add_App_List_Result"

    .line 105
    invoke-static {p0, p1, v0}, Lccsansan/bn/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 107
    sget p0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 105
    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectAddAppListEvent error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
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

    .line 109
    nop

    .line 108
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
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

    const-string p1, "Stats.Common"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/unifiedDownload;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method
