.class Lccsansan/br/unifiedDownload$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic addDownloadListener:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic getDownloadingList:Lccsansan/br/unifiedDownload;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    const-wide v1, -0x3979bf0e37ff3c90L    # -5.6419805169673215E31

    sput-wide v1, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:J

    sput-char v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadedRecordByUrl:C

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->deleteDownItem:I

    return-void
.end method

.method constructor <init>(Lccsansan/br/unifiedDownload;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    iput-object p2, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/br/unifiedDownload$addDownloadListener;->deleteDownItem:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadedRecordByUrl:C

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
.method public onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    .locals 12

    .line 5
    sget p1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 2
    const/16 p1, 0x31

    goto :goto_0

    :cond_0
    const/16 p1, 0x24

    :goto_0
    const-string v0, "\u42aa\uad59\u29cf\u3a31"

    const v1, -0x3052a6bf

    const-string v2, "\u075c\udb29\u671b\ua167\ua575\u656b\u428c\uc799\uc2cb\u6033\u32d1\ub221\u3648\u7ebe\uaf50\ucbcd\ubddc\uc811\ue9c8"

    const-string v3, "Hybrid"

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-string v7, "\uc370\uc800\u40f1\uc686"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5
    const/16 p1, 0x2987

    invoke-static {v4, v8, v8, v8}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v9

    shr-int/2addr p1, v9

    int-to-char p1, p1

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v11, v9, v5

    shl-int/2addr v1, v11

    invoke-static {v2, v7, p1, v1, v0}, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-static {v3, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 0
    :pswitch_0
    invoke-static {v8, v8, v8, v8}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p1

    rsub-int p1, p1, 0x3129

    int-to-char p1, p1

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    cmp-long v11, v9, v5

    add-int/2addr v11, v1

    invoke-static {v2, v7, p1, v11, v0}, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-static {v3, p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_1
    goto :goto_4

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_1
    const/4 p1, 0x1

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 5
    :goto_4
    sget p1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 3
    :cond_2
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, v8}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-string v8, "\u0767\ued2e\u4f8e\u4a20\u7b68\u7665\u4e66\u5883\uee65\u427a\u07dc\u47cb"

    const-string v9, "\u4855\u0b48\u4e0d\ub986"

    const-string v10, "failed"

    cmp-long v11, v2, v5

    invoke-static {v8, v7, v1, v11, v9}, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v10, p2}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget p1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/2addr p1, v4

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    :cond_3
    :pswitch_1
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    nop

    .line 1
    const-string p1, "Hybrid"

    const-string v0, "interceptRequest saveUrl onResponse"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lccsanokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    const/16 p1, 0x3b

    goto :goto_0

    :cond_0
    const/16 p1, 0x45

    :goto_0
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 4
    :cond_1
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsansan/br/unifiedDownload;

    invoke-static {p1}, Lccsansan/br/unifiedDownload;->unifiedDownload(Lccsansan/br/unifiedDownload;)Lccsansan/bm/getDownloadingList$removeDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p2, p2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x30

    invoke-static {v2}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const-string v3, "\u0767\ued2e\u4f8e\u4a20\u7b68\u7665\u4e66\u5883\uee65\u427a\u07dc\u47cb"

    const-string v4, "\uc370\uc800\u40f1\uc686"

    const-string v5, "\u4855\u0b48\u4e0d\ub986"

    invoke-static {v3, v4, v1, v2, v5}, Lccsansan/br/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    const-string v3, ""

    invoke-interface {p1, v0, v1, v2, v3}, Lccsansan/bm/getDownloadingList$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :pswitch_0
    iget-object p1, p0, Lccsansan/br/unifiedDownload$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget p1, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/unifiedDownload$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 p1, 0x1c

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
