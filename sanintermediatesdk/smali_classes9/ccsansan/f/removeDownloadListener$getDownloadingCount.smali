.class Lccsansan/f/removeDownloadListener$getDownloadingCount;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->resume(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static addDownloadListener:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:C


# instance fields
.field final synthetic getDownloadingList:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:J

    const v1, 0xc68a

    sput-char v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->unifiedDownload:C

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingList:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/f/removeDownloadListener$getDownloadingCount;->IncentiveDownloadUtils:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/f/removeDownloadListener$getDownloadingCount;->removeDownloadListener:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/f/removeDownloadListener$getDownloadingCount;->unifiedDownload:C

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 11

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingList:Lccsansan/f/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/16 v0, 0x5e

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingList:Lccsansan/f/removeDownloadListener;

    const v1, 0x9589

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const v2, -0x192ccd1c

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\ubfb7\ua419\u48e0\u2958\ue098\u8046\u10b3\u91da\u0617\u6728\u024e\u5f63\ua405\u9f56\u66fd\u0bba\u3569\ufa4e\ubd02\ufcff\u66f2\u46ae\u24b6\ufa3e\u966d\uca33\uc6a2\u989b\ue5ca"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\ue5d3\ud332\u89e6\u7295"

    cmp-long v10, v3, v5

    add-int/2addr v10, v2

    invoke-static {v7, v8, v1, v10, v9}, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    :goto_1
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingCount;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingCount;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method
