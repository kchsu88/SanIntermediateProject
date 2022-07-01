.class public Lccsansan/au/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:C

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    invoke-static {}, Lccsansan/au/unifiedDownload;->removeDownloadListener()V

    const/16 v2, 0x62

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsansan/au/unifiedDownload;->IncentiveDownloadUtils:[B

    const/16 v2, 0xe6

    sput v2, Lccsansan/au/unifiedDownload;->unifiedDownload:I

    sget v2, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x78t
        0x3ct
        0x3dt
        -0x44t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0xft
        0x1at
        -0x15t
        -0xet
        -0x6t
        0xet
        -0x10t
        -0x3t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        -0x9t
    .end array-data
.end method

.method public static IncentiveDownloadUtils()V
    .locals 15

    .line 23
    const-string v0, "\u0000\u0000\u0000\u0000"

    .line 1
    invoke-static {}, Lccsansan/bt/getDownloadingList;->addDownloadListener()Lccsansan/p/getDownloadedList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 9
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 23
    const/16 v3, 0xb

    goto :goto_0

    :cond_2
    const/16 v3, 0x18

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget v3, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x45

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    const/16 v3, 0x3d

    goto :goto_1

    :cond_3
    const/16 v3, 0x52

    :goto_1
    packed-switch v3, :pswitch_data_1

    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    goto :goto_2

    .line 9
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 23
    :goto_2
    const/16 v4, 0x61

    :try_start_2
    div-int/2addr v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    sget v4, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    const/16 v5, 0x9

    add-int/2addr v4, v5

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 9
    :cond_4
    :try_start_3
    sget-object v4, Lccsansan/au/unifiedDownload;->IncentiveDownloadUtils:[B

    const/16 v6, 0x32

    aget-byte v7, v4, v6

    int-to-byte v7, v7

    or-int/lit8 v8, v7, 0x23

    int-to-byte v8, v8

    aget-byte v9, v4, v5

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lccsansan/au/unifiedDownload;->removeDownloadListener(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/4 v8, 0x5

    aget-byte v9, v4, v8

    int-to-byte v9, v9

    aget-byte v10, v4, v6

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lccsansan/au/unifiedDownload;->removeDownloadListener(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    sget v5, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v5, v5, 0x67

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 9
    :cond_5
    :try_start_4
    aget-byte v5, v4, v6

    int-to-byte v5, v5

    or-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lccsansan/au/unifiedDownload;->removeDownloadListener(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v8, 0x8

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    invoke-static {v7, v6, v4}, Lccsansan/au/unifiedDownload;->removeDownloadListener(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_7

    .line 23
    return-void

    .line 9
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    :goto_4
    throw v4

    :cond_6
    throw v3

    :catchall_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v4, :cond_6

    goto :goto_4

    .line 23
    :catchall_2
    move-exception v0

    throw v0

    .line 9
    :cond_7
    :goto_5
    nop

    .line 19
    const/4 v3, 0x1

    invoke-static {v3}, Lccsansan/bt/getDownloadingList;->removeDownloadListener(Z)V

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v4

    int-to-byte v4, v4

    rsub-int v4, v4, 0x52b9

    int-to-char v4, v4

    const v5, -0xfbbf20

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v10, "\ud35f\udef8\u0241\u39c8\ue90a\u1a6c\u113c\u3aaa\uc85a\u6971\u105b\u6dd8\u7e49"

    const-string v11, "\udf57\u0440\ubaff\u2a52"

    const-string v12, "\u1bf7\uf8d8\u732b\u5c63\u4c6e\u90d5\u9fb6\uacf5\uf484\ua5f9\u8fcd\ud808"

    const-string v13, "\u240b\u095a\ua39d\u67bc"

    cmp-long v14, v6, v8

    sub-int/2addr v5, v14

    invoke-static {v10, v0, v4, v5, v11}, Lccsansan/au/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v1, v2, v4, v3}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V

    .line 21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v2, v2}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v12, v0, v4, v2, v13}, Lccsansan/au/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    invoke-static {v2}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x54df

    int-to-char v3, v3

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    const-string v6, "\udad7\u9733\u10fb\u4751\ud16a\u79ba\u8585\uca54\u1761\ub207\u21db\u0606\ua62d\u0e34\udfc3\ube62\u1117\uebc8"

    const-string v7, "\uca3b\u176d\udfb9\u2554"

    invoke-static {v6, v0, v3, v5, v7}, Lccsansan/au/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const-string v5, "\u22cb\ube53\uf097\uc331\ud95c\ucc0f\u3a92\u4db4\uaae6\u77a5\u0105\u2951\u4aae\ua27e\u74a4\ud4ac\udbda\u7185\u8d14\u8e56\uafe2\u4a0c\uf616\u66fc\u389e\u06c7\u7450\uf938\u972e\ufff0\ua449\u4edb\u7b7b\u8195\u7518\u7e00\ub5ac\uc76e"

    const-string v6, "\uc5d6\u98e9\ud66b\u6740"

    invoke-static {v5, v0, v4, v2, v6}, Lccsansan/au/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener()I
    .locals 2

    sget v0, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {p2}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p0, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_1
    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    goto :goto_1

    :cond_2
    const/16 p0, 0x41

    :goto_1
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    const/4 p2, 0x1

    :goto_2
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList()V
    .locals 4

    .line 9
    sget v0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/bt/unifiedDownload;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bt/unifiedDownload;->addDownloadListener()Z

    move-result v0

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    return-void

    .line 5
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1
    sget v0, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :cond_2
    const/16 v0, 0xf

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 9
    return-void

    .line 1
    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 9
    :cond_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/au/unifiedDownload$removeDownloadListener;

    const-wide/16 v2, 0x1388

    invoke-direct {v1, v2, v3}, Lccsansan/au/unifiedDownload$removeDownloadListener;-><init>(J)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V
    .locals 3

    .line 27
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 27
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 24
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem()Lccsansan/ae/getDownloadingList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 27
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 25
    :pswitch_0
    instance-of v2, p0, Lccsansan/ae/unifiedDownload;

    if-eqz v2, :cond_2

    .line 27
    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_2

    sget v0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 25
    :cond_3
    nop

    .line 26
    const-string v0, "resume_source"

    const-string v1, "ad"

    invoke-virtual {p0, v0, v1}, Lccsansan/bu/unifiedDownload;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "resume_reason"

    invoke-virtual {p0, v0, p1}, Lccsansan/bu/unifiedDownload;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :pswitch_1
    sget p0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(SSS)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x4a

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x11

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x61

    sget-object v0, Lccsansan/au/unifiedDownload;->IncentiveDownloadUtils:[B

    new-array v1, p2, [B

    const/4 v2, -0x1

    add-int/2addr p2, v2

    if-nez v0, :cond_0

    const/16 v3, 0x3a

    goto :goto_0

    :cond_0
    const/16 v3, 0x3f

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    sget p0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_2

    :pswitch_0
    move-object v2, v1

    const/4 v3, -0x1

    move-object v1, v0

    move v0, p2

    :goto_1
    move p2, p0

    goto :goto_5

    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    :goto_3
    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    move p0, p1

    move-object v2, v1

    const/4 v3, -0x1

    move-object v1, v0

    move v0, p2

    :goto_4
    add-int/2addr p1, v5

    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x2

    goto :goto_1

    :goto_5
    add-int/2addr v3, v5

    int-to-byte p0, p2

    aput-byte p0, v2, v3

    if-ne v3, v0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_2
    aget-byte p0, v1, p1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/au/unifiedDownload;->getDownloadingList:J

    const/4 v0, 0x0

    sput-char v0, Lccsansan/au/unifiedDownload;->removeDownloadListener:C

    const v0, 0x2c949c5d

    sput v0, Lccsansan/au/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsansan/au/unifiedDownload;->getDownloadingList:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/au/unifiedDownload;->addDownloadListener:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/au/unifiedDownload;->removeDownloadListener:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/au/unifiedDownload;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    invoke-static {p0, p1}, Lccsansan/au/unifiedDownload;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method
