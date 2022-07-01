.class public Lccsancom/san/proaz/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Ljava/lang/String;

.field private static getDownloadingList:[I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    invoke-static {}, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload()V

    .line 1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INCENTIVE:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 4

    .line 19
    nop

    .line 16
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    const v0, 0x186a1

    const-string v1, "notification"

    packed-switch v2, :pswitch_data_1

    .line 16
    goto :goto_1

    .line 18
    :pswitch_0
    :try_start_0
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 19
    invoke-virtual {p0, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x59

    :try_start_1
    div-int/2addr p0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 18
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 19
    invoke-virtual {p0, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :pswitch_1
    sget p0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;)V
    .locals 9

    .line 15
    nop

    .line 2
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    packed-switch v0, :pswitch_data_0

    sget p0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    goto/16 :goto_4

    .line 7
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x52

    :try_start_0
    div-int/2addr v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 7
    :cond_1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    :goto_1
    invoke-static {}, Lccsansan/bt/getDownloadingList;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 8
    :pswitch_1
    new-array p0, v3, [I

    fill-array-data p0, :array_0

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result p1

    shr-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x11

    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x26

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p2

    shr-int/lit8 p2, p2, 0x18

    rsub-int/lit8 p2, p2, 0x4a

    invoke-static {p1, p2}, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    :goto_3
    invoke-static {p1}, Lccsansan/bt/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v8, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;

    int-to-long v3, v0

    move-object v2, v8

    move-object v5, p2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lccsancom/san/proaz/getDownloadStatusByUrl$removeDownloadListener;-><init>(JLccsancom/san/api/ProAzBuilder;Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-virtual {v1, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 2
    :cond_4
    :goto_4
    new-array p0, v3, [I

    fill-array-data p0, :array_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x11

    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x20

    new-array p1, p1, [I

    fill-array-data p1, :array_3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x3f

    invoke-static {p1, p2}, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
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

    :array_0
    .array-data 4
        0x5bd7f8cc
        0x199f1519
        -0x96deb99
        0x495eb5a0    # 912218.0f
        -0x4355c006
        0x78710168
        -0x796f4c15
        -0x6059e811
        -0x1f51848b
        -0x817b9a9
    .end array-data

    :array_1
    .array-data 4
        0x61806953
        0x660cdb68
        0x56f0c984
        0x3c5c041b
        0x28da49f1
        0x4dac695d    # 3.6157328E8f
        0x6639990e    # 2.1911529E23f
        0x5a32341b
        0x179a7dc9
        -0x183a486f
        -0x172712bf
        0x49a987f6    # 1388798.8f
        0x2b373efa
        -0x17fceb2b
        -0xc40990a
        0x6d5c1a48
        0x5eefaded
        -0x7d31d108
        -0x4b935846
        -0x744dd4a0
        0x52dc3b91
        -0xc409eb5
        0x2261086e
        0x41a3d552
        -0x22a780ca
        0x4d1f641e    # 1.67133664E8f
        -0x284d4379
        0x6485e36a
        0x5421c507
        -0x5fe104b6
        0x5e020abf
        -0x16c7711d
        -0x584383a0
        -0x142092ad
        -0x688395c5
        -0x188fa90a
        0x70ee043a
        -0x4efe55b1
    .end array-data

    :array_2
    .array-data 4
        0x5bd7f8cc
        0x199f1519
        -0x96deb99
        0x495eb5a0    # 912218.0f
        -0x4355c006
        0x78710168
        -0x796f4c15
        -0x6059e811
        -0x1f51848b
        -0x817b9a9
    .end array-data

    :array_3
    .array-data 4
        0x61806953
        0x660cdb68
        0x56f0c984
        0x3c5c041b
        0x28da49f1
        0x4dac695d    # 3.6157328E8f
        0x6639990e    # 2.1911529E23f
        0x5a32341b
        0x179a7dc9
        -0x183a486f
        -0x172712bf
        0x49a987f6    # 1388798.8f
        0x2b373efa
        -0x17fceb2b
        -0xc40990a
        0x6d5c1a48
        0x5eefaded
        -0x7d31d108
        0x53556cff
        -0x2b1eb891
        0x312c18ef
        -0x1acb61c9
        -0x6cf84953
        0x57055bd1
        -0x4dd4b0c2
        0x7675c3af
        0x2a762774
        0x2dbe0e83
        0xd40b46f
        0x33045cf6
        0x11262332
        0x352c5934
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 28
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 21
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-static {p0}, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 25
    invoke-static {p0, v0}, Lccsansan/bt/getDownloadingList;->getDownloadingList(Ljava/lang/String;I)V

    .line 26
    invoke-static {}, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils()V

    .line 28
    invoke-static {v1}, Lccsansan/bt/getDownloadingList;->removeDownloadListener(Z)V

    sget p0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    goto :goto_0

    :cond_2
    const/16 p0, 0x5b

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

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V
    .locals 2

    .line 20
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V

    sget p0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x44

    goto :goto_0

    :cond_1
    const/16 p0, 0x12

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

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadStatusByUrl;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

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
    sget-object v4, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList:[I

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

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList:[I

    return-void

    :array_0
    .array-data 4
        0x6c5db24f
        -0x4a0b342a
        0x4e1f1bd4    # 6.6735027E8f
        0x3b95d357
        0x79e0c98f
        -0x5ed44bc3
        0x7111bf19
        -0x3e92f9af
        0x5407579f
        0x3d572001
        0x3e32ef4d
        0x5b3ed4e6
        0x3f572937
        0x638745ba
        -0x689357b0
        -0x6db859b1
        -0x567fddce
        0x16a69f98
    .end array-data
.end method
