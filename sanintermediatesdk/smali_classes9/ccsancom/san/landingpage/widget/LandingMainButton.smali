.class public Lccsancom/san/landingpage/widget/LandingMainButton;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[S = null

.field private static final TAG:Ljava/lang/String; = "Ad.MainButton"

.field private static addDownloadListener:[B

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private mDownloadBtn:Lccsansan/j/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    const/16 v0, 0x78

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->removeDownloadListener:I

    const v0, 0xfa3d5f0

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadingList:I

    const v0, 0x5dbcce4e

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->unifiedDownload:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/landingpage/widget/LandingMainButton;->addDownloadListener:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x20t
        -0x31t
        -0x24t
        -0x1dt
        -0x36t
        -0x39t
        -0x2bt
        -0x1ft
        -0x28t
        -0x40t
        -0x31t
        -0x1ft
        -0x33t
        -0x14t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingMainButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingMainButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lccsancom/san/landingpage/widget/LandingMainButton;->initView(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsancom/san/landingpage/widget/LandingMainButton;->removeDownloadListener:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsancom/san/landingpage/widget/LandingMainButton;->addDownloadListener:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsancom/san/landingpage/widget/LandingMainButton;->unifiedDownload:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsancom/san/landingpage/widget/LandingMainButton;->IncentiveDownloadUtils:[S

    sget v6, Lccsancom/san/landingpage/widget/LandingMainButton;->unifiedDownload:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsancom/san/landingpage/widget/LandingMainButton;->unifiedDownload:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadingList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsancom/san/landingpage/widget/LandingMainButton;->addDownloadListener:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsancom/san/landingpage/widget/LandingMainButton;->IncentiveDownloadUtils:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private initView(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Lccsanandroid/content/Context;

    .line 2
    .end local p1    # "ctx":Lccsanandroid/content/Context;
    sget v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const-string v0, "san_landing_page_main_button"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    const p1, -0x5dbcce4e

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int/2addr p1, v1

    const v1, -0xfa3d57d

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    cmpl-float v2, v2, v3

    sub-int/2addr v1, v2

    invoke-static {v4}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    int-to-short v2, v2

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, -0x5

    int-to-byte v3, v3

    invoke-static {v0, v0, v0, v0}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x68

    invoke-static {p1, v1, v2, v3, v4}, Lccsancom/san/landingpage/widget/LandingMainButton;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsansan/j/unifiedDownload;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingMainButton;->mDownloadBtn:Lccsansan/j/unifiedDownload;

    sget p1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getProgress()Lccsansan/j/unifiedDownload;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingMainButton;->mDownloadBtn:Lccsansan/j/unifiedDownload;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingMainButton;->mDownloadBtn:Lccsansan/j/unifiedDownload;

    const/16 v2, 0x1d

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 2
    .param p1, "item"    # Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 1
    .end local p1    # "item":Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
    sget v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingMainButton;->mDownloadBtn:Lccsansan/j/unifiedDownload;

    iget-object p1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    sget p1, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingMainButton;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
