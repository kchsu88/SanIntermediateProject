.class final Lccsancom/san/az/addDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "AzHelperEx"

    const-string v1, ""

    .line 26
    sget v2, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    or-int/lit8 v3, v2, 0x35

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v2, v2, 0x35

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    .line 7
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/16 v5, 0x53

    const/4 v6, 0x6

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    .line 26
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v8, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v8}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v8, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v8}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    const/4 v8, 0x6

    goto :goto_1

    :cond_1
    const/16 v8, 0x4a

    :goto_1
    packed-switch v8, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 1
    :goto_2
    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v3, :cond_2

    .line 7
    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    packed-switch v8, :pswitch_data_2

    goto/16 :goto_22

    .line 2
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 46
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    const/16 v1, 0x9

    and-int/lit8 v3, v0, -0xa

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v1

    or-int/2addr v3, v6

    and-int/2addr v0, v1

    shl-int/2addr v0, v4

    xor-int v1, v3, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v4

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 7
    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 46
    :pswitch_2
    goto/16 :goto_22

    .line 5
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v9}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " adinfos size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AD_CONVERT"

    invoke-static {v9, v8}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    sget v8, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v10, v8, -0x8

    xor-int/lit8 v11, v8, -0x1

    and-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    and-int/lit8 v8, v8, 0x7

    shl-int/2addr v8, v4

    or-int v11, v10, v8

    shl-int/2addr v11, v4

    xor-int/2addr v8, v10

    sub-int/2addr v11, v8

    rem-int/lit16 v8, v11, 0x80

    sput v8, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_5

    .line 46
    :cond_5
    nop

    .line 6
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 7
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    const/4 v8, 0x1

    :goto_6
    packed-switch v8, :pswitch_data_4

    goto :goto_c

    .line 1
    :pswitch_3
    sget v8, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v10, v8, -0x6c

    xor-int/lit8 v11, v8, -0x1

    and-int/lit8 v11, v11, 0x6b

    or-int/2addr v10, v11

    and-int/lit8 v8, v8, 0x6b

    shl-int/2addr v8, v4

    neg-int v8, v8

    neg-int v8, v8

    xor-int v11, v10, v8

    and-int/2addr v8, v10

    shl-int/2addr v8, v4

    add-int/2addr v11, v8

    rem-int/lit16 v8, v11, 0x80

    sput v8, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_8

    .line 7
    const/4 v8, 0x6

    goto :goto_7

    :cond_8
    const/16 v8, 0x3c

    :goto_7
    packed-switch v8, :pswitch_data_5

    .line 1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsansan/m/removeDownloadListener;

    .line 7
    iget-object v10, v8, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    goto :goto_9

    .line 6
    :pswitch_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsansan/m/removeDownloadListener;

    .line 7
    iget-object v10, v8, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    :goto_8
    move-object v7, v8

    goto :goto_a

    :goto_9
    :try_start_1
    array-length v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_6

    goto :goto_8

    .line 46
    :goto_a
    sget v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v6, v3, -0x2

    xor-int/lit8 v8, v3, -0x1

    and-int/2addr v8, v4

    or-int/2addr v6, v8

    and-int/2addr v3, v4

    shl-int/2addr v3, v4

    or-int v8, v6, v3

    shl-int/2addr v8, v4

    xor-int/2addr v3, v6

    sub-int/2addr v8, v3

    rem-int/lit16 v3, v8, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_9

    :cond_9
    :goto_b
    :pswitch_5
    goto :goto_e

    .line 1
    :catchall_0
    move-exception v0

    throw v0

    .line 46
    :goto_c
    sget v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    xor-int/lit8 v6, v3, 0x55

    and-int/lit8 v3, v3, 0x55

    shl-int/2addr v3, v4

    add-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_a

    .line 7
    const/16 v3, 0xb

    goto :goto_d

    :cond_a
    const/16 v3, 0x42

    :goto_d
    packed-switch v3, :pswitch_data_6

    .line 46
    goto :goto_b

    .line 7
    :goto_e
    if-nez v7, :cond_c

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no valid adinfo,pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkg"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v1, "no_valid_adinfo"

    invoke-static {v9, v1, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 46
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x34

    or-int/lit8 v0, v0, 0x34

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 7
    const/16 v0, 0x4d

    goto :goto_f

    :cond_b
    const/16 v0, 0x16

    :goto_f
    packed-switch v0, :pswitch_data_7

    .line 46
    goto :goto_10

    :pswitch_6
    return-void

    :goto_10
    const/16 v0, 0x52

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 16
    :cond_c
    nop

    .line 22
    :try_start_3
    iget-object v3, v7, Lccsansan/m/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ad icon url:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lccsansan/m/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, v7, Lccsansan/m/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ad icon path:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_d

    .line 7
    const/16 v6, 0x56

    goto :goto_11

    :cond_d
    const/16 v6, 0x29

    :goto_11
    packed-switch v6, :pswitch_data_8

    .line 26
    goto :goto_15

    .line 36
    :pswitch_7
    sget v6, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x54

    or-int/lit8 v8, v6, -0x1

    shl-int/2addr v8, v4

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_e

    .line 7
    const/16 v5, 0x11

    goto :goto_12

    :cond_e
    nop

    :goto_12
    packed-switch v5, :pswitch_data_9

    .line 26
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :pswitch_8
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_14

    :goto_13
    const/16 v5, 0x8

    :try_start_5
    div-int/2addr v5, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 46
    :goto_14
    goto :goto_18

    .line 36
    :catchall_2
    move-exception v0

    throw v0

    .line 46
    :goto_15
    sget v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    and-int/lit8 v5, v3, 0x8

    or-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 7
    const/16 v3, 0x1d

    goto :goto_16

    :cond_f
    const/16 v3, 0x10

    :goto_16
    packed-switch v3, :pswitch_data_a

    .line 46
    :pswitch_9
    goto :goto_17

    .line 26
    :catchall_3
    move-exception v3

    .line 29
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_10
    :goto_17
    move-object v3, v1

    :goto_18
    :try_start_6
    iget-object v5, v7, Lccsansan/m/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ad image url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lccsansan/m/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v5, v7, Lccsansan/m/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-static {v5}, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ad image path:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v5, :cond_11

    .line 7
    const/16 v6, 0x1e

    goto :goto_19

    :cond_11
    const/16 v6, 0x4f

    :goto_19
    packed-switch v6, :pswitch_data_b

    .line 36
    goto :goto_1f

    .line 46
    :pswitch_a
    sget v6, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    xor-int/lit8 v8, v6, 0x71

    and-int/lit8 v6, v6, 0x71

    shl-int/2addr v6, v4

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_12

    .line 7
    const/4 v6, 0x1

    goto :goto_1a

    :cond_12
    const/4 v6, 0x0

    :goto_1a
    packed-switch v6, :pswitch_data_c

    .line 36
    :try_start_7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :pswitch_b
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :goto_1b
    move-object v1, v0

    goto :goto_1d

    :goto_1c
    const/16 v1, 0xf

    :try_start_8
    div-int/2addr v1, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1b

    .line 46
    :goto_1d
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    or-int/lit8 v5, v0, 0x46

    shl-int/2addr v5, v4

    xor-int/lit8 v0, v0, 0x46

    sub-int/2addr v5, v0

    and-int/lit8 v0, v5, -0x1

    or-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    .line 7
    const/4 v2, 0x1

    goto :goto_1e

    :cond_13
    nop

    :goto_1e
    packed-switch v2, :pswitch_data_d

    .line 46
    goto :goto_20

    :catchall_4
    move-exception v0

    throw v0

    :goto_1f
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x5b

    and-int/lit8 v0, v0, 0x5b

    shl-int/2addr v0, v4

    xor-int v5, v2, v0

    and-int/2addr v0, v2

    shl-int/2addr v0, v4

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_14

    :cond_14
    :goto_20
    :pswitch_c
    goto :goto_21

    .line 36
    :catchall_5
    move-exception v2

    .line 39
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_15
    :goto_21
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    iget-object v2, v7, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    iget-object v2, v7, Lccsansan/m/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    iget-object v2, v7, Lccsansan/m/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadedList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v3}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->deleteDownItem(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    .line 46
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->deleteDownItem()Lccsansan/bs/getDownloadingRecordByUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)V

    .line 26
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x23

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x23

    and-int/2addr v0, v2

    shl-int/2addr v1, v4

    or-int v2, v0, v1

    shl-int/2addr v2, v4

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    .line 46
    return-void

    :goto_22
    :pswitch_d
    nop

    .line 26
    sget v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x79

    and-int/lit8 v3, v0, 0x79

    or-int/2addr v1, v3

    shl-int/2addr v1, v4

    and-int/lit8 v3, v0, -0x7a

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x79

    or-int/2addr v0, v3

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_16

    .line 7
    const/4 v4, 0x0

    goto :goto_23

    :cond_16
    nop

    :goto_23
    packed-switch v4, :pswitch_data_e

    .line 46
    return-void

    .line 26
    :pswitch_e
    :try_start_9
    div-int/2addr v5, v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_25

    :goto_24
    throw v0

    :goto_25
    goto :goto_24

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3c
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x42
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x16
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x56
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x53
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1e
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
