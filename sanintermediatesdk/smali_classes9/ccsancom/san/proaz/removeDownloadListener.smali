.class public Lccsancom/san/proaz/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:Lccsansan/p/getDownloadedList;

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:C

.field private static unifiedDownload:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    const v0, 0xc9ea

    sput-char v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList:C

    const v0, 0xad41

    sput-char v0, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener:C

    const/16 v0, 0x1134

    sput-char v0, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils:C

    const v0, 0xad55

    sput-char v0, Lccsancom/san/proaz/removeDownloadListener;->unifiedDownload:C

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/proaz/removeDownloadListener;->unifiedDownload:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic getDownloadingList()Lccsansan/p/getDownloadedList;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/proaz/removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadedList;)Lccsansan/p/getDownloadedList;
    .locals 3

    .line 2
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v0, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-object p0, Lccsancom/san/proaz/removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x2a

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    goto :goto_1

    :cond_1
    const/16 v0, 0x2c

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p0

    :goto_2
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1}, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/getDownloadingList;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/16 p1, 0x55

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_1

    goto :goto_1

    .line 3
    :goto_3
    sget p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList()V

    if-eqz p1, :cond_1

    const/16 p0, 0x57

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_4
    nop

    .line 1
    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v1, 0x1

    :goto_5
    packed-switch v1, :pswitch_data_1

    goto :goto_6

    .line 3
    :pswitch_1
    return-void

    .line 1
    :goto_6
    const/4 p0, 0x0

    :try_start_2
    array-length p0, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    .line 3
    :catchall_2
    move-exception p0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)Z
    .locals 6

    .line 25
    nop

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    const-string v2, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\ud7f8\u2053\uaff8\u1de7\u2387\ub635\u4a97\ub138"

    invoke-static {v2, v1}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadingList()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 25
    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    .line 4
    :cond_0
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    add-int/lit8 p0, p0, 0x4e

    const-string p1, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\u963d\uf07b\u2a85\u1577\u85f5\u4862\ud8f1\uf10e\u1684\u1aba\u25a4\u1597\ue75f\uadb8\ub837\u052c\u9722\u0838\u5e35\uea41\u88f6\u29db\u4373\ue4d9\u5dfa\u3172\ud87e\ued3d\u8b76\uf6e4\u4124\u6ec5\u2a85\u1577\u85f5\u4862\uc0da\u8a95\u8b76\uf6e4\u8160\ubdec\uc0da\u8a95\u0efe\ue2f7\uf3d9\uc185\u4124\u6ec5\uc054\u6ce9\u0d36\u27a7\ue146\u0c22\uf2f6\ud937\ud12a\u010f\u72eb\ud4e5\u90cf\u6076"

    invoke-static {p1, p0}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    .line 20
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 25
    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    :try_start_0
    array-length p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    throw p0

    .line 5
    :cond_2
    if-nez p1, :cond_3

    .line 20
    const/16 p1, 0x2c

    goto :goto_2

    :cond_3
    const/16 p1, 0x53

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 9
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 20
    const/16 p1, 0x27

    goto :goto_3

    :cond_4
    const/16 p1, 0x26

    :goto_3
    packed-switch p1, :pswitch_data_2

    goto :goto_6

    .line 15
    :pswitch_1
    sget p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    sget-object p1, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {p1}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    :try_start_1
    array-length p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_7

    goto :goto_5

    :catchall_1
    move-exception p0

    throw p0

    .line 9
    :cond_5
    sget-object p1, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {p1}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    packed-switch p1, :pswitch_data_3

    goto :goto_6

    .line 9
    :goto_5
    :pswitch_2
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningActivityCount()I

    move-result p1

    if-eq p1, v5, :cond_7

    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x3b

    const-string p1, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\u963d\uf07b\u2a85\u1577\u85f5\u4862\ud8f1\uf10e\u1684\u1aba\u25a4\u1597\ue75f\uadb8\ud8f1\uf10e\u62ed\u9d90\uadd3\ue567\u5f7d\ub4a0\ubb07\ue1d8\u50a7\u854b\u48ed\u0e30\u34a6\ub080\ud3f6\u96b7\ud792\uadef\u62ed\u9d90\uc9e9\u137f\uc054\u6ce9\u2f2e\u2766\uc9e9\u137f\u0c4e\u5bbb"

    invoke-static {p1, p0}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14
    :cond_7
    :goto_6
    :pswitch_3
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 25
    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const-string p1, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\u963d\uf07b\u2a85\u1577\u85f5\u4862\ud8f1\uf10e\u1684\u1aba\u25a4\u1597\ud6fd\udbfe\u5f4e\u0197\ub7eb\u8dda\u721f\uce3b\uc054\u6ce9\u5e35\uea41\ud6fd\udbfe\u57c6\u247d\uc908\u96ad\uc766\uc58c\u1484\ub2bb\ucd01\u7d72"

    if-eqz p0, :cond_8

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p0

    shl-int/lit8 p0, p0, 0x7d

    add-int/lit8 p0, p0, 0x45

    invoke-static {p1, p0}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 14
    :cond_8
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, 0x32

    invoke-static {p1, p0}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 15
    :goto_7
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    const/16 p0, 0x59

    :try_start_2
    div-int/2addr p0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v0

    :catchall_2
    move-exception p0

    throw p0

    :cond_9
    return v0

    .line 15
    :cond_a
    if-nez p0, :cond_c

    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_b

    .line 20
    const/16 p0, 0x5c

    goto :goto_8

    :cond_b
    const/16 p0, 0x58

    :goto_8
    const-string p1, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\u963d\uf07b\u2a85\u1577\u85f5\u4862\ud8f1\uf10e\u1684\u1aba\u25a4\u1597\u8e70\ub4be\u5dfa\u3172\u85f5\u4862\ue17d\u1dbf\ub407\u5e5b\u37b0\uc746\u7056\u01d7\u9f49\u454e\u5b81\ud721\u05d1\u0a51\uac24\ua957\u0d36\u27a7\u333e\ube4d\ua861\u9f24"

    packed-switch p0, :pswitch_data_4

    .line 15
    const/16 p0, 0x30

    invoke-static {v4, p0, v0, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x34

    :goto_9
    invoke-static {p1, p0}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 15
    :pswitch_4
    const/16 p0, 0x68

    const/16 p2, 0x18

    invoke-static {v4, p2, v5, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    ushr-int/2addr p0, p2

    goto :goto_9

    .line 24
    :cond_c
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 20
    const/4 p0, 0x0

    goto :goto_a

    :cond_d
    const/4 p0, 0x1

    :goto_a
    packed-switch p0, :pswitch_data_5

    .line 25
    return v5

    .line 24
    :pswitch_5
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    const-string p2, "\u20d1\u4802\u8643\u5ad2\u7586\u658c\u0e92\uc89d\u20d1\u4802\u2411\uc1c2\u57f1\u26d0\u963d\uf07b\u2a85\u1577\u85f5\u4862\ud8f1\uf10e\u1684\u1aba\u25a4\u1597\ue75f\uadb8\ubb07\ue1d8\u9f49\u454e\u72aa\u425e\u9468\u81dc\u5e35\uea41\u3501\u6c98\uece4\u9228\uda51\u01c2\uf3ae\ubc30"

    cmp-long v4, p0, v2

    add-int/lit8 v4, v4, 0x2d

    invoke-static {p2, v4}, Lccsancom/san/proaz/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5c
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/getDownloadingList;
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x58

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-nez p1, :cond_2

    .line 3
    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 1
    :pswitch_0
    invoke-static {p0}, Lccsancom/san/proaz/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/proaz/addDownloadListener;

    move-result-object p0

    return-object p0

    .line 3
    :goto_3
    invoke-static {p0, p1}, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/IncentiveDownloadUtils;

    move-result-object p0

    sget p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1, p2, p1, p0}, Lccsancom/san/proaz/removeDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x3a

    goto :goto_0

    :cond_0
    const/16 p0, 0x5c

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
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 5
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1}, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)V

    sget p0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/getDownloadingList;
    .locals 2

    .line 4
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/getDownloadingList;

    move-result-object p0

    sget p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedList;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)Z
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    invoke-static {p0, p1, p2}, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Lccsancom/san/api/ProAzBuilder;Ljava/lang/String;)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsancom/san/proaz/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/proaz/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method
