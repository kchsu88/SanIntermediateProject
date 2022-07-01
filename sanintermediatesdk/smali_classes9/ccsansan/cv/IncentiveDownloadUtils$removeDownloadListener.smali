.class Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/IncentiveDownloadUtils;->removeDownloadListener(Ljava/io/InputStream;JLccsansan/cv/IncentiveDownloadUtils$unifiedDownload;Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static deleteDownItem:I

.field private static getDownloadedList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/io/InputStream;

.field final synthetic getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

.field final synthetic removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x2

    sput v0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/cv/IncentiveDownloadUtils;Lccsansan/cv/getDownloadedRecordByUrl;Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iput-object p3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:Ljava/io/InputStream;

    iput-object p4, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
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
.method public run()V
    .locals 14

    .line 56
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    add-int/lit8 v3, v3, 0x69

    const-string v4, "\u0012\uffde\t\u0011\u0008\u0006\t\ufffb\ufffe\uffff\u000c\uffdf"

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v1, v3}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v5, v5}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1b

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x61

    const-string v7, "\t\uffdb\u0005\u0010\u0018\u000f\r\u0010\u0002\u0005\uffc1\r\u0002\u0013\u0008\u0006\uffc1\u0007\n\r\u0006\uffc1\u0007\n\u000f\n\u0014"

    invoke-static {v7, v5, v3, v4, v6}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v5}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x20

    invoke-static {v5}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-string v12, "\u0014\uffc6\u001b\u0018\u0012\uffc6\uffe3\uffc6\n\u0015\u001d\u0014\u0012\u0015\u0007\n\uffc6\u0012\u0007\u0018\r\u000b\uffc6\u000c\u000f\u0012\u000b\uffc6\u0008\u000b\r\u000f"

    cmp-long v13, v8, v10

    rsub-int/lit8 v8, v13, 0x5d

    invoke-static {v12, v5, v6, v7, v8}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-object v6, v6, Lccsansan/cv/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v4, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v6, v4, Lccsansan/cv/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 4
    :goto_0
    :try_start_0
    iget-object v4, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v8, v4, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v6, v8

    if-gez v4, :cond_5

    .line 56
    sget v4, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x69

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_4

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 56
    const/16 v8, 0x32

    goto :goto_2

    :cond_2
    const/16 v8, 0x60

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 10
    iget-object v4, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    goto :goto_3

    .line 12
    :pswitch_0
    iget-object v8, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v8, v8, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    sub-long/2addr v8, v6

    iget v10, v4, Lccsansan/cv/removeDownloadListener;->removeDownloadListener:I

    int-to-long v10, v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_3

    move-wide v8, v10

    :cond_3
    long-to-int v9, v8

    .line 13
    iget-object v8, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:Ljava/io/InputStream;

    iget-object v10, v4, Lccsansan/cv/removeDownloadListener;->getDownloadingList:[B

    invoke-static {v8, v10, v5, v9}, Lccsansan/cv/IncentiveDownloadUtils;->getDownloadingList(Ljava/io/InputStream;[BII)I

    move-result v8

    .line 14
    iget-object v9, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-object v9, v9, Lccsansan/cv/IncentiveDownloadUtils;->resume:Lccsansan/cv/getDownloadedCount;

    invoke-virtual {v9, v8}, Lccsansan/cv/getDownloadedCount;->unifiedDownload(I)V

    if-gez v8, :cond_4

    goto :goto_4

    .line 18
    :cond_4
    iget-object v9, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 20
    iput v8, v4, Lccsansan/cv/removeDownloadListener;->IncentiveDownloadUtils:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 22
    iget-object v8, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    invoke-virtual {v8, v4}, Lccsansan/cv/getDownloadingList;->removeDownloadListener(Lccsansan/cv/removeDownloadListener;)V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto/16 :goto_d

    .line 10
    :goto_3
    const/16 v8, 0x3e8

    invoke-virtual {v4, v8}, Lccsansan/cv/getDownloadingList;->getDownloadingList(I)Lccsansan/cv/removeDownloadListener;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_1

    .line 32
    :cond_5
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_f

    goto/16 :goto_10

    :catchall_0
    move-exception v1

    goto/16 :goto_9

    :catch_1
    move-exception v4

    :try_start_2
    const-string v8, "\u0002\u000f\u0011\u0006\u000c\u000b\uffbd\u0002\u000f\u000f\u000c\u000f\uffbd\u0002\u0015\u0000\u0002\r\u0011\u0006\u000c\u000b\uffd7\u0001\u000c\u0014\u000b\t\u000c\ufffe\u0001\uffbd\u0003\u0006\t\u0002\uffbd\ufffe\u0010\u0010"

    invoke-static {v5}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x28

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x17

    const/16 v11, 0x30

    invoke-static {v1, v11}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-static {v8, v5, v9, v10, v1}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1, v4}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_f

    goto/16 :goto_10

    :catch_2
    move-exception v4

    .line 38
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0006\t\u0002\uffbd\u000f\u0012\u000b\u0011\u0006\n\u0002\uffbd\u0002\u0015\u0000\u0002\r\u0011\u0006\u000c\u000b\uffd7\u0001\u000c\u0014\u000b\t\u000c\ufffe\u0001\uffbd\u0003"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x20

    invoke-static {v1, v5}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x65

    invoke-static {v9, v5, v10, v1, v11}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    .line 56
    :cond_8
    sget v3, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x41

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    .line 42
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_f

    goto/16 :goto_10

    :catch_3
    move-exception v1

    .line 44
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0011\u0004\uffbf\u0004\u000b\u0008\u0005\uffbf\u0003\u0000\u000e\u000b\r\u0016\u000e\u0003\uffd9\u0011\u000e\u0011"

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v9

    shr-int/lit8 v9, v9, 0x16

    rsub-int/lit8 v9, v9, 0x14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x10

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x63

    invoke-static {v8, v2, v9, v10, v11}, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_9

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_f

    goto/16 :goto_10

    .line 52
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v8, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_a

    .line 56
    const/4 v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    packed-switch v3, :pswitch_data_1

    .line 52
    const/4 v3, 0x0

    goto :goto_b

    .line 56
    :pswitch_1
    sget v3, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x1f

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    .line 52
    :cond_b
    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_c

    .line 56
    sget v3, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x4f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_c

    .line 53
    :cond_c
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v0, v2}, Lccsansan/cv/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Z)V

    throw v1

    .line 55
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v3, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:Lccsansan/cv/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/cv/IncentiveDownloadUtils;

    iget-wide v3, v1, Lccsansan/cv/IncentiveDownloadUtils;->addDownloadListener:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    const/4 v1, 0x1

    :goto_f
    packed-switch v1, :pswitch_data_2

    goto :goto_11

    :goto_10
    :pswitch_2
    goto :goto_12

    :cond_f
    :goto_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Lccsansan/cv/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
