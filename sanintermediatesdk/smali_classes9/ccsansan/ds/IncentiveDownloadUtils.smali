.class public Lccsansan/ds/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/webkit/DownloadListener;


# static fields
.field private static getDownloadingList:[I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private final IncentiveDownloadUtils:Ljava/lang/String;

.field private final addDownloadListener:Lccsanandroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ds/IncentiveDownloadUtils;->getDownloadingList:[I

    return-void

    :array_0
    .array-data 4
        -0x60c12c30
        -0x506970f0
        -0x577bac3
        0x4cd647fa    # 1.1234504E8f
        -0x88488c0
        -0x6bed55f4
        -0x65adc364
        0x3b6532ff
        0x3be2283f
        -0x73d62d08
        0x53e44105
        -0x16b5a183
        -0x12eece81
        0x28e6c672
        0x5502dd99
        0x54e04865
        0x1ab0ab60
        0x61901ae0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lccsansan/ds/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/webkit/WebView;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/ds/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;J)V
    .locals 2

    .line 4
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/ds/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x57

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 11
    nop

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x29

    invoke-static {v1, v2}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], contentDisposition = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], mimetype = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], contentLength = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6
    :cond_1
    const-string v0, "blob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    const/16 v0, 0x28

    goto :goto_2

    :cond_2
    const/16 v0, 0x1b

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 7
    :pswitch_1
    iget-object p2, p0, Lccsansan/ds/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/webkit/WebView;

    invoke-static {p1, p3}, Lccsansan/bw/ActionTypeDetailPage;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    sget p1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v8, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsansan/ds/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        -0x272fd0e6
        -0x53e127a8
        0x75da1a15
        0x7bd9714d
        0x3faecd65
        0x4a169194    # 2466917.0f
        0x24dd085d
        0x56cf04fb
        -0x31475ccd
        -0x3d89a271
        0x1ad4c126
        0x3e3542
        0x224da927
        0x492a0d6c    # 696534.75f
        0x4b032e3a    # 8597050.0f
        -0x11381fc8
        -0x6582c7bd
        0x2dd2c84d
        -0x4bc5ace7
        0x1ace9c67
        0x6192d54d
        -0x70da2c12
    .end array-data

    :array_1
    .array-data 4
        -0x5b52acc9
        0x7e3d79c1
        0x62424ca    # 3.0872E-35f
        -0x70a8032
        0x7fa53c01
        -0x1fa1a87b
        -0x2ba9b1a3
        -0x5a5be6e5
        -0x47043e4f
        0x287a9a32
    .end array-data
.end method

.method private static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 4
    nop

    .line 1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 2
    :cond_1
    array-length v3, v0

    if-ne v3, v1, :cond_2

    .line 4
    :pswitch_0
    return-object p0

    :cond_2
    aget-object p0, v0, v2

    add-int/lit8 v4, v4, 0x31

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/ds/IncentiveDownloadUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/ds/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 7
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    nop

    .line 3
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :pswitch_0
    sget p1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 1
    nop

    .line 7
    const-string p1, "unknown"

    return-object p1

    .line 4
    :goto_1
    const/16 v3, 0x1e

    goto :goto_2

    :cond_2
    const/16 v3, 0x3b

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 7
    sget v3, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 4
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 7
    nop

    .line 4
    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 3
    :pswitch_1
    goto :goto_4

    .line 7
    :goto_5
    nop

    .line 4
    :pswitch_2
    nop

    .line 5
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    const/16 v0, 0x1f

    goto :goto_6

    :cond_4
    const/16 v0, 0x8

    :goto_6
    packed-switch v0, :pswitch_data_3

    :cond_5
    :goto_7
    goto :goto_a

    :pswitch_3
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const-string v3, ".apk"

    if-nez v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_9

    :catchall_0
    move-exception p1

    throw p1

    .line 6
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    nop

    :goto_8
    packed-switch v1, :pswitch_data_4

    goto :goto_7

    .line 7
    :goto_9
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_a
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 7
    nop

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    const-string v1, "\""

    invoke-static {v1, p0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    const/16 v1, 0x15

    goto :goto_0

    :cond_1
    const/16 v1, 0x47

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1
    nop

    .line 4
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v1, :cond_3

    goto :goto_2

    .line 1
    :pswitch_0
    nop

    .line 7
    sget v1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-object p0

    :goto_1
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_2
    goto :goto_5

    :pswitch_3
    sget v1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_3

    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/ds/IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsansan/ds/IncentiveDownloadUtils;->getDownloadingList:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
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
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    .line 6
    nop

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/4 v8, 0x0

    const-string v9, ""

    const/16 v10, 0xa

    const/4 v11, 0x0

    const-string v12, "], userAgent = ["

    const-string v13, "], contentDisposition = ["

    const-string v14, "], mimetype = ["

    const-string v15, "], contentLength = ["

    const-string v2, "]"

    cmpl-float v7, v7, v8

    add-int/lit8 v7, v7, 0x26

    invoke-static {v3, v7}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [I

    fill-array-data v2, :array_1

    const/16 v7, 0x30

    invoke-static {v9, v7, v11, v11}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x12

    invoke-static {v2, v7}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    rsub-int/lit8 v7, v7, 0x29

    invoke-static {v2, v7}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [I

    fill-array-data v2, :array_3

    invoke-static {v9}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x14

    add-int/2addr v7, v8

    invoke-static {v2, v7}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static/range {p4 .. p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    sget v1, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x0

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v11, 0x1

    :cond_1
    packed-switch v11, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    move-object/from16 v7, p0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 3
    :goto_1
    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x27

    invoke-static {v1, v2}, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    sget v1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3
    :cond_2
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v7, p0

    goto :goto_3

    .line 4
    :cond_4
    :goto_2
    move-object/from16 v7, p0

    invoke-direct {v7, v0, v5, v6}, Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;J)V

    goto :goto_5

    .line 3
    :cond_5
    move-object/from16 v7, p0

    .line 6
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lccsansan/ds/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sget v0, Lccsansan/ds/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ds/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const/16 v0, 0x17

    goto :goto_4

    :cond_6
    const/16 v0, 0xe

    :goto_4
    packed-switch v0, :pswitch_data_2

    :goto_5
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x16603fc2
        -0x4d74b11e
        0x6e7cddd9
        0x6f4f1a75
        -0x7a9d7518
        -0x1215dd1f
        -0x2fb2daa8
        -0x41a7f73b
        -0x7f3fc898
        -0x224d7bf7
        -0x5cb9aea2
        0x5aad2164
        0x8270494
        0x34f2d5ee
        -0xfe059a9
        0x14471810
        0x3bd201a4
        -0x70a0f807
        -0xd182bbb
        -0x28553821
    .end array-data

    :array_1
    .array-data 4
        -0x5b52acc9
        0x7e3d79c1
        0x62424ca    # 3.0872E-35f
        -0x70a8032
        0x7fa53c01
        -0x1fa1a87b
        -0x2ba9b1a3
        -0x5a5be6e5
        -0x47043e4f
        0x287a9a32
    .end array-data

    :array_2
    .array-data 4
        0x14e924e2
        -0x3dd0da32
        0x71b87a84
        0x377e0660
        0x687fb346
        -0x7f31ed12
        -0x378b4b4a
        0x373fe213
        -0x3f13563d
        0x5d50f9d
        0x909db3f
        0x1d625197
        0x62424ca    # 3.0872E-35f
        -0x70a8032
        0x10d482b2
        -0x588530ca
        -0x1d176e89
        -0x39f59146
        -0x6fa80860
        0x6d50264e
        0x4b3e01b9    # 1.2452281E7f
        0x6d028372
    .end array-data

    :array_3
    .array-data 4
        -0x5b52acc9
        0x7e3d79c1
        0x62424ca    # 3.0872E-35f
        -0x70a8032
        0x7fa53c01
        -0x1fa1a87b
        -0x2ba9b1a3
        -0x5a5be6e5
        -0x47043e4f
        0x287a9a32
    .end array-data

    :array_4
    .array-data 4
        -0x7c7cdb3b
        -0x3afbfe3e
        -0x59f4bf45
        0x367bb15f
        0x1f8abf40
        0x510e686
        0x74d251ce
        0x663016eb
        -0x2cd32884
        -0x32c3f748    # -1.97168E8f
        0x7502ffef
        -0x22d96d5b
        -0x429d5c81
        -0x52f3d2d7
        -0x179534ac
        0x3e47e41b
        0x5fb19ec6
        -0x2a79be9
        -0x153d1b3c
        0x67853a6a
    .end array-data
.end method
