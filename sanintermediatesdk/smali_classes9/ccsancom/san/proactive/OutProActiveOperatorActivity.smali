.class public Lccsancom/san/proactive/OutProActiveOperatorActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field private getDownloadingList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/proactive/OutProActiveOperatorActivity;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, -0x18

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x17

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x17

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList:Ljava/lang/String;

    and-int/lit8 v1, v0, 0x7d

    or-int/lit8 v0, v0, 0x7d

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x4c

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener()Lccsansan/p/getDownloadedList;
    .locals 8

    .line 19
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, -0x2e

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x2d

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x2d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 11
    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const/16 v1, 0x5c

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    sget-object v5, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v5}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_4

    .line 19
    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 11
    :goto_2
    :try_start_2
    sget-object v5, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v0, v5}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_2

    const/16 v5, 0x23

    goto :goto_3

    :cond_2
    const/16 v5, 0x5c

    :goto_3
    packed-switch v5, :pswitch_data_2

    :goto_4
    goto/16 :goto_a

    .line 19
    :pswitch_1
    sget v5, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x6e

    sub-int/2addr v5, v2

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 13
    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v5, :cond_5

    .line 19
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    sub-int/2addr v0, v2

    xor-int/lit8 v1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 11
    goto :goto_5

    :cond_4
    const/4 v3, 0x1

    :goto_5
    packed-switch v3, :pswitch_data_3

    .line 19
    :pswitch_2
    goto/16 :goto_a

    .line 16
    :cond_5
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 19
    sget v5, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v6, v5, 0xb

    xor-int/lit8 v7, v6, -0x1

    or-int/lit8 v5, v5, 0xb

    and-int/2addr v5, v7

    shl-int/2addr v6, v2

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 11
    const/16 v5, 0x8

    goto :goto_6

    :cond_6
    const/16 v5, 0x45

    :goto_6
    packed-switch v5, :pswitch_data_4

    .line 19
    :pswitch_3
    nop

    .line 16
    :goto_7
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v5, :cond_7

    .line 11
    const/4 v5, 0x0

    goto :goto_8

    :cond_7
    const/4 v5, 0x1

    :goto_8
    packed-switch v5, :pswitch_data_5

    goto :goto_b

    .line 19
    :pswitch_4
    sget v5, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v6, v5, -0xc

    xor-int/lit8 v7, v5, -0x1

    and-int/lit8 v7, v7, 0xb

    or-int/2addr v6, v7

    and-int/lit8 v5, v5, 0xb

    shl-int/2addr v5, v2

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_8

    .line 16
    :cond_8
    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/san/xz/base/XzRecord;

    .line 17
    invoke-static {v5}, Lccsansan/k/addDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v7, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v6, :cond_9

    .line 11
    const/16 v6, 0x5c

    goto :goto_9

    :cond_9
    const/16 v6, 0x46

    :goto_9
    packed-switch v6, :pswitch_data_6

    goto :goto_7

    .line 19
    :pswitch_5
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x6f

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x6f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    :cond_a
    :try_start_7
    invoke-virtual {v5}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    sget v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :goto_a
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x65

    shl-int/lit8 v3, v1, 0x1

    and-int/lit8 v0, v0, 0x65

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    return-object v4

    :goto_b
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object v4

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5c
        :pswitch_5
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/app/Activity;)V
    .locals 5

    .line 45
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x35

    xor-int/lit8 v0, v0, 0x35

    or-int/2addr v0, v1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    .line 35
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 45
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x31

    and-int/lit8 v0, v0, 0x31

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int v4, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_5

    .line 40
    :pswitch_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 45
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 40
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0xf

    xor-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 45
    const/16 v0, 0x11

    goto :goto_2

    :cond_3
    const/16 v0, 0x57

    :goto_2
    const/high16 v1, 0x8000000

    const/high16 v2, 0x4000000

    packed-switch v0, :pswitch_data_2

    .line 40
    nop

    .line 44
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 40
    :pswitch_1
    nop

    .line 44
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    goto :goto_4

    :goto_3
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x69

    xor-int/lit8 p1, p1, 0x69

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :cond_4
    :pswitch_2
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x1d

    and-int/lit8 p1, p1, 0x1d

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 40
    :catchall_0
    move-exception p1

    throw p1

    .line 45
    :goto_5
    const/16 v0, 0x12

    goto :goto_6

    :cond_5
    const/16 v0, 0x46

    :goto_6
    const/high16 v1, -0x80000000

    const/high16 v4, 0xc000000

    packed-switch v0, :pswitch_data_3

    .line 36
    invoke-virtual {p1, v4}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 37
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v4, 0x5ca

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->setStatusBarColor(I)V

    .line 40
    invoke-virtual {p1, v3}, Lccsanandroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_7

    .line 35
    :pswitch_3
    nop

    .line 36
    invoke-virtual {p1, v4}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 37
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v3, 0x700

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->setStatusBarColor(I)V

    .line 40
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->setNavigationBarColor(I)V

    .line 45
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 6

    .line 10
    nop

    .line 5
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x11

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x4b

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 0
    if-nez p0, :cond_2

    goto :goto_1

    .line 5
    :pswitch_0
    :try_start_0
    array-length v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :goto_1
    or-int/lit8 p0, v3, 0x4b

    shl-int/2addr p0, v1

    and-int/lit8 v0, v3, -0x4c

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, v0

    sub-int/2addr p0, v1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 5
    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 10
    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    .line 3
    :cond_2
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    .line 5
    const/16 v4, 0x13

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v4, :pswitch_data_2

    :goto_5
    :pswitch_2
    goto :goto_a

    .line 10
    :pswitch_3
    sget v3, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    and-int/lit8 v4, v3, 0x65

    xor-int/lit8 v3, v3, 0x65

    or-int/2addr v3, v4

    neg-int v3, v3

    neg-int v3, v3

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 5
    const/16 v3, 0x14

    goto :goto_6

    :cond_4
    const/16 v3, 0x60

    :goto_6
    packed-switch v3, :pswitch_data_3

    :try_start_3
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_8

    :pswitch_4
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_7

    :cond_5
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_4

    goto :goto_5

    :goto_8
    :try_start_4
    array-length v3, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v0, 0x1

    :goto_9
    packed-switch v0, :pswitch_data_5

    :pswitch_5
    :try_start_5
    const-string v0, "lock_screen"

    .line 7
    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x26

    sub-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 10
    :cond_7
    goto :goto_a

    :catchall_2
    move-exception p0

    throw p0

    .line 7
    :goto_a
    const-string v0, "is_background"

    .line 10
    :try_start_6
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    sget p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v0, p0, 0x2b

    and-int/lit8 p0, p0, 0x2b

    shl-int/2addr p0, v1

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 5
    const/4 p0, 0x0

    goto :goto_b

    :cond_8
    const/4 p0, 0x1

    :goto_b
    packed-switch p0, :pswitch_data_6

    .line 10
    goto :goto_c

    :catch_0
    move-exception p0

    :goto_c
    :pswitch_6
    sget p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v0, p0, 0x3d

    and-int/lit8 p0, p0, 0x3d

    shl-int/2addr p0, v1

    neg-int p0, p0

    neg-int p0, p0

    and-int v3, v0, p0

    or-int/2addr p0, v0

    add-int/2addr v3, p0

    rem-int/lit16 p0, v3, 0x80

    sput p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    .line 5
    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    nop

    :goto_d
    packed-switch v1, :pswitch_data_7

    .line 10
    goto :goto_e

    :pswitch_7
    return-void

    :goto_e
    :try_start_7
    array-length p0, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    goto :goto_10

    :goto_f
    throw p0

    :goto_10
    goto :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x77

    or-int/lit8 v0, v0, 0x77

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V

    sget p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 p1, p0, 0x65

    or-int/lit8 p0, p0, 0x65

    xor-int/lit8 p0, p0, -0x1

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p0, 0x5f

    goto :goto_0

    :cond_1
    const/16 p0, 0x4f

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x6f

    and-int/lit8 v0, v0, 0x6f

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

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
    sget p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    xor-int/lit8 v0, p0, 0x37

    and-int/lit8 p0, p0, 0x37

    or-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const/16 p0, 0x35

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 8

    .line 32
    nop

    .line 26
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x55

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x55

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4
    :cond_0
    const-string v0, "OutProActiveOperatorActivity"

    const-string v1, "#execFullScreenPop"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    .line 6
    const-string v3, "source_key"

    invoke-virtual {v1, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 8
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 12
    const-string v4, "source_fullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 26
    :pswitch_0
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x30

    and-int/lit8 v0, v0, 0x30

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 8
    const/16 v0, 0x3a

    goto :goto_1

    :cond_2
    const/16 v0, 0x60

    :goto_1
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x41

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 26
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x69

    or-int/lit8 v0, v0, 0x69

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 8
    const/16 v0, 0x11

    goto :goto_3

    :cond_3
    const/16 v0, 0x21

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 32
    return-void

    .line 26
    :pswitch_2
    :try_start_1
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :goto_4
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x77

    xor-int/lit8 v3, v1, -0x1

    or-int/lit8 v0, v0, 0x77

    and-int/2addr v0, v3

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    or-int v3, v0, v1

    shl-int/lit8 v2, v3, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    .line 32
    return-void

    .line 16
    :cond_4
    const-string v3, "intent_pkg"

    invoke-virtual {v1, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x53

    if-eqz v1, :cond_5

    .line 8
    const/16 v1, 0x4d

    goto :goto_5

    :cond_5
    const/16 v1, 0x53

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 23
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener()Lccsansan/p/getDownloadedList;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    .line 32
    :pswitch_3
    sget v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    or-int/lit8 v3, v1, 0x32

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, 0x32

    sub-int/2addr v3, v1

    or-int/lit8 v1, v3, -0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 18
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 19
    const-string v1, "return for mPkgName is null"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x1d

    xor-int/lit8 v3, v1, -0x1

    or-int/lit8 v0, v0, 0x1d

    and-int/2addr v0, v3

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :cond_7
    packed-switch v2, :pswitch_data_4

    goto :goto_6

    .line 32
    :pswitch_4
    return-void

    .line 8
    :goto_6
    :try_start_2
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    packed-switch v4, :pswitch_data_5

    .line 30
    iget-object v0, p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList:Ljava/lang/String;

    const-string v2, "out_fullScreenIntent"

    const-string v4, "fullScreen_button"

    invoke-static {v2, v0, v4}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;

    invoke-direct {v2, p0, v1}, Lccsancom/san/proactive/OutProActiveOperatorActivity$IncentiveDownloadUtils;-><init>(Lccsancom/san/proactive/OutProActiveOperatorActivity;Lccsansan/p/getDownloadedList;)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_c

    :pswitch_5
    sget v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    const/16 v3, 0x37

    xor-int/lit8 v4, v1, 0x37

    and-int/lit8 v7, v1, 0x37

    or-int/2addr v4, v7

    shl-int/2addr v4, v2

    and-int/lit8 v7, v1, -0x38

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, v7

    neg-int v1, v1

    xor-int v3, v4, v1

    and-int/2addr v1, v4

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9

    .line 8
    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    nop

    :goto_9
    const-string v1, "return for appItem is null"

    packed-switch v2, :pswitch_data_6

    .line 25
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 26
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 25
    :pswitch_6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 26
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    :try_start_3
    array-length v0, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 32
    :goto_b
    return-void

    :catchall_3
    move-exception v0

    throw v0

    .line 26
    :goto_c
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    add-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 32
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4d
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Z)V
    .locals 9

    .line 2
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x2c

    or-int/lit8 v0, v0, 0x2c

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    const/16 p1, 0x27

    goto :goto_0

    :cond_1
    const/16 p1, 0x36

    :goto_0
    const-string v2, ""

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v4, p1, 0x5

    xor-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    and-int v5, v4, p1

    or-int/2addr p1, v4

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    iget-object p1, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object p1, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move-object v4, p1

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x16

    sub-int/2addr p1, v0

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x20

    goto :goto_5

    :cond_3
    const/16 p1, 0x21

    :goto_5
    packed-switch p1, :pswitch_data_2

    :pswitch_2
    move-object v4, v2

    :goto_6
    if-eqz p2, :cond_4

    const/4 p1, 0x1

    goto :goto_7

    :cond_4
    const/4 p1, 0x0

    :goto_7
    packed-switch p1, :pswitch_data_3

    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v1, p1, 0x3

    and-int/lit8 v5, p1, 0x3

    shl-int/2addr v5, v0

    and-int v6, v1, v5

    or-int/2addr v1, v5

    add-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6

    goto :goto_9

    :pswitch_3
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 v1, p1, 0x3c

    and-int/lit8 p1, p1, 0x3c

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    and-int/lit8 p1, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr p1, v1

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_8

    :cond_5
    const/4 p1, 0x0

    :goto_8
    packed-switch p1, :pswitch_data_4

    :pswitch_4
    const-string p1, "foreground_start_activity_fail"

    move-object v6, p1

    goto :goto_a

    :cond_6
    :goto_9
    xor-int/lit8 v1, p1, 0x4f

    and-int/lit8 v5, p1, 0x4f

    or-int/2addr v1, v5

    shl-int/2addr v1, v0

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 p1, p1, 0x4f

    and-int/2addr p1, v5

    neg-int p1, p1

    and-int v5, v1, p1

    or-int/2addr p1, v1

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    :cond_7
    move-object v6, v2

    :goto_a
    const-string v7, "OutProActiveOperatorActivity"

    move-object v2, p0

    move v5, p2

    invoke-static/range {v2 .. v7}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x23

    and-int/lit8 p0, p0, 0x23

    shl-int/2addr p0, v0

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_8

    const/16 p0, 0x62

    goto :goto_b

    :cond_8
    const/16 p0, 0x45

    :goto_b
    packed-switch p0, :pswitch_data_5

    return-void

    :pswitch_5
    const/16 p0, 0x13

    :try_start_1
    div-int/2addr p0, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x62
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 4

    .line 14
    sget v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v1, v0, 0xf

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0xf

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    and-int v3, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_1

    .line 14
    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x45

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    :pswitch_0
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x6f

    xor-int/lit8 p1, p1, 0x6f

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 3
    :cond_3
    nop

    .line 4
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    const v0, 0x186a2

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    const/16 v0, 0x79

    and-int/lit8 v1, p1, -0x7a

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v3, v0

    or-int/2addr v1, v3

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    neg-int p1, p1

    neg-int p1, p1

    or-int v0, v1, p1

    shl-int/2addr v0, v2

    xor-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :catch_0
    move-exception p1

    .line 12
    :goto_2
    invoke-direct {p0, p0}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->getDownloadingList(Lccsanandroid/app/Activity;)V

    .line 14
    invoke-direct {p0}, Lccsancom/san/proactive/OutProActiveOperatorActivity;->unifiedDownload()V

    sget p1, Lccsancom/san/proactive/OutProActiveOperatorActivity;->removeDownloadListener:I

    or-int/lit8 v0, p1, 0x7a

    shl-int/2addr v0, v2

    xor-int/lit8 p1, p1, 0x7a

    sub-int/2addr v0, p1

    and-int/lit8 p1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/OutProActiveOperatorActivity;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :cond_4
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x1e

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
