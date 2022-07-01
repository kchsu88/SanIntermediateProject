.class final Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p4, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 14

    .line 29
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x2f

    or-int/lit8 v2, v0, 0x2f

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 5
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    const/16 v6, 0x52

    :try_start_0
    div-int/2addr v6, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 29
    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_2
    const/16 v1, 0x60

    goto :goto_3

    :cond_2
    const/16 v1, 0x1f

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    goto/16 :goto_1e

    .line 29
    :goto_4
    :pswitch_2
    xor-int/lit8 v1, v0, 0x23

    const/16 v6, 0x23

    and-int/2addr v0, v6

    shl-int/2addr v0, v4

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 3
    :cond_3
    const/16 v0, 0x61

    const/16 v1, 0xc

    const/16 v7, 0x53

    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    iget-object v9, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v9}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_4

    .line 5
    const/16 v9, 0x57

    goto :goto_5

    :cond_4
    const/16 v9, 0x18

    :goto_5
    packed-switch v9, :pswitch_data_3

    :cond_5
    :goto_6
    goto/16 :goto_e

    .line 29
    :pswitch_3
    sget v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v10, v9, 0x61

    or-int/2addr v9, v0

    add-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v10, v2

    if-nez v10, :cond_6

    .line 4
    :cond_6
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v9, :cond_7

    .line 5
    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    packed-switch v9, :pswitch_data_4

    goto :goto_6

    .line 21
    :pswitch_4
    sget v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v10, v9, 0x69

    xor-int/lit8 v9, v9, 0x69

    or-int/2addr v9, v10

    neg-int v9, v9

    neg-int v9, v9

    xor-int/lit8 v9, v9, -0x1

    sub-int/2addr v10, v9

    sub-int/2addr v10, v4

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v10, v2

    if-nez v10, :cond_8

    .line 5
    const/16 v9, 0x53

    goto :goto_8

    :cond_8
    const/16 v9, 0x12

    :goto_8
    packed-switch v9, :pswitch_data_5

    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    goto :goto_9

    :pswitch_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v9, 0x2e

    :try_start_4
    div-int/2addr v9, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 21
    :catchall_1
    move-exception v0

    throw v0

    .line 29
    :goto_9
    sget v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    or-int/lit8 v10, v9, 0x2d

    shl-int/2addr v10, v4

    xor-int/lit8 v9, v9, 0x2d

    sub-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v10, v2

    if-eqz v10, :cond_9

    .line 5
    const/16 v9, 0xa

    goto :goto_a

    :cond_9
    const/16 v9, 0x36

    :goto_a
    packed-switch v9, :pswitch_data_6

    .line 29
    :pswitch_6
    nop

    .line 5
    :pswitch_7
    :try_start_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsansan/m/removeDownloadListener;

    .line 6
    new-instance v10, Lccsanorg/json/JSONObject;

    iget-object v11, v9, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v10, v11}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "attr_code"

    .line 7
    invoke-virtual {v10, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "cut_type"

    .line 8
    invoke-virtual {v10, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v12, 0x2af8

    if-ne v11, v12, :cond_a

    .line 5
    const/4 v11, 0x0

    goto :goto_b

    :cond_a
    const/4 v11, 0x1

    :goto_b
    packed-switch v11, :pswitch_data_7

    .line 1
    sget v11, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v12, v11, -0x44

    xor-int/lit8 v13, v11, -0x1

    and-int/lit8 v13, v13, 0x43

    or-int/2addr v12, v13

    and-int/lit8 v11, v11, 0x43

    shl-int/2addr v11, v4

    xor-int/lit8 v11, v11, -0x1

    sub-int/2addr v12, v11

    sub-int/2addr v12, v4

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v12, v2

    if-nez v12, :cond_b

    .line 9
    :cond_b
    :try_start_6
    sget-object v11, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    invoke-virtual {v11}, Lccsansan/p/deleteDownList;->getValue()I

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-ne v10, v11, :cond_c

    .line 5
    const/16 v10, 0xc

    goto :goto_c

    :cond_c
    const/4 v10, 0x2

    :goto_c
    packed-switch v10, :pswitch_data_8

    .line 21
    sget v8, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    add-int/lit8 v8, v8, 0x50

    xor-int/lit8 v10, v8, -0x1

    and-int/lit8 v8, v8, -0x1

    shl-int/2addr v8, v4

    add-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v10, v2

    if-nez v10, :cond_d

    .line 10
    :cond_d
    :try_start_7
    iget-object v8, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v9, v8}, Lccsansan/bn/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x2d

    xor-int/lit8 v0, v0, 0x2d

    or-int/2addr v0, v1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    const/16 v3, 0x23

    :goto_d
    packed-switch v3, :pswitch_data_9

    .line 29
    return-void

    .line 5
    :pswitch_8
    :try_start_8
    array-length v0, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    .line 10
    :catch_0
    move-exception v6

    .line 18
    :goto_e
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v6

    iget-object v8, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v8}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 5
    const/16 v8, 0x33

    goto :goto_f

    :cond_f
    const/16 v8, 0x29

    :goto_f
    packed-switch v8, :pswitch_data_a

    :goto_10
    goto/16 :goto_18

    .line 1
    :pswitch_9
    sget v8, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v9, v8, 0x32

    or-int/lit8 v8, v8, 0x32

    add-int/2addr v9, v8

    sub-int/2addr v9, v4

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v9, v2

    if-eqz v9, :cond_10

    .line 5
    const/4 v8, 0x0

    goto :goto_11

    :cond_10
    const/4 v8, 0x1

    :goto_11
    packed-switch v8, :pswitch_data_b

    .line 21
    iget-object v8, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_13

    :pswitch_a
    iget-object v0, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_9
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v0, :cond_11

    .line 5
    const/16 v0, 0x14

    goto :goto_12

    :cond_11
    const/16 v0, 0x53

    :goto_12
    packed-switch v0, :pswitch_data_c

    goto :goto_10

    .line 1
    :catchall_3
    move-exception v0

    throw v0

    .line 5
    :goto_13
    goto :goto_14

    :cond_12
    const/4 v0, 0x7

    :goto_14
    packed-switch v0, :pswitch_data_d

    goto :goto_10

    .line 29
    :pswitch_b
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    xor-int/lit8 v8, v0, 0x56

    and-int/lit8 v0, v0, 0x56

    shl-int/2addr v0, v4

    add-int/2addr v8, v0

    and-int/lit8 v0, v8, -0x1

    or-int/lit8 v8, v8, -0x1

    add-int/2addr v0, v8

    rem-int/lit16 v8, v0, 0x80

    sput v8, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_13

    .line 21
    :cond_13
    const-string v0, "hasObb"

    invoke-virtual {v6, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    packed-switch v0, :pswitch_data_e

    goto :goto_10

    .line 29
    :pswitch_c
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v6, v0, 0xf

    xor-int/lit8 v8, v0, 0xf

    or-int/2addr v8, v6

    neg-int v8, v8

    neg-int v8, v8

    xor-int v9, v6, v8

    and-int/2addr v6, v8

    shl-int/2addr v6, v4

    add-int/2addr v9, v6

    rem-int/lit16 v6, v9, 0x80

    sput v6, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v9, v2

    if-eqz v9, :cond_15

    .line 21
    :cond_15
    nop

    .line 1
    and-int/lit8 v6, v0, 0x77

    xor-int/lit8 v0, v0, 0x77

    or-int/2addr v0, v6

    neg-int v0, v0

    neg-int v0, v0

    and-int v8, v6, v0

    or-int/2addr v0, v6

    add-int/2addr v8, v0

    rem-int/lit16 v0, v8, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v8, v2

    if-eqz v8, :cond_16

    .line 5
    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    const/4 v0, 0x1

    :goto_16
    packed-switch v0, :pswitch_data_f

    .line 29
    goto :goto_17

    .line 1
    :pswitch_d
    nop

    .line 24
    :goto_17
    const/4 v0, 0x1

    goto :goto_19

    :goto_18
    const/4 v0, 0x0

    :goto_19
    iget-object v6, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v6}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 5
    goto :goto_1a

    :cond_17
    const/16 v1, 0x53

    :goto_1a
    const-string v0, "OpenAppHelperEx"

    packed-switch v1, :pswitch_data_10

    .line 21
    sget v1, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    xor-int/lit8 v6, v1, 0x6c

    and-int/lit8 v1, v1, 0x6c

    shl-int/2addr v1, v4

    add-int/2addr v6, v1

    or-int/lit8 v1, v6, -0x1

    shl-int/2addr v1, v4

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v1, v6

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_19

    goto :goto_1c

    .line 28
    :pswitch_e
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v7, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v8, "app_had_activated"

    invoke-static {v1, v6, v3, v8, v7}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "not activate list or is activate"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x77

    xor-int/lit8 v0, v0, 0x77

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_18

    .line 29
    :cond_18
    :goto_1b
    goto :goto_1e

    .line 25
    :cond_19
    :goto_1c
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v6, p0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1, v3, v6}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    .line 26
    const-string v1, "#delayOpenApp Auto Start"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    const/16 v1, 0x4d

    xor-int/lit8 v6, v0, 0x4d

    and-int/lit8 v8, v0, 0x4d

    or-int/2addr v6, v8

    shl-int/2addr v6, v4

    and-int/lit8 v8, v0, -0x4e

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v8

    neg-int v0, v0

    or-int v1, v6, v0

    shl-int/2addr v1, v4

    xor-int/2addr v0, v6

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1a

    .line 5
    const/16 v7, 0x59

    goto :goto_1d

    :cond_1a
    nop

    :goto_1d
    packed-switch v7, :pswitch_data_11

    .line 29
    goto :goto_1b

    .line 1
    :pswitch_f
    nop

    .line 29
    :goto_1e
    nop

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x11

    xor-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    or-int v6, v1, v0

    shl-int/2addr v6, v4

    xor-int/2addr v0, v1

    sub-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v6, v2

    if-eqz v6, :cond_1b

    .line 5
    const/4 v3, 0x1

    goto :goto_1f

    :cond_1b
    nop

    :goto_1f
    packed-switch v3, :pswitch_data_12

    .line 29
    return-void

    .line 1
    :pswitch_10
    :try_start_a
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    goto :goto_21

    :goto_20
    throw v0

    :goto_21
    goto :goto_20

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x53
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x36
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x33
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x14
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x61
        :pswitch_b
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x53
        :pswitch_e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x59
        :pswitch_f
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method
