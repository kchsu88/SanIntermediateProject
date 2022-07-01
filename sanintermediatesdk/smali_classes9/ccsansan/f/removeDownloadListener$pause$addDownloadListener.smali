.class Lccsansan/f/removeDownloadListener$pause$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener$pause;->callBack(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:J


# instance fields
.field final synthetic addDownloadListener:Lccsansan/f/removeDownloadListener$pause;

.field final synthetic unifiedDownload:Lccsancom/san/xz/base/XzRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadedRecordByUrl:I

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadingList:[C

    const-wide v0, 0x5c62873ee4313c8aL    # 1.0773670723110735E137

    sput-wide v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x19f4s
        -0x2560s
        -0x60dcs
        0x53a9s
        0x1416s
        -0x3735s
        -0x72f8s
        0x41f0s
        0x26bs
        -0x3916s
        -0x44afs
        0x7fd2s
        0x3001s
        -0xac1s
        -0x564cs
        0x6a3bs
        0x2e98s
        -0x1cads
        -0x5867s
        -0x67f8s
        0x5cb1s
        0x116fs
        -0x2a16s
        -0x69b8s
        0x4ac7s
        0xf4fs
        -0x3fces
        -0x7b4as
        0x7925s
    .end array-data
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener$pause;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->addDownloadListener:Lccsansan/f/removeDownloadListener$pause;

    iput-object p2, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->unifiedDownload:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(ICI)Ljava/lang/String;
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

    sget-object v3, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->removeDownloadListener:J

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
    .locals 5

    .line 2
    sget p1, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->addDownloadListener:Lccsansan/f/removeDownloadListener$pause;

    iget-object p1, p1, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result p1

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->addDownloadListener:Lccsansan/f/removeDownloadListener$pause;

    iget-object p1, p1, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x28

    goto :goto_1

    :cond_1
    const/16 p1, 0x25

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    const/16 v0, 0x38

    :cond_2
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    .line 2
    :goto_3
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->addDownloadListener:Lccsansan/f/removeDownloadListener$pause;

    iget-object p1, p1, Lccsansan/f/removeDownloadListener$pause;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const v2, 0xe659

    invoke-static {v1}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1c

    invoke-static {v0, v2, v1}, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->removeDownloadListener(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    sget p1, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    :goto_4
    :pswitch_2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->unifiedDownload:Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v0, v1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    sget v0, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$pause$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x40

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method
