.class final Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(JLccsansan/p/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x21

    xor-int/lit8 v0, v0, 0x21

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v2}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    const/16 v2, 0x28

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 9
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 4
    const/16 v2, 0x16

    goto :goto_1

    :cond_2
    const/16 v2, 0x54

    :goto_1
    packed-switch v2, :pswitch_data_1

    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :pswitch_0
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    const/16 v2, 0x22

    goto :goto_2

    :cond_3
    const/16 v2, 0x1b

    :goto_2
    packed-switch v2, :pswitch_data_2

    goto :goto_8

    .line 9
    :catchall_0
    move-exception v0

    throw v0

    .line 4
    :goto_3
    const/16 v2, 0xd

    goto :goto_4

    :cond_4
    const/16 v2, 0x47

    :goto_4
    packed-switch v2, :pswitch_data_3

    goto :goto_8

    .line 9
    :pswitch_1
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    xor-int/lit8 v5, v2, 0x67

    and-int/lit8 v2, v2, 0x67

    shl-int/2addr v2, v1

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 4
    :cond_5
    const-string v2, "hasObb"

    invoke-virtual {v0, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x2c

    goto :goto_5

    :cond_6
    const/16 v0, 0x50

    :goto_5
    packed-switch v0, :pswitch_data_4

    goto :goto_8

    .line 9
    :pswitch_2
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x38

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 4
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    :goto_6
    packed-switch v0, :pswitch_data_5

    goto :goto_7

    .line 9
    :pswitch_3
    nop

    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    .line 7
    :goto_8
    :pswitch_4
    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-virtual {v2}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4
    const/16 v0, 0x33

    goto :goto_a

    :cond_8
    const/16 v0, 0x4d

    :goto_a
    packed-switch v0, :pswitch_data_6

    .line 9
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x20

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    .line 4
    const/16 v0, 0x20

    goto :goto_b

    :cond_9
    const/16 v0, 0x31

    :goto_b
    const-string v1, "#delayShowProActiveDialog"

    const-string v2, "OpenAppHelperEx"

    packed-switch v0, :pswitch_data_7

    .line 7
    nop

    .line 8
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v1}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    goto :goto_c

    :pswitch_5
    nop

    .line 8
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->getDownloadingList:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v1}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    throw v0

    :goto_c
    :pswitch_6
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x6d

    xor-int/lit8 v0, v0, 0x6d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 4
    const/16 v0, 0x2d

    goto :goto_d

    :cond_a
    const/16 v0, 0x5f

    :goto_d
    packed-switch v0, :pswitch_data_8

    .line 9
    goto :goto_e

    :pswitch_7
    return-void

    :goto_e
    const/16 v0, 0x36

    :try_start_2
    div-int/2addr v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4d
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x20
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5f
        :pswitch_7
    .end packed-switch
.end method
