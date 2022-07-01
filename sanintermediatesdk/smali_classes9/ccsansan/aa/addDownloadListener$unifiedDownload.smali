.class final Lccsansan/aa/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/k/getDownloadingList$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/aa/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->unifiedDownload:[C

    const-wide v0, -0x7819c3f592121d9aL

    sput-wide v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x49a4s
        -0x5417s
        -0x72a5s
        -0x1144s
        -0x3fecs
        0x2271s
        0x7e5s
        0x794es
        0x5a83s
        -0x43fes
        -0x6183s
        -0xc0as
        -0x2ab3s
        0x3686s
        0x2811s
        0xa76s
        0x6ff0s
        0x4143s
        -0x5d42s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/aa/addDownloadListener$unifiedDownload;->unifiedDownload:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/aa/addDownloadListener$unifiedDownload;->removeDownloadListener:J

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


# virtual methods
.method public addDownloadListener(Ljava/lang/String;JJ)V
    .locals 8

    .line 7
    sget v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/aa/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/aa/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v2, 0x5a

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    nop

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    const/16 v1, 0x21

    goto :goto_2

    :cond_1
    const/16 v1, 0xb

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 7
    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_3

    :pswitch_1
    return-void

    .line 3
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccsansan/k/removeDownloadListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lccsansan/k/removeDownloadListener;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 7
    sget v0, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/aa/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    .line 3
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v2, 0x40

    goto :goto_2

    :cond_2
    const/16 v2, 0x51

    :goto_2
    packed-switch v2, :pswitch_data_1

    :goto_3
    goto :goto_5

    :goto_4
    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 5
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/k/removeDownloadListener;

    invoke-interface {v1, p1, p2, p3}, Lccsansan/k/removeDownloadListener;->onXzResult(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4
    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Lccsansan/k/unifiedDownload;)V
    .locals 6

    .line 9
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart() called with: record = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/lit16 v2, v2, 0x49e0

    int-to-char v2, v2

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x13

    invoke-static {v1, v2, v4}, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/aa/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    nop

    .line 4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :pswitch_1
    sget v4, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x1d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 7
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/k/removeDownloadListener;

    invoke-interface {v1, p1}, Lccsansan/k/removeDownloadListener;->onStart(Lccsansan/k/unifiedDownload;)V

    goto :goto_1

    .line 9
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 6

    .line 9
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() called with: url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x49e0

    int-to-char v3, v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v4, v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x13

    invoke-static {v1, v3, v4}, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/aa/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    const/16 v1, 0xf

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_2

    :pswitch_0
    return-void

    .line 5
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/aa/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/aa/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    goto :goto_4

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/k/removeDownloadListener;

    invoke-interface {v1, p1}, Lccsansan/k/removeDownloadListener;->onPause(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
