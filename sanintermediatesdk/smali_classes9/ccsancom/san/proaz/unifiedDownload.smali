.class public Lccsancom/san/proaz/unifiedDownload;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 10

    .line 12
    sget v0, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    .line 0
    if-eqz p2, :cond_2

    goto :goto_2

    .line 12
    :pswitch_0
    const/16 v0, 0x59

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 8
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 12
    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :goto_2
    const/16 v0, 0x54

    goto :goto_3

    :cond_2
    const/16 v0, 0x5c

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    goto :goto_6

    .line 1
    :pswitch_1
    const-string v0, "notifyId"

    invoke-virtual {p2, v0, v4}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8
    sget v1, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 v5, v1, 0x1a

    and-int/lit8 v1, v1, 0x1a

    shl-int/2addr v1, v3

    add-int/2addr v5, v1

    xor-int/lit8 v1, v5, -0x1

    and-int/2addr v5, v4

    shl-int/2addr v5, v3

    add-int/2addr v1, v5

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0x1f

    goto :goto_5

    :cond_3
    const/16 v1, 0x34

    :goto_5
    packed-switch v1, :pswitch_data_3

    goto :goto_9

    .line 12
    :pswitch_2
    goto :goto_9

    .line 1
    :goto_6
    nop

    .line 8
    xor-int/lit8 v0, v1, 0x5

    and-int/lit8 v5, v1, 0x5

    or-int/2addr v0, v5

    shl-int/2addr v0, v3

    xor-int/2addr v5, v4

    or-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v5

    neg-int v1, v1

    or-int v5, v0, v1

    shl-int/2addr v5, v3

    xor-int/2addr v0, v1

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    goto :goto_7

    :cond_4
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_4

    goto :goto_8

    .line 12
    :pswitch_3
    nop

    .line 1
    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-lez v0, :cond_5

    .line 8
    const/4 v1, 0x1

    goto :goto_a

    :cond_5
    const/4 v1, 0x0

    :goto_a
    const/16 v5, 0x59

    packed-switch v1, :pswitch_data_5

    :goto_b
    :pswitch_4
    goto/16 :goto_16

    .line 12
    :pswitch_5
    sget v1, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    and-int/lit8 v6, v1, -0x5a

    xor-int/lit8 v7, v1, -0x1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    and-int/2addr v1, v5

    shl-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    or-int v7, v6, v1

    shl-int/2addr v7, v3

    xor-int/2addr v1, v6

    sub-int/2addr v7, v1

    rem-int/lit16 v1, v7, 0x80

    sput v1, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 8
    const/4 v1, 0x0

    goto :goto_c

    :cond_6
    const/4 v1, 0x1

    :goto_c
    const-string v6, "out_fullScreenIntent"

    const v7, 0x186a1

    const-string v8, "pkgName"

    const-string v9, "notification"

    packed-switch v1, :pswitch_data_6

    .line 12
    goto :goto_f

    .line 1
    :pswitch_6
    nop

    .line 5
    :try_start_1
    invoke-virtual {p1, v9}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 8
    invoke-virtual {p2, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-ne v0, v7, :cond_7

    const/16 p2, 0x2a

    goto :goto_d

    :cond_7
    const/16 p2, 0x27

    :goto_d
    packed-switch p2, :pswitch_data_7

    :goto_e
    goto :goto_13

    .line 5
    :goto_f
    invoke-virtual {p1, v9}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 8
    invoke-virtual {p2, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p2, 0x0

    :try_start_2
    array-length p2, p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v7, :cond_8

    const/4 p2, 0x0

    goto :goto_10

    :cond_8
    const/4 p2, 0x1

    :goto_10
    packed-switch p2, :pswitch_data_8

    goto :goto_e

    .line 10
    :pswitch_7
    const p2, 0x186a2

    if-ne v0, p2, :cond_9

    .line 8
    const/4 v2, 0x1

    goto :goto_11

    :cond_9
    nop

    :goto_11
    packed-switch v2, :pswitch_data_9

    goto :goto_b

    :pswitch_8
    sget p2, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 v0, p2, 0x13

    and-int/lit8 v1, p2, 0x13

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    xor-int/2addr v1, v4

    or-int/lit8 p2, p2, 0x13

    and-int/2addr p2, v1

    sub-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 10
    :cond_a
    nop

    .line 12
    :try_start_3
    invoke-static {v6, p1}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 8
    sget p1, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    and-int/lit8 p2, p1, 0x19

    xor-int/lit8 p1, p1, 0x19

    or-int/2addr p1, p2

    neg-int p1, p1

    neg-int p1, p1

    and-int v0, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    const/16 p1, 0x15

    goto :goto_12

    :cond_b
    const/16 p1, 0x40

    :goto_12
    packed-switch p1, :pswitch_data_a

    goto/16 :goto_b

    .line 10
    :goto_13
    :try_start_4
    invoke-static {v6, p1}, Lccsansan/bn/getDownloadedCount;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    sget p1, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    xor-int/lit8 p2, p1, 0x70

    and-int/lit8 p1, p1, 0x70

    shl-int/2addr p1, v3

    add-int/2addr p2, p1

    sub-int/2addr p2, v2

    sub-int/2addr p2, v3

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_c

    goto :goto_14

    :cond_c
    const/4 v2, 0x1

    :goto_14
    packed-switch v2, :pswitch_data_b

    .line 12
    goto :goto_15

    :catchall_1
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    :goto_15
    :pswitch_9
    nop

    :goto_16
    nop

    .line 8
    sget p1, Lccsancom/san/proaz/unifiedDownload;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x59

    and-int/lit8 v0, p1, 0x59

    or-int/2addr p2, v0

    shl-int/2addr p2, v3

    and-int/lit8 v0, p1, -0x5a

    xor-int/2addr p1, v4

    and-int/2addr p1, v5

    or-int/2addr p1, v0

    neg-int p1, p1

    or-int v0, p2, p1

    shl-int/2addr v0, v3

    xor-int/2addr p1, p2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    .line 12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x27
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x40
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
