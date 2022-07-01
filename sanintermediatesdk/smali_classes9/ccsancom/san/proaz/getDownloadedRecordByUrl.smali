.class public Lccsancom/san/proaz/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static getDownloadingList:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    const-wide v0, 0x7ecff2b842380556L    # 6.846537983635592E302

    sput-wide v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->getDownloadingList:J

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 32
    sget v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)Z
    .locals 7

    .line 24
    nop

    .line 19
    sget v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\u0519\u31be\u6c18\u98d1\ud750\u0228\u3eb1\u7573\ua1cd\udca7\u0b15\u4785\u7266\uaee7\ue5a5\u1009\u4cf6\u7b5e\ub62e"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v0

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    throw p0

    .line 8
    :cond_0
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto/16 :goto_7

    .line 13
    :cond_2
    :pswitch_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    rsub-int p0, p0, 0x349d

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 14
    const-string v0, "No show : app is in not in background"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    if-nez p0, :cond_4

    .line 8
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 24
    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    const v0, 0xa56d

    const-string v4, "\u0518\ua054\u4fac\uf562\u908a\u3e18\ue5af\u808d\u2e04\ud5a3\u737a\u1e96\uc46a\u63bb\u0ecf\ub442\u53e8\uf907\ua493\u4220\ue9b6\u94c2\u326c\ud9bd\u870f\u2283\uc834"

    const/4 v5, 0x0

    if-eqz p0, :cond_7

    goto/16 :goto_6

    .line 23
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    const/16 p0, 0x5b

    goto :goto_3

    :cond_5
    const/16 p0, 0x35

    :goto_3
    packed-switch p0, :pswitch_data_2

    .line 24
    return v2

    :pswitch_2
    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6

    .line 8
    const/16 p0, 0x8

    goto :goto_4

    :cond_6
    const/16 p0, 0x9

    :goto_4
    const-wide/16 v4, 0x0

    const-string v0, "\u0518\u17f8\u20f4\u3d66\u4e3a\u58fc\u75a7\u8631\u9364\uadbf\ubebd\ucb6d\ue42a\uf6bb\u03b0\u1c78\u2935\u3ba7\u54ad\u616b\u7231\u8cf7\u99a1\uaa6d\uc722\ud1ea\ue2a8"

    const-string v2, ""

    packed-switch p0, :pswitch_data_3

    .line 23
    const/16 p0, 0x30

    invoke-static {v2, p0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result p0

    rsub-int p0, p0, 0x349c

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    cmp-long v6, v1, v4

    add-int/lit16 v6, v6, 0x12c0

    invoke-static {v0, v6}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 24
    goto :goto_5

    :pswitch_3
    const/16 p0, 0x3473

    const/16 v6, 0x76

    invoke-static {v2, v6}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    div-int/2addr p0, v2

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    cmp-long v6, v1, v4

    mul-int/lit16 v6, v6, 0x547a

    invoke-static {v0, v6}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return v3

    :goto_6
    const/16 p0, 0x287f

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v6

    cmpl-float v5, v6, v5

    div-int/2addr p0, v5

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, v3, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    shl-int/2addr v0, v1

    invoke-static {v4, v0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_7
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result p0

    cmpl-float p0, p0, v5

    add-int/lit16 p0, p0, 0x349d

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v3, v3, v3}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v4, v1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 8
    :goto_7
    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x349d

    invoke-static {v1, p0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 9
    const-string v0, "No show :: for outer dialog show cloud config is not support"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_3
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/proaz/getDownloadedRecordByUrl;->getDownloadingList:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 3

    .line 8
    nop

    .line 2
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "appPkgName"

    .line 4
    :try_start_1
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p1, "appPortal"

    .line 5
    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startActivityForLowVersion exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result p2

    const-string v0, "\u0519\u31be\u6c18\u98d1\ud750\u0228\u3eb1\u7573\ua1cd\udca7\u0b15\u4785\u7266\uaee7\ue5a5\u1009\u4cf6\u7b5e\ub62e"

    cmpl-float p1, p2, p1

    add-int/lit16 p1, p1, 0x349d

    invoke-static {v0, p1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 7

    .line 31
    nop

    .line 27
    sget v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0xd6c3

    const-string v4, "\u0534\ud3f0\ua8b7\u8176\u5e34\u34b9\u0db7\uda6b\ub321\u89fa\u66e8\u3f58\u1407\ue2c5\ubbdc\u904b\u6914\u47ca\u1c8d\uf540\uc21e\u98c0\u71fb\u4ebd\u273e\ufc34\ucaf6\ua3b4\u7876\u5120\u2fe0\u04a7"

    const-string v5, "\u0519\u31be\u6c18\u98d1\ud750\u0228\u3eb1\u7573\ua1cd\udca7\u0b15\u4785\u7266\uaee7\ue5a5\u1009\u4cf6\u7b5e\ub62e"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v6, v0}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    cmpl-float v0, v6, v0

    add-int/lit16 v0, v0, 0x65c1

    invoke-static {v5, v0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    mul-int/lit8 v5, v5, 0x17

    shr-int/2addr v3, v5

    invoke-static {v4, v3}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    goto :goto_2

    .line 0
    :pswitch_0
    invoke-static {v2, v6, v6}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    cmpl-float v0, v0, v6

    rsub-int v0, v0, 0x349d

    invoke-static {v5, v0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/16 v0, 0x54

    goto :goto_3

    :cond_1
    const/16 v0, 0x15

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 31
    :cond_2
    :pswitch_1
    invoke-static {p0, p1, p2}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    return-void

    :goto_4
    sget p2, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x6d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    .line 26
    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 27
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    goto :goto_6

    :pswitch_2
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    goto :goto_7

    :goto_6
    const/16 p0, 0x11

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_7
    return-void

    :catchall_0
    move-exception p0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 7
    sget v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p1}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Ljava/lang/String;)Lccsansan/p/getDownloadedList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {p0, v0, p1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    sget p0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x47

    goto :goto_0

    :cond_2
    const/16 p0, 0x2e

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x12

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
