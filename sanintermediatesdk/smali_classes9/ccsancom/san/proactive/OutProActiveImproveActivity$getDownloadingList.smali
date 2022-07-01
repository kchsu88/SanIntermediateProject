.class Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/proactive/OutProActiveImproveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static getDownloadingList:C

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x5

    sput-char v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->getDownloadingList:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->IncentiveDownloadUtils:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x65s
        0x78s
        0x63s
        0x20s
        0x6cs
        0x69s
        0x6bs
        0x6es
        0x73s
        0x74s
        0x61s
        0x66s
        0x6fs
        0x72s
        0x3as
        0x5fs
        0x70s
        0x67s
        0x68s
        0x6as
        0x6ds
        0x71s
        0x75s
        0x76s
        0x77s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/proactive/OutProActiveImproveActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->IncentiveDownloadUtils:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->getDownloadingList:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
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
.method public onClick(Lccsanandroid/view/View;)V
    .locals 8

    .line 9
    sget v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->unifiedDownload:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-static {v0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->unifiedDownload(Lccsancom/san/proactive/OutProActiveImproveActivity;I)Z

    move-result v0

    const-string v2, "OutProActiveImproveActivity"

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x17

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x32

    int-to-byte v4, v4

    const-string v5, "\u0001\u0002\u0001\u0003\u0004\u0003\u0000\t\u0001\u0007\u0000\u0008\u0008\t\u0005\u000e\u009e\u009e\u0001\r\r\u000el"

    invoke-static {v5, v3, v4}, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-static {v3}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;)Lccsansan/p/getDownloadedList;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-static {v0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;Ljava/lang/String;)V

    .line 9
    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->removeDownloadListener:I

    rem-int/2addr p1, v1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v0, "\u0005\r\u0005\u0011\u000b\u000f\u0011\u0010\u0006\u0008\t\u0005\u000e\u0000\u0000\u0013\u0003\u0000\r\u0007\u0086"

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x14

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    invoke-static {v0, v7, v3}, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 9
    const/16 p1, 0x9

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->removeDownloadListener:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_3

    .line 5
    :cond_3
    nop

    .line 6
    const-string p1, "close out activity"

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-static {p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->removeDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveImproveActivity$getDownloadingList;->addDownloadListener:Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-static {p1}, Lccsancom/san/proactive/OutProActiveImproveActivity;->addDownloadListener(Lccsancom/san/proactive/OutProActiveImproveActivity;)Lccsansan/p/getDownloadedList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const-string v0, "out_activity"

    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
