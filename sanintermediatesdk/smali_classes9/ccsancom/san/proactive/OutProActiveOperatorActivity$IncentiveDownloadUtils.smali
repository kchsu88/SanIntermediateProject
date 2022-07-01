.class Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/proactive/OutProActiveOperatorActivity;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field final synthetic addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadingList:[C

    const-wide v0, -0x5493e85e1ffcb553L    # -1.6054580213953766E-99

    sput-wide v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x76e8s
        -0x3c0bs
        0x1c0ds
        0x6959s
        -0x5c12s
        -0x3d8s
        0x4915s
        -0x7c1fs
        -0x23das
        0x295as
        0x6396s
        -0x438cs
        0x954s
        0x4386s
        -0x63d4s
        -0x1696s
        0x239fs
        0x7c66s
        -0x3688s
        0x382s
        0x5cd9s
        -0x569bs
        0x61s
        0x4ad8s
        -0x6ad2s
        -0x1f98s
        0x2aebs
        0x7512s
        -0x3f86s
        0xadas
        0x551as
        -0x5f9fs
        -0x1563s
        0x351cs
        -0x7f97s
        -0x3556s
        0x1515s
        0x6046s
        -0x555ds
        -0xaf2s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/proactive/OutProActiveOperatorActivity;Lccsansan/p/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;

    iput-object p2, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->removeDownloadListener:J

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
.method public callBack(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_2

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 8

    .line 14
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "#exec start app operate"

    const-string v3, "OutProActiveOperatorActivity"

    packed-switch v0, :pswitch_data_0

    .line 14
    nop

    .line 1
    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;

    invoke-static {v2}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener(Lccsancom/san/proactive/OutProActiveOperatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proactive/OutProActiveOperatorActivity;

    invoke-static {v2}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener(Lccsancom/san/proactive/OutProActiveOperatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/16 v4, 0x43

    goto :goto_3

    :cond_1
    const/16 v4, 0x3d

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 7
    :goto_4
    invoke-static {}, Lccsansan/bw/getErrorCode;->getPackageNameByRecord()V

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const v6, 0x893b

    invoke-static {v1, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v1, v5, v5}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v5, v7, v5

    rsub-int/lit8 v5, v5, 0x16

    invoke-static {v4, v6, v5}, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    :pswitch_1
    iget-object v3, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v3, v2}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V

    .line 13
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    if-eqz v2, :cond_5

    .line 3
    sget v2, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 14
    :cond_3
    invoke-static {v1}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    int-to-char v3, v3

    const-string v4, ""

    invoke-static {v4, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    invoke-static {v2, v3, v1}, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->IncentiveDownloadUtils(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 14
    :cond_4
    goto :goto_5

    :cond_5
    sget v1, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    :cond_6
    const-string v1, "open_error"

    :goto_5
    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method
