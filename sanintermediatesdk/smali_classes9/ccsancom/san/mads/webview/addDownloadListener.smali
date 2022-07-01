.class public Lccsancom/san/mads/webview/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/webkit/DownloadListener;


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:C


# instance fields
.field private final removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/webview/addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/mads/webview/addDownloadListener;->getDownloadingRecordByUrl:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsancom/san/mads/webview/addDownloadListener;->addDownloadListener:J

    const/16 v1, 0xae6

    sput-char v1, Lccsancom/san/mads/webview/addDownloadListener;->unifiedDownload:C

    sput v0, Lccsancom/san/mads/webview/addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/mads/webview/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsancom/san/mads/webview/addDownloadListener;->addDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/mads/webview/addDownloadListener;->getDownloadingList:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/mads/webview/addDownloadListener;->unifiedDownload:C

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
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 5
    sget p2, Lccsancom/san/mads/webview/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x3d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/mads/webview/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1, p4}, Lccsansan/u/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p2, p2}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result p3

    const/4 v0, 0x0

    const-string v1, "\u5ae5\u6a99\u48e6\uce97\uc27f\u455f\u4a7a\u4e27\uf889\u5f38\uea32\u5fb4\u9a39\u8746\u25ff\ufca0\u4a49\u9782\u24b4\u07c5\u959a\ub245\u37ad\ude3b\u43f6\uf631\ub161\u62e5\u8645\u5aa9"

    const-string v2, "\u0000\u0000\u0000\u0000"

    const-string v3, "\ucbe2\ua40c\ubdfd\u3135"

    const-string v4, "apk_"

    cmpl-float p3, p3, p2

    rsub-int p3, p3, 0x35bd

    int-to-char p3, p3

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    cmpl-float p2, v5, p2

    invoke-static {v1, v2, p3, p2, v3}, Lccsancom/san/mads/webview/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v0}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lccsansan/u/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lccsancom/san/mads/webview/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-wide v3, p5

    move-object v5, p1

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/mads/webview/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/mads/webview/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
