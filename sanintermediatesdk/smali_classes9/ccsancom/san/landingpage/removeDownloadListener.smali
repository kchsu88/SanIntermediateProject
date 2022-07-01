.class public Lccsancom/san/landingpage/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method public static synthetic $r8$lambda$FSy1_ej9umXidt4VFxNoXvl_Qto(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEV3PNn2STnRzq-SJOiZGejebFU(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/san/landingpage/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 3

    .line 8
    nop

    .line 1
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLoaderClassName()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lccsancom/san/landingpage/removeDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lccsancom/san/landingpage/removeDownloadListener$$ExternalSyntheticLambda1;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, v1, p0, v2}, Lccsansan/cy/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase Landing page show count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LandPageActionUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    and-int/lit8 v0, p0, 0x9

    or-int/lit8 p0, p0, 0x9

    xor-int v1, v0, p0

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 4

    .line 8
    sget v0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x25

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x25

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setAdFormat()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lccsancom/san/landingpage/removeDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lccsancom/san/landingpage/removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, v1, p0, v3}, Lccsansan/cy/removeDownloadListener;->getDownloadingList(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    .line 8
    const-string p0, "LandPageActionUtils"

    const-string v0, "increase Landing page click count "

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    or-int/lit8 v0, p0, 0x3

    shl-int/2addr v0, v2

    xor-int/lit8 p0, p0, 0x3

    sub-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 4

    .line 12
    nop

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report Landing page Show isMainThread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/toString;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   hasReportFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandPageActionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFailure: insertLandingPageImpTrackUrls:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/dc/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    and-int/lit8 p1, p0, -0x1c

    xor-int/lit8 v1, p0, -0x1

    and-int/lit8 v1, v1, 0x1b

    or-int/2addr p1, v1

    and-int/lit8 p0, p0, 0x1b

    shl-int/2addr p0, v2

    neg-int p0, p0

    neg-int p0, p0

    xor-int v1, p1, p0

    and-int/2addr p0, p1

    shl-int/2addr p0, v2

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    :cond_1
    :pswitch_0
    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    and-int/lit8 p1, p0, 0x6f

    or-int/lit8 p0, p0, 0x6f

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic unifiedDownload(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 2

    .line 12
    nop

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report Landing page Click isMainThread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/toString;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   hasReportFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandPageActionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportFailure: insertLandingPageClickTrackUrls:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x44

    add-int/lit8 p0, p0, -0x1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    :cond_0
    sget p0, Lccsancom/san/landingpage/removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 p1, p0, 0x77

    or-int/lit8 p0, p0, 0x77

    or-int v0, p1, p0

    shl-int/lit8 v0, v0, 0x1

    xor-int/2addr p0, p1

    sub-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
