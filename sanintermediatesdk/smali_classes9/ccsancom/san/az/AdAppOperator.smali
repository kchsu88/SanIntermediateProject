.class public Lccsancom/san/az/AdAppOperator;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field private getDownloadingList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/az/AdAppOperator;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x11

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x11

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iget-object p0, p0, Lccsancom/san/az/AdAppOperator;->getDownloadingList:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, -0x2e

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x2d

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x2d

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-static {p0}, Lccsancom/san/az/AdAppOperator;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    const/16 v0, 0x35

    xor-int/lit8 v1, p0, 0x35

    and-int/lit8 v2, p0, 0x35

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p0, -0x36

    xor-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    or-int/2addr p0, v2

    neg-int p0, p0

    and-int v0, v1, p0

    or-int/2addr p0, v1

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/app/Activity;II)V
    .locals 4

    .line 15
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0xb

    and-int/lit8 v0, v0, 0xb

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    .line 5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 10
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 15
    sget v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x6

    and-int/lit8 v0, v0, 0x6

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    goto :goto_3

    .line 10
    :pswitch_0
    const/16 p2, 0x13

    if-lt v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 15
    sget p2, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 p3, p2, 0x37

    and-int/lit8 p2, p2, 0x37

    shl-int/2addr p2, v2

    add-int/2addr p3, p2

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 10
    :cond_3
    const/high16 p2, 0x4000000

    .line 14
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->addFlags(I)V

    const/high16 p2, 0x8000000

    .line 15
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->addFlags(I)V

    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    const/16 p2, 0x19

    xor-int/lit8 p3, p1, 0x19

    and-int/lit8 v0, p1, 0x19

    or-int/2addr p3, v0

    shl-int/2addr p3, v2

    and-int/lit8 v0, p1, -0x1a

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    sub-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_4

    .line 10
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    nop

    :goto_2
    packed-switch v3, :pswitch_data_2

    .line 15
    :pswitch_1
    nop

    :pswitch_2
    nop

    .line 10
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x78

    sub-int/2addr p1, v2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    .line 15
    return-void

    .line 10
    :goto_3
    const/16 v0, 0x30

    goto :goto_4

    :cond_5
    const/16 v0, 0x55

    :goto_4
    const/high16 v1, -0x80000000

    const/high16 v3, 0xc000000

    packed-switch v0, :pswitch_data_3

    .line 15
    nop

    .line 6
    invoke-virtual {p1, v3}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 7
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v3, 0xc04

    :goto_5
    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->setStatusBarColor(I)V

    .line 10
    invoke-virtual {p1, p3}, Lccsanandroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_6

    .line 5
    :pswitch_3
    nop

    .line 6
    invoke-virtual {p1, v3}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 7
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v3, 0x700

    goto :goto_5

    .line 15
    :goto_6
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x48

    and-int/lit8 p1, p1, 0x48

    shl-int/2addr p1, v2

    add-int/2addr p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p2, p2, -0x1

    shl-int/2addr p2, v2

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x55
        :pswitch_3
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/content/Intent;)V
    .locals 7

    .line 22
    const-string v0, "pkg"

    const-string v1, "loadSource"

    .line 16
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "portal"

    const-string v6, "promotion_notification"

    .line 17
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "queue_source"

    :try_start_1
    const-string v1, "isWhite"

    .line 20
    invoke-virtual {p1, v1, v2}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    .line 22
    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/16 p1, 0x34

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v1, p1, 0x57

    or-int/lit8 v5, p1, 0x57

    xor-int/lit8 v5, v5, -0x1

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_2

    .line 20
    :pswitch_0
    nop

    .line 22
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v1, p1, -0x8

    xor-int/lit8 v5, p1, -0x1

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v1, v5

    and-int/lit8 p1, p1, 0x7

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 20
    :pswitch_1
    const-string p1, "nature"

    goto :goto_4

    :cond_2
    :goto_2
    nop

    .line 22
    const/16 v1, 0x1d

    xor-int/lit8 v5, p1, 0x1d

    and-int/lit8 v6, p1, 0x1d

    or-int/2addr v5, v6

    shl-int/2addr v5, v3

    and-int/lit8 v6, p1, -0x1e

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    or-int/2addr p1, v6

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v5, p1

    sub-int/2addr v5, v3

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 20
    :pswitch_2
    const-string p1, "white_list"

    :goto_4
    :try_start_2
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "action"

    const-string v0, "1"

    .line 21
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "stats_guide_click"

    invoke-static {p1, v0, v4}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x73

    xor-int/lit8 p1, p1, 0x73

    or-int/2addr p1, v0

    neg-int p1, p1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    goto :goto_5

    :catch_0
    move-exception p1

    :cond_4
    :goto_5
    sget p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x53

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x53

    and-int/2addr p1, v1

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int v1, p1, v0

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_3

    return-void

    :pswitch_3
    const/4 p1, 0x0

    :try_start_3
    array-length p1, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 7

    .line 8
    nop

    .line 3
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x49

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v0, 0x49

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    neg-int v1, v1

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    const/16 v3, 0x48

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_2

    goto :goto_2

    .line 3
    :goto_1
    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_2

    :goto_2
    xor-int/lit8 p0, v0, 0x33

    and-int/lit8 v0, v0, 0x33

    shl-int/2addr v0, v2

    add-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    const/16 v3, 0x50

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 8
    :pswitch_1
    return-void

    .line 3
    :goto_4
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_2
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    .line 3
    const/16 v1, 0x4d

    goto :goto_5

    :cond_3
    const/16 v1, 0x57

    :goto_5
    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_2

    .line 8
    sget v1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    or-int/lit8 v6, v1, 0x48

    shl-int/2addr v6, v2

    xor-int/2addr v1, v3

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    .line 3
    const/16 v1, 0x2b

    goto :goto_6

    :cond_4
    const/16 v1, 0x1d

    :goto_6
    packed-switch v1, :pswitch_data_3

    :try_start_3
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_8

    :pswitch_2
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

    goto :goto_b

    :goto_8
    :try_start_4
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    :goto_9
    packed-switch v0, :pswitch_data_5

    .line 8
    :pswitch_3
    sget v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x35

    and-int/lit8 v3, v0, 0x35

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x35

    and-int/2addr v0, v3

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    .line 3
    :cond_7
    :try_start_5
    const-string v0, "lock_screen"

    .line 5
    invoke-virtual {p0, v0, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 8
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4a

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 3
    const/4 v0, 0x1

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    :goto_a
    packed-switch v0, :pswitch_data_6

    .line 8
    :pswitch_4
    nop

    .line 5
    :goto_b
    :pswitch_5
    const-string v0, "is_background"

    .line 8
    :try_start_6
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    sget p0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p0, 0x7b

    xor-int/lit8 p0, p0, 0x7b

    or-int/2addr p0, v0

    neg-int p0, p0

    neg-int p0, p0

    xor-int v1, v0, p0

    and-int/2addr p0, v0

    shl-int/2addr p0, v2

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 3
    const/4 v2, 0x0

    goto :goto_c

    :cond_9
    nop

    :goto_c
    packed-switch v2, :pswitch_data_7

    .line 8
    goto :goto_d

    :catchall_1
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    :goto_d
    :pswitch_6
    nop

    .line 3
    sget p0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p0, 0x59

    xor-int/lit8 p0, p0, 0x59

    or-int/2addr p0, v0

    neg-int p0, p0

    neg-int p0, p0

    and-int v1, v0, p0

    or-int/2addr p0, v0

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    .line 8
    return-void

    .line 3
    :catchall_2
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1d
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanandroid/content/Intent;)Z
    .locals 6

    .line 16
    sget v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x52

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 9
    :cond_0
    const-string v0, "source_key"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    const/16 v2, 0xf

    goto :goto_0

    :cond_1
    const/16 v2, 0x5b

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    sget v2, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v4, v2, 0x3d

    xor-int/lit8 v2, v2, 0x3d

    or-int/2addr v2, v4

    and-int v5, v4, v2

    or-int/2addr v2, v4

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    const/16 v2, 0x15

    goto :goto_1

    :cond_2
    const/16 v2, 0x23

    :goto_1
    const/4 v4, 0x0

    const-string v5, "source_pop_ntf"

    packed-switch v2, :pswitch_data_1

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 9
    :pswitch_0
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    const/16 v0, 0x58

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    packed-switch v0, :pswitch_data_2

    :pswitch_1
    goto :goto_5

    :goto_3
    :try_start_0
    array-length v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    const/16 v0, 0x2f

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_3

    goto :goto_a

    .line 9
    :goto_5
    nop

    .line 10
    const-string v0, "intent_path"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1}, Lccsancom/san/az/AdAppOperator;->getDownloadingList(Lccsanandroid/content/Intent;)V

    .line 12
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    packed-switch p1, :pswitch_data_4

    :goto_7
    goto :goto_8

    :pswitch_2
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v2, p1, 0x1

    or-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 13
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 16
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v2, p1, 0x2d

    or-int/lit8 p1, p1, 0x2d

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x1

    goto :goto_7

    :goto_8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v2, Lccsancom/san/az/AdAppOperator$addDownloadListener;

    invoke-direct {v2, p0, v0}, Lccsancom/san/az/AdAppOperator$addDownloadListener;-><init>(Lccsancom/san/az/AdAppOperator;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    and-int/lit8 v0, p1, 0x21

    or-int/lit8 p1, p1, 0x21

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/16 p1, 0x8

    goto :goto_9

    :cond_8
    const/16 p1, 0x39

    :goto_9
    packed-switch p1, :pswitch_data_5

    return v1

    :pswitch_3
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    throw p1

    :goto_a
    :pswitch_4
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    or-int/lit8 v0, p1, 0x66

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x66

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return v3

    :catchall_1
    move-exception p1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_3
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
    .locals 5

    .line 13
    nop

    .line 10
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x33

    xor-int/lit8 v0, v0, 0x33

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p0, p1, p1}, Lccsancom/san/az/AdAppOperator;->addDownloadListener(Lccsanandroid/app/Activity;II)V

    .line 4
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/san/az/AdAppOperator;->removeDownloadListener(Lccsanandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 13
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    const/16 v0, 0x4d

    and-int/lit8 v1, p1, -0x4e

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    goto/16 :goto_a

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    const-string v1, "source_key"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    const/16 v0, 0x11

    goto :goto_1

    :cond_2
    const/16 v0, 0x17

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    const-string v4, "source_ntf"

    packed-switch v0, :pswitch_data_2

    .line 6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    throw p1

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_4

    goto/16 :goto_c

    :pswitch_2
    sget v0, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x33

    and-int/lit8 v0, v0, 0x33

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    neg-int v1, v1

    or-int v4, v0, v1

    shl-int/2addr v4, v3

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 7
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_pkg"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/az/AdAppOperator;->getDownloadingList:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    const/4 p1, 0x1

    goto :goto_6

    :cond_7
    nop

    :goto_6
    packed-switch p1, :pswitch_data_5

    goto :goto_9

    .line 13
    :pswitch_3
    sget p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2a

    and-int/lit8 v0, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 10
    const/16 p1, 0x2a

    goto :goto_7

    :cond_8
    const/16 p1, 0x4b

    :goto_7
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    packed-switch p1, :pswitch_data_6

    goto :goto_8

    :pswitch_4
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    .line 13
    :catchall_1
    move-exception p1

    throw p1

    :goto_8
    nop

    :goto_9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/az/AdAppOperator$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/az/AdAppOperator$removeDownloadListener;-><init>(Lccsancom/san/az/AdAppOperator;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 10
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    or-int/lit8 v0, p1, 0x5f

    shl-int/2addr v0, v3

    xor-int/lit8 p1, p1, 0x5f

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    goto :goto_b

    .line 4
    :cond_9
    :goto_a
    nop

    .line 5
    const-string p1, "AdAppOperator"

    const-string v0, "executePop"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    or-int/lit8 v0, p1, 0x7d

    shl-int/2addr v0, v3

    and-int/lit8 v1, p1, -0x7e

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x7d

    or-int/2addr p1, v1

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/2addr v1, v3

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 13
    :cond_a
    :goto_b
    nop

    :goto_c
    :pswitch_5
    nop

    .line 10
    sget p1, Lccsancom/san/az/AdAppOperator;->addDownloadListener:I

    xor-int/lit8 v0, p1, 0x6b

    and-int/lit8 v1, p1, 0x6b

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x6b

    and-int/2addr p1, v1

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/2addr v1, v3

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    .line 13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2a
        :pswitch_4
    .end packed-switch
.end method
