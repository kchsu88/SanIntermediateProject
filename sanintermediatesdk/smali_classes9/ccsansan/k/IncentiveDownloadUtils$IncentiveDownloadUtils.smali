.class Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/k/IncentiveDownloadUtils;->getDownloadingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    const-wide v0, 0x73ffe1cd14d78dfcL    # 5.706665954194501E250

    sput-wide v0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/k/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
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
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 32
    nop

    .line 1
    check-cast p2, Lccsanandroid/util/Pair;

    .line 2
    invoke-static {}, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; pkg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; status = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 29
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 3
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 32
    :pswitch_0
    return-void

    .line 6
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 29
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 7
    :pswitch_1
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 32
    sget p1, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/2addr p1, v2

    if-nez p1, :cond_3

    .line 8
    :cond_3
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 29
    sget p1, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/2addr p1, v2

    if-nez p1, :cond_4

    .line 32
    :cond_4
    nop

    .line 10
    :cond_5
    iget-object p1, p0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/k/IncentiveDownloadUtils;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v0, v0, v0}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    rsub-int v3, v3, 0x4faf

    const-string v4, "\u8d95\uc23d\u12d1\u6285\ub321\u03fb\u538a\ua06a\uf0e8\u40b2\u9159\ue10d\u31ad\u8671\ud60b\u26cf"

    invoke-static {v4, v3}, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_2
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    .line 15
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 16
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    .line 32
    nop

    .line 18
    :cond_6
    iget-object p1, p0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/k/IncentiveDownloadUtils;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_7
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_8

    .line 29
    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 22
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 23
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)V

    .line 25
    :cond_9
    iget-object p1, p0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/k/IncentiveDownloadUtils;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :pswitch_2
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c

    .line 32
    sget p1, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/2addr p1, v2

    if-nez p1, :cond_a

    .line 29
    const/16 v2, 0x1c

    goto :goto_4

    :cond_a
    nop

    :goto_4
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result p1

    packed-switch v2, :pswitch_data_3

    if-ne p1, v1, :cond_b

    goto :goto_5

    :pswitch_3
    if-ne p1, v1, :cond_b

    .line 30
    :goto_5
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object p1

    iget-object v1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Z)V

    .line 32
    nop

    :cond_b
    iget-object p1, p0, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/k/IncentiveDownloadUtils;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void

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

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method
