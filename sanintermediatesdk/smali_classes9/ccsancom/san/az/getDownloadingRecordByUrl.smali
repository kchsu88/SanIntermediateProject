.class public Lccsancom/san/az/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static addDownloadListener:[C

.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field private static getDownloadingList:Lccsanandroid/os/Handler;

.field private static removeDownloadListener:Lccsancom/san/az/getDownloadingList;

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    invoke-static {}, Lccsancom/san/az/getDownloadingRecordByUrl;->addDownloadListener()V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    .line 50
    new-instance v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadingList:Lccsanandroid/os/Handler;

    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 8

    .line 2
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "BundleAppAZerHelper"

    cmp-long v7, v2, v4

    add-int/lit8 v7, v7, 0x1c

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    rsub-int/lit8 v1, v1, 0x3f

    invoke-static {v7, v2, v1}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget p0, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x59

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const/16 v0, 0x76

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->addDownloadListener:[C

    const-wide v0, -0x24a3803e4e32bed7L    # -1.2642952046241328E132

    sput-wide v0, Lccsancom/san/az/getDownloadingRecordByUrl;->unifiedDownload:J

    return-void

    nop

    :array_0
    .array-data 2
        0x36bs
        0x4243s
        -0x7ee1s
        -0x3fefs
        0x7d3s
        0x46bds
        -0x7a6ds
        -0x3489s
        0xa20s
        0x4926s
        -0x7716s
        -0x305as
        0xe9as
        0x4c65s
        -0x6ce6s
        -0x2dfbs
        0x11fds
        0x50d1s
        -0x687ds
        -0x2a81s
        0x1451s
        0x5b2ds
        -0x6516s
        -0x2675s
        0x18e6s
        0x5e25s
        -0x521ds
        -0x137ds
        0x2fffs
        0x6ecbs
        -0x56eds
        -0x1791s
        0x2b59s
        0x65b0s
        -0x5b1es
        -0x1824s
        0x263es
        0x6120s
        -0x3434s
        -0x7501s
        0x49bes
        0x8b0s
        -0x308es
        -0x71e4s
        0x4d32s
        0x3d6s
        -0x3d7fs
        -0x7e7cs
        0x405es
        0x712s
        -0x39dfs
        -0x7b70s
        0x5bfds
        0x1aabs
        -0x26a7s
        -0x6787s
        0x5f37s
        0x1dcfs
        -0x231bs
        -0x6c70s
        0x5203s
        0x1130s
        -0x2fa3s
        0x6fs
        0x4147s
        -0x7de5s
        -0x3cebs
        0x4d7s
        0x45b9s
        -0x7969s
        -0x378ds
        0x924s
        0x4a32s
        -0x740bs
        -0x3353s
        0xd8as
        0x4f7cs
        -0x6fb4s
        -0x2ef6s
        0x12b0s
        0x53dfs
        -0x6b75s
        -0x2999s
        0x1751s
        0x582ds
        -0x6619s
        -0x2525s
        0x1bb0s
        0x5d21s
        -0x61f0s
        -0x208ds
        0x6fs
        0x4147s
        -0x7de5s
        -0x3cebs
        0x4d7s
        0x45b9s
        -0x7969s
        -0x378ds
        0x924s
        0x4a23s
        -0x7401s
        -0x3350s
        0xd99s
        0x4f79s
        -0x6fb6s
        -0x2eb9s
        0x12f6s
        0x53d0s
        -0x6b72s
        -0x2992s
        0x1744s
        0x583cs
        -0x660es
        -0x2539s
        0x1bf8s
        0x5d3bs
        -0x61f6s
    .end array-data
.end method

.method public static declared-synchronized addDownloadListener(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lccsancom/san/az/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 5
    nop

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1a

    invoke-static {v4}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    rsub-int v3, v3, 0x304

    int-to-char v3, v3

    const/high16 v5, -0x1000000

    invoke-static {v4, v4, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v5}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xb

    const v3, 0xadc3

    const-string v5, ""

    const-string v6, ""

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-char v3, v3

    const/16 v5, 0x30

    invoke-static {v5}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/lit8 v5, v5, -0x16

    invoke-static {v2, v3, v5}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleAppAZerHelper"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const/16 v1, 0x26

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 3
    :cond_1
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 5
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    packed-switch v4, :pswitch_data_1

    sget p0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    :cond_3
    invoke-static {}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList()V
    .locals 5

    .line 6
    nop

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterReceiver registed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    const/4 v2, 0x1

    const/16 v3, 0x4a

    if-eqz v1, :cond_1

    .line 6
    sget v1, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_1
    nop

    .line 3
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BundleAppAZerHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v2, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 6
    sput-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    :cond_2
    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v3, 0x44

    :cond_3
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 7

    .line 2
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x19

    const v2, 0xcba5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    int-to-char v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x26

    invoke-static {v1, v2, v4}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0xc

    const v2, 0xadc3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    const-string v6, "BundleAppAZerHelper"

    cmpl-float v4, v5, v4

    sub-int/2addr v2, v4

    int-to-char v2, v2

    invoke-static {v3, v3}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1, v2, v3}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method private static removeDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p0, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p0, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/getDownloadingRecordByUrl;->addDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p2

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/getDownloadingRecordByUrl;->unifiedDownload:J

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

.method private static removeDownloadListener()V
    .locals 4

    .line 8
    nop

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver registed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 8
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    goto :goto_1

    .line 8
    :pswitch_0
    sget v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 3
    :cond_1
    goto :goto_3

    .line 8
    :goto_1
    sget v1, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x45

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 3
    :pswitch_1
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BundleAppAZerHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Lccsancom/san/az/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/az/getDownloadingList;-><init>()V

    sput-object v0, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    .line 6
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 7
    const-string v1, "com.san.package.action.az_completed"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    sget-object v2, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/az/getDownloadingList;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized removeDownloadListener(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lccsancom/san/az/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 5
    nop

    .line 1
    :try_start_0
    sget-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadingList:Lccsanandroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v1, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v5, v5}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v7

    cmpl-float v4, v7, v4

    rsub-int/lit8 v4, v4, 0x5c

    invoke-static {v3, v6, v4}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " empty "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BundleAppAZerHelper"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget p0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    :cond_1
    invoke-static {}, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadingList()V

    sget p0, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    :cond_2
    :pswitch_0
    sget p0, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsancom/san/az/getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    monitor-exit v0

    return-void

    :pswitch_1
    const/16 p0, 0x8

    :try_start_1
    div-int/2addr p0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 0
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
