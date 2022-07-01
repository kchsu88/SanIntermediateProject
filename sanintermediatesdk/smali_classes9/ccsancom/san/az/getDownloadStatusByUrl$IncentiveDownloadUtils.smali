.class final Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p4, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 13
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    const/16 v1, 0x41

    xor-int/lit8 v2, v0, 0x41

    and-int/lit8 v3, v0, 0x41

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x42

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    neg-int v1, v1

    or-int v4, v2, v1

    shl-int/2addr v4, v3

    xor-int/2addr v1, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 11
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/16 v4, 0x3e

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_d

    .line 13
    :pswitch_0
    xor-int/lit8 v1, v0, 0x43

    and-int/lit8 v5, v0, 0x43

    or-int/2addr v1, v5

    shl-int/2addr v1, v3

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 v0, v0, 0x43

    and-int/2addr v0, v5

    neg-int v0, v0

    or-int v5, v1, v0

    shl-int/2addr v5, v3

    xor-int/2addr v0, v1

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 3
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    const/16 v1, 0x3e

    goto :goto_1

    :cond_3
    const/16 v1, 0x37

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    const/16 v5, 0x13

    and-int/lit8 v6, v1, -0x14

    xor-int/lit8 v7, v1, -0x1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    and-int/2addr v1, v5

    shl-int/2addr v1, v3

    or-int v5, v6, v1

    shl-int/2addr v5, v3

    xor-int/2addr v1, v6

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 6
    :cond_4
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 13
    sget v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v5, v1, 0x5

    and-int/lit8 v6, v1, 0x5

    or-int/2addr v5, v6

    shl-int/2addr v5, v3

    xor-int/lit8 v6, v6, -0x1

    or-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v6

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 6
    :cond_6
    const-string v1, "hasObb"

    invoke-virtual {v0, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_3

    .line 13
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 v1, 0x3d

    xor-int/lit8 v5, v0, 0x3d

    and-int/lit8 v6, v0, 0x3d

    or-int/2addr v5, v6

    shl-int/2addr v5, v3

    and-int/lit8 v6, v0, -0x3e

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v6

    neg-int v0, v0

    and-int v1, v5, v0

    or-int/2addr v0, v5

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    goto :goto_4

    .line 9
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_6

    .line 6
    :cond_8
    :goto_4
    nop

    .line 13
    and-int/lit8 v1, v0, 0x30

    or-int/lit8 v0, v0, 0x30

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 11
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_4

    .line 13
    :pswitch_2
    nop

    .line 9
    const/4 v0, 0x1

    :goto_6
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x19

    if-nez v0, :cond_a

    .line 11
    const/16 v0, 0x48

    goto :goto_7

    :cond_a
    const/16 v0, 0x19

    :goto_7
    const-string v5, "OpenAppHelperEx"

    packed-switch v0, :pswitch_data_5

    .line 13
    const-string v0, "not activate list or is activate"

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_3
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    .line 11
    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    nop

    :goto_8
    const-string v0, "Auto Start"

    packed-switch v2, :pswitch_data_6

    .line 10
    :pswitch_4
    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v6, p0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    .line 11
    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    .line 11
    const/16 v1, 0x22

    goto :goto_9

    :cond_c
    nop

    :goto_9
    packed-switch v1, :pswitch_data_7

    .line 13
    goto :goto_c

    :goto_a
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x5

    and-int/lit8 v2, v0, 0x5

    or-int/2addr v1, v2

    shl-int/2addr v1, v3

    and-int/lit8 v2, v0, -0x6

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_d

    .line 11
    const/16 v0, 0x11

    goto :goto_b

    :cond_d
    const/16 v0, 0x26

    :goto_b
    packed-switch v0, :pswitch_data_8

    .line 13
    :goto_c
    :pswitch_5
    nop

    :goto_d
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x3e

    or-int/2addr v0, v4

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x48
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x19
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x26
        :pswitch_5
    .end packed-switch
.end method
