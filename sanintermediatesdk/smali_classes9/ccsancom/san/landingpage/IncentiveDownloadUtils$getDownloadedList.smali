.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static getDownloadingList:C

.field private static removeDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->IncentiveDownloadUtils:I

    const/4 v0, 0x4

    sput-char v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6es
        0x5fs
        0x67s
        0x70s
        0x62s
        0x74s
        0x69s
        0x6cs
        0x63s
        0x65s
        0x64s
        0x6fs
        0x77s
        0x75s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->getDownloadingList:C

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
    .locals 9

    .line 22
    nop

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result v0

    .line 2
    const-string v1, "san_gp_iv_back"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const-string v1, "san_gp_top_margin"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    int-to-byte v3, v3

    const-string v4, "\u0001\u0002\u0003\u0000\u0005\u0006\u0002\u0007\u0006\u0003\u0000\u000b\u0003\u0001\u0005\u0003zz"

    invoke-static {v4, v1, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v4, -0x1

    const-string v5, "landpage"

    const/4 v6, 0x2

    packed-switch v1, :pswitch_data_0

    .line 5
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_3

    .line 10
    :pswitch_0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1a

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    const-string v8, "\u0001\u0002\u0003\u0000\u0005\u0006\u0002\u0007\u0006\u0003\u0002\u000b\u0002\u0003\u000b\u0008\u000b\u0001\r\u000e\u0002\u0006\r\u0001\u0000\r"

    invoke-static {v8, v1, v7}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 6
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:I

    rem-int/2addr p1, v6

    if-eqz p1, :cond_2

    .line 14
    :cond_2
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;J)V

    goto/16 :goto_8

    :cond_3
    nop

    .line 15
    const-string v1, "san_gp_btn_open_app"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    const-string v7, "san_gp_iv_app_icon"

    if-eq v0, v1, :cond_4

    invoke-static {v7}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 17
    :cond_4
    invoke-static {v7}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x18

    if-ne v0, v1, :cond_5

    .line 6
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const/16 v0, 0x18

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 10
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:I

    rem-int/2addr v0, v6

    if-eqz v0, :cond_6

    .line 18
    :cond_6
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    .line 20
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 6
    const/16 v7, 0x2b

    goto :goto_2

    :cond_7
    nop

    :goto_2
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_8

    .line 20
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 21
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v5, v3, v4}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    goto/16 :goto_6

    .line 10
    :goto_3
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->IncentiveDownloadUtils:I

    rem-int/2addr p1, v6

    if-nez p1, :cond_8

    .line 6
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object p1, p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 10
    :catchall_0
    move-exception p1

    throw p1

    .line 6
    :cond_8
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    iget-object p1, p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    goto :goto_8

    .line 8
    :cond_9
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_3

    .line 22
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->removeDownloadListener:I

    rem-int/2addr v0, v6

    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v5, v2, v4}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v5, v3, v4}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    .line 10
    :goto_5
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 22
    :goto_6
    goto :goto_8

    :cond_c
    :goto_7
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;->unifiedDownload:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    :cond_d
    :goto_8
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
