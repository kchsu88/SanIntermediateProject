.class Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/xz/api/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/f/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    const-wide v0, -0x7212d1d3878720f4L

    sput-wide v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/f/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:J

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

    sget-wide v6, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:J

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


# virtual methods
.method public IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    nop

    .line 2
    :goto_1
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 4
    :try_start_0
    instance-of v2, v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/16 v2, 0x55

    goto :goto_2

    :cond_1
    const/16 v2, 0x1a

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 2
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 4
    :try_start_2
    instance-of v2, v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    if-eqz v2, :cond_3

    const/16 v2, 0x5c

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 5
    :goto_4
    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    invoke-interface {v1, p1}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onPause(Lccsancom/san/xz/base/XzRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v3, v3, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    const-string v3, "\u531a\uae91\u535e\u71f2\u9298\u9be3\u2cf7\u06a9\u2f46\uf5c2\ua8b1\u82d3\uab29\u7998\u2492\u0e11\u27e3\ufd6e\ua055\u8a1f\ua3bf\u6131\u3c30\u1662\u3f98"

    invoke-static {v3, v2}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "onPause"

    invoke-static {v2, v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    sget p1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 7

    .line 7
    sget v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :cond_1
    :goto_0
    :pswitch_0
    nop

    .line 2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    const/16 v1, 0xd

    goto :goto_2

    :cond_2
    const/16 v1, 0x26

    :goto_2
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_3

    :pswitch_1
    sget p1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 2
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 4
    const/4 v2, 0x0

    :try_start_0
    instance-of v3, v1, Lccsancom/san/xz/api/IDownloadResultListener$unifiedDownload;

    if-eqz v3, :cond_4

    .line 7
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 5
    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener$unifiedDownload;

    invoke-interface {v1, p1}, Lccsancom/san/xz/api/IDownloadResultListener$unifiedDownload;->onDownloadedItemDelete(Lccsancom/san/xz/base/XzRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :catch_0
    move-exception v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    const-string v5, "\u531a\uae91\u535e\u71f2\u9298\u9be3\u2cf7\u06a9\u2f46\uf5c2\ua8b1\u82d3\uab29\u7998\u2492\u0e11\u27e3\ufd6e\ua055\u8a1f\ua3bf\u6131\u3c30\u1662\u3f98"

    const-string v6, "\u6116\u1512\u6179\uca70\u35e4\u9100\u8bb8\u0c41\u1d4a\u4e4b\u0fd8\u8831\u9932\uc211\u83eb\u04ea\u15ea\u46e1\u072d\u80d0\u91b3\udaba"

    cmpl-float v3, v4, v3

    invoke-static {v5, v3}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v6, v2}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v3, v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Lccsancom/san/xz/base/XzRecord;ZLccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 6

    .line 13
    sget v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    nop

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x32

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    :goto_1
    const-string v2, ""

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    if-eqz p3, :cond_3

    goto :goto_3

    .line 13
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    const/4 v4, 0x3

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_2

    :goto_5
    goto :goto_7

    .line 11
    :pswitch_1
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    sget v4, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v4, v4, 0xf

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    const/16 v4, 0x1b

    goto :goto_6

    :cond_4
    const/16 v4, 0x4a

    :goto_6
    packed-switch v4, :pswitch_data_3

    :pswitch_2
    goto :goto_8

    .line 11
    :catch_0
    move-exception v1

    goto :goto_9

    :goto_7
    move-object v3, v2

    :goto_8
    :try_start_2
    invoke-interface {v1, p1, p2, v3}, Lccsancom/san/xz/api/IDownloadResultListener;->onDownloadResult(Lccsancom/san/xz/base/XzRecord;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_9
    invoke-static {v2}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    const-string v3, "\u531a\uae91\u535e\u71f2\u9298\u9be3\u2cf7\u06a9\u2f46\uf5c2\ua8b1\u82d3\uab29\u7998\u2492\u0e11\u27e3\ufd6e\ua055\u8a1f\ua3bf\u6131\u3c30\u1662\u3f98"

    invoke-static {v3, v2}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 13
    const-string v3, "onResult"

    invoke-static {v2, v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    sget p1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1b
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 7
    sget v0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x28

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x62

    goto :goto_1

    :cond_1
    const/16 v1, 0x5d

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 7
    return-void

    .line 2
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 4
    :try_start_1
    instance-of v2, v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    const/16 v3, 0x4c

    if-eqz v2, :cond_2

    .line 2
    const/16 v2, 0x26

    goto :goto_2

    :cond_2
    const/16 v2, 0x4c

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 5
    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    invoke-interface {v1, p1}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onStart(Lccsancom/san/xz/base/XzRecord;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x3d

    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 7
    goto :goto_0

    .line 5
    :catch_0
    move-exception v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, "\u531a\uae91\u535e\u71f2\u9298\u9be3\u2cf7\u06a9\u2f46\uf5c2\ua8b1\u82d3\uab29\u7998\u2492\u0e11\u27e3\ufd6e\ua055\u8a1f\ua3bf\u6131\u3c30\u1662\u3f98"

    invoke-static {v3, v2}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "onStart"

    invoke-static {v2, v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/xz/base/XzRecord;JJ)V
    .locals 10

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/f/getDownloadingList;

    invoke-static {v0}, Lccsansan/f/getDownloadingList;->unifiedDownload(Lccsansan/f/getDownloadingList;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return-void

    .line 2
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/IDownloadResultListener;

    .line 4
    :try_start_0
    instance-of v4, v1, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 7
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch v2, :pswitch_data_1

    :cond_2
    :goto_3
    goto :goto_0

    :pswitch_1
    sget v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 5
    :cond_3
    :try_start_1
    move-object v4, v1

    check-cast v4, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;->onProgress(Lccsancom/san/xz/base/XzRecord;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    sget v1, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_3

    .line 5
    :catch_0
    move-exception v1

    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    const-string v3, "\u531a\uae91\u535e\u71f2\u9298\u9be3\u2cf7\u06a9\u2f46\uf5c2\ua8b1\u82d3\uab29\u7998\u2492\u0e11\u27e3\ufd6e\ua055\u8a1f\ua3bf\u6131\u3c30\u1662\u3f98"

    invoke-static {v3, v2}, Lccsansan/f/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "onProgress"

    invoke-static {v2, v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
