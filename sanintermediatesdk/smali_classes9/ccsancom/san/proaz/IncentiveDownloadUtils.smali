.class public Lccsancom/san/proaz/IncentiveDownloadUtils;
.super Lccsancom/san/proaz/getDownloadingList;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:Lccsancom/san/proaz/IncentiveDownloadUtils;

.field private static getDownloadStatusByUrl:I


# instance fields
.field private getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

.field private removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/proaz/getDownloadingList;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    .line 4
    iput-object p2, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

    .line 5
    invoke-virtual {p2, p1}, Lccsancom/san/api/ProAzBuilder;->createRootView(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lccsancom/san/api/ProAzBuilder;->renderViewHolder(Lccsanandroid/view/View;)Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/proaz/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proaz/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsancom/san/proaz/IncentiveDownloadUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proaz/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/san/proaz/IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsancom/san/proaz/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V

    sput-object v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proaz/IncentiveDownloadUtils;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/proaz/IncentiveDownloadUtils;

    return-object p0
.end method


# virtual methods
.method protected IncentiveDownloadUtils()Lccsanandroid/widget/TextView;
    .locals 8

    .line 1
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x6f

    xor-int/lit8 v2, v0, 0x6f

    or-int/2addr v2, v1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x10

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    if-eqz v1, :cond_1

    const/16 v3, 0x54

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v7, 0x13

    :try_start_0
    div-int/2addr v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    const/16 v3, 0x1d

    goto :goto_3

    :cond_2
    const/16 v3, 0x20

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto :goto_6

    :goto_4
    add-int/lit8 v0, v0, 0x38

    sub-int/2addr v0, v4

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    iget-object v0, v1, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->descText:Lccsanandroid/widget/TextView;

    sget v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v1, v4

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    const/16 v1, 0x15

    goto :goto_5

    :cond_4
    const/16 v1, 0x5e

    :goto_5
    packed-switch v1, :pswitch_data_3

    :pswitch_2
    goto :goto_8

    :goto_6
    :pswitch_3
    xor-int/lit8 v0, v2, 0x61

    and-int/lit8 v1, v2, 0x61

    shl-int/2addr v1, v4

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/16 v0, 0x34

    goto :goto_7

    :cond_5
    const/16 v0, 0x2c

    :goto_7
    packed-switch v0, :pswitch_data_4

    :pswitch_4
    move-object v0, v5

    :goto_8
    sget v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v2, v1, 0xf

    xor-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    and-int v3, v2, v1

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    const/16 v6, 0x14

    :cond_6
    packed-switch v6, :pswitch_data_5

    return-object v0

    :pswitch_5
    :try_start_1
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x34
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x14
        :pswitch_5
    .end packed-switch
.end method

.method protected IncentiveDownloadUtils(I)Ljava/lang/String;
    .locals 7

    .line 11
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x1f

    or-int/lit8 v2, v0, 0x1f

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    const/16 v6, 0x45

    packed-switch v5, :pswitch_data_0

    xor-int/lit8 v0, v2, 0x69

    and-int/lit8 v2, v2, 0x69

    shl-int/2addr v2, v4

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_2

    :pswitch_0
    xor-int/lit8 v1, v0, 0x7e

    and-int/lit8 v0, v0, 0x7e

    shl-int/2addr v0, v4

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    shl-int/2addr v0, v4

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lccsancom/san/api/ProAzBuilder;->getCtaTextId()I

    move-result v0

    sget v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v2, v1, 0x73

    or-int/lit8 v1, v1, 0x73

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    const/16 v1, 0x27

    goto :goto_3

    :cond_4
    const/16 v1, 0x45

    :goto_3
    packed-switch v1, :pswitch_data_2

    :goto_4
    :pswitch_2
    if-ne p1, v0, :cond_5

    const/16 p1, 0xc

    goto :goto_5

    :cond_5
    const/16 p1, 0x26

    :goto_5
    packed-switch p1, :pswitch_data_3

    goto :goto_8

    :pswitch_3
    sget p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, -0x46

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    and-int/2addr p1, v6

    shl-int/2addr p1, v4

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    packed-switch v3, :pswitch_data_4

    :goto_6
    goto :goto_7

    :pswitch_4
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    throw p1

    :goto_7
    const-string p1, "button"

    goto :goto_a

    :goto_8
    sget p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v0, p1, 0x1a

    and-int/lit8 p1, p1, 0x1a

    shl-int/2addr p1, v4

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/2addr p1, v4

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    const/16 p1, 0x24

    goto :goto_9

    :cond_7
    const/16 p1, 0x5f

    :goto_9
    packed-switch p1, :pswitch_data_5

    :pswitch_5
    const-string p1, "non_button"

    :goto_a
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v1, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    shl-int/2addr v0, v4

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x24
        :pswitch_5
    .end packed-switch
.end method

.method protected addDownloadListener()Lccsanandroid/widget/ImageView;
    .locals 5

    .line 10
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x59

    xor-int/lit8 v2, v0, 0x59

    or-int/2addr v2, v1

    neg-int v2, v2

    neg-int v2, v2

    xor-int v3, v1, v2

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    if-eqz v1, :cond_1

    const/16 v2, 0x48

    goto :goto_0

    :cond_1
    const/16 v2, 0x17

    :goto_0
    packed-switch v2, :pswitch_data_0

    or-int/lit8 v2, v0, 0x10

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v0, v0, 0x10

    sub-int/2addr v2, v0

    and-int/lit8 v0, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x22

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, v1, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->closeImage:Lccsanandroid/widget/ImageView;

    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    or-int/lit8 v2, v0, 0x47

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v0, v0, 0x47

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    :cond_3
    :goto_2
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 v2, 0x77

    xor-int/lit8 v3, v0, 0x77

    and-int/lit8 v4, v0, 0x77

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v0, -0x78

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected getDownloadStatusByUrl()Lccsanandroid/widget/ImageView;
    .locals 6

    .line 1
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v1, v0, 0x31

    and-int/lit8 v0, v0, 0x31

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    if-eqz v1, :cond_1

    const/16 v3, 0x34

    goto :goto_0

    :cond_1
    const/16 v3, 0x3c

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    or-int/lit8 v3, v0, 0x33

    shl-int/2addr v3, v2

    xor-int/lit8 v0, v0, 0x33

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_1

    :pswitch_0
    xor-int/lit8 v1, v0, 0x7d

    and-int/lit8 v3, v0, 0x7d

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x7d

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    goto :goto_5

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    iget-object v0, v1, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->iconImage:Lccsanandroid/widget/ImageView;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :pswitch_1
    iget-object v0, v1, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->iconImage:Lccsanandroid/widget/ImageView;

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :goto_4
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4e

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_5
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x63

    xor-int/lit8 v0, v0, 0x63

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_5
    packed-switch v2, :pswitch_data_2

    return-object v4

    :pswitch_2
    const/16 v0, 0x51

    :try_start_1
    div-int/2addr v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 5

    .line 9
    sget p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 v0, 0x31

    xor-int/lit8 v1, p1, 0x31

    and-int/lit8 v2, p1, 0x31

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, p1, -0x32

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    or-int/2addr p1, v3

    neg-int p1, p1

    or-int v0, v1, p1

    shl-int/2addr v0, v2

    xor-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5f

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    if-eqz v0, :cond_1

    const/16 v4, 0x4d

    goto :goto_1

    :cond_1
    const/16 v4, 0x4b

    :goto_1
    packed-switch v4, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/16 v4, 0x38

    goto :goto_4

    :cond_2
    const/16 v4, 0x22

    :goto_4
    packed-switch v4, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    xor-int/lit8 v3, p1, 0x41

    and-int/lit8 v4, p1, 0x41

    or-int/2addr v3, v4

    shl-int/2addr v3, v2

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 p1, p1, 0x41

    and-int/2addr p1, v4

    neg-int p1, p1

    xor-int v4, v3, p1

    and-int/2addr p1, v3

    shl-int/2addr p1, v2

    add-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    :cond_3
    iget-object v3, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->layoutView:Lccsanandroid/view/View;

    sget p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x75

    and-int/lit8 v4, p1, 0x75

    or-int/2addr v0, v4

    shl-int/2addr v0, v2

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 p1, p1, 0x75

    and-int/2addr p1, v4

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 p1, 0x5f

    goto :goto_6

    :cond_4
    const/16 p1, 0x14

    goto :goto_6

    :goto_5
    and-int/lit8 v0, p1, 0x49

    or-int/lit8 p1, p1, 0x49

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :cond_5
    :goto_6
    sget p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x5f

    and-int/lit8 v4, p1, 0x5f

    or-int/2addr v0, v4

    shl-int/2addr v0, v2

    xor-int/lit8 v2, v4, -0x1

    or-int/2addr p1, v1

    and-int/2addr p1, v2

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method protected removeDownloadListener()Lccsanandroid/widget/TextView;
    .locals 8

    .line 1
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 v1, 0x19

    xor-int/lit8 v2, v0, 0x19

    and-int/lit8 v3, v0, 0x19

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x1a

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    neg-int v4, v4

    xor-int v5, v2, v4

    and-int/2addr v2, v4

    shl-int/2addr v2, v3

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v4, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    iget-object v5, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    goto :goto_2

    :pswitch_0
    iget-object v5, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    packed-switch v7, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v7, 0x23

    :try_start_0
    div-int/2addr v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_2

    const/16 v7, 0x58

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_2

    goto :goto_7

    :goto_4
    xor-int/lit8 v0, v2, 0x71

    and-int/lit8 v1, v2, 0x71

    shl-int/2addr v1, v3

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_3

    iget-object v0, v5, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->ctaText:Lccsanandroid/widget/TextView;

    goto :goto_6

    :pswitch_2
    iget-object v0, v5, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->ctaText:Lccsanandroid/widget/TextView;

    goto :goto_8

    :goto_6
    const/4 v1, 0x5

    :try_start_1
    div-int/2addr v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    throw v0

    :goto_7
    :pswitch_3
    and-int/lit8 v2, v0, -0x1a

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :cond_4
    move-object v0, v6

    :goto_8
    sget v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    xor-int v5, v2, v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v3

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    goto :goto_9

    :cond_5
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_4

    return-object v0

    :pswitch_4
    :try_start_2
    array-length v1, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected unifiedDownload()Lccsanandroid/app/Activity;
    .locals 8

    .line 4
    nop

    .line 2
    sget v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x39

    or-int/lit8 v0, v0, 0x39

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x2

    rem-int/2addr v2, v0

    const/16 v1, 0x15

    if-eqz v2, :cond_0

    .line 1
    const/16 v2, 0x28

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    if-eqz v2, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_2
    const/16 v1, 0x5f

    :goto_2
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    goto/16 :goto_e

    :pswitch_2
    move-object v1, v2

    .line 2
    :goto_3
    sget v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v6, v2, 0x23

    and-int/lit8 v7, v2, 0x23

    or-int/2addr v6, v7

    shl-int/2addr v6, v5

    and-int/lit8 v7, v2, -0x24

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x23

    or-int/2addr v2, v7

    sub-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_3

    .line 1
    :cond_3
    instance-of v6, v1, Lccsanandroid/app/Activity;

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_4

    :cond_4
    const/16 v6, 0x27

    :goto_4
    packed-switch v6, :pswitch_data_3

    and-int/lit8 v6, v2, -0x20

    xor-int/lit8 v7, v2, -0x1

    and-int/lit8 v7, v7, 0x1f

    or-int/2addr v6, v7

    and-int/lit8 v2, v2, 0x1f

    shl-int/2addr v2, v5

    neg-int v2, v2

    neg-int v2, v2

    xor-int v7, v6, v2

    and-int/2addr v2, v6

    shl-int/2addr v2, v5

    add-int/2addr v7, v2

    rem-int/lit16 v2, v7, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v7, v0

    if-eqz v7, :cond_5

    const/16 v2, 0x14

    goto :goto_5

    :cond_5
    const/16 v2, 0x24

    :goto_5
    check-cast v1, Lccsanandroid/app/Activity;

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v1

    packed-switch v2, :pswitch_data_4

    goto :goto_8

    :pswitch_3
    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x1

    :goto_6
    packed-switch v1, :pswitch_data_5

    :goto_7
    goto :goto_a

    :goto_8
    const/16 v2, 0x2d

    :try_start_1
    div-int/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_7

    const/16 v1, 0x12

    goto :goto_9

    :cond_7
    const/4 v1, 0x2

    :goto_9
    packed-switch v1, :pswitch_data_6

    goto :goto_7

    .line 4
    :goto_a
    sget v1, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v2, v1, 0x1f

    and-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v2

    shl-int/2addr v1, v5

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_8

    .line 1
    goto :goto_b

    :cond_8
    const/4 v4, 0x1

    :goto_b
    packed-switch v4, :pswitch_data_7

    .line 2
    iget-object v0, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    check-cast v0, Lccsanandroid/app/Activity;

    goto :goto_c

    :pswitch_4
    iget-object v0, p0, Lccsancom/san/proaz/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    check-cast v0, Lccsanandroid/app/Activity;

    goto :goto_d

    :goto_c
    :try_start_2
    array-length v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :goto_d
    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    .line 1
    :catchall_2
    move-exception v0

    throw v0

    .line 4
    :goto_e
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    sget v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v2, 0x35

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v2, v2, 0x35

    and-int/2addr v2, v4

    shl-int/2addr v3, v5

    or-int v4, v2, v3

    shl-int/2addr v4, v5

    xor-int/2addr v2, v3

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/proaz/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x24
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
