.class final Lccsansan/be/removeDownloadListener$addDownloadListener;
.super Lccsansan/bf/removeDownloadListener$addDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/be/getDownloadingList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:J

.field private static getDownloadingList:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/be/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/be/removeDownloadListener$addDownloadListener;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/be/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/be/removeDownloadListener$addDownloadListener;->removeDownloadListener:[C

    const-wide v0, -0x382b836e362c4ae1L    # -1.0892544666372052E38

    sput-wide v0, Lccsansan/be/removeDownloadListener$addDownloadListener;->addDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x53s
        -0x4a8as
        0x6a52s
        0x1f38s
        -0x2bees
        -0x7608s
        0x3edfs
        -0xc70s
        -0x576as
        0x5e64s
        0x1342s
        -0x37ccs
        0x7d18s
        0x32ffs
        -0x1801s
        -0x6350s
        0x519es
        0x76es
        -0x43b7s
        0x7128s
        0x261es
    .end array-data
.end method

.method constructor <init>(Lccsansan/be/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/be/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/be/getDownloadingList;

    invoke-direct {p0}, Lccsansan/bf/removeDownloadListener$addDownloadListener;-><init>()V

    return-void
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/be/removeDownloadListener$addDownloadListener;->removeDownloadListener:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/be/removeDownloadListener$addDownloadListener;->addDownloadListener:J

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
.method public getDownloadingList(Lccsanandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 9
    nop

    .line 4
    sget v0, Lccsansan/be/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/removeDownloadListener$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, -0x1

    .line 1
    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    const/16 v1, 0x51

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 6
    iget-object v1, p0, Lccsansan/be/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/be/getDownloadingList;

    invoke-static {v0}, Lccsansan/be/addDownloadListener;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lccsansan/be/getDownloadingList;->IncentiveDownloadUtils(ILjava/lang/String;)V

    goto :goto_2

    .line 9
    :pswitch_0
    sget v1, Lccsansan/be/removeDownloadListener$addDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/be/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 4
    const/16 v1, 0x31

    goto :goto_1

    :cond_2
    const/16 v1, 0x2f

    :goto_1
    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lccsansan/be/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/be/getDownloadingList;

    invoke-interface {v1}, Lccsansan/be/getDownloadingList;->getDownloadingList()V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lccsansan/be/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/be/getDownloadingList;

    invoke-interface {v1}, Lccsansan/be/getDownloadingList;->getDownloadingList()V

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " re : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v2, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    rsub-int/lit8 v2, v2, 0x15

    invoke-static {v0, v1, v2}, Lccsansan/be/removeDownloadListener$addDownloadListener;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch
.end method
