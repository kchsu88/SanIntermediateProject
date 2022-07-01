.class public Lccsansan/f/getDownloadStatusByUrl;
.super Lccsansan/f/IncentiveDownloadUtils;
.source ""


# static fields
.field private static deleteDownList:I

.field private static getDownloadedCount:I


# instance fields
.field protected addDownloadListener:Lccsansan/da/removeDownloadListener;

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/f/IncentiveDownloadUtils;-><init>(Lccsancom/san/xz/base/XzRecord;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/f/getDownloadStatusByUrl;-><init>(Lccsancom/san/xz/base/XzRecord;)V

    .line 4
    iput-object p2, p0, Lccsansan/f/getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadedList()Lccsancom/san/xz/base/XzRecord;
    .locals 4

    .line 1
    sget v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/xz/base/XzRecord;

    sget v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    and-int/lit8 v2, v1, 0x11

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 v1, v1, 0x11

    and-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x1

    and-int v3, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/16 v1, 0x19

    goto :goto_0

    :cond_1
    const/16 v1, 0x57

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public pause()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x6d

    and-int/lit8 v0, v0, 0x6d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/f/getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    and-int/lit8 v3, v0, 0x2f

    or-int/lit8 v0, v0, 0x2f

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Lccsansan/da/removeDownloadListener;
    .locals 9

    .line 5
    nop

    .line 3
    sget v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/da/removeDownloadListener;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/da/removeDownloadListener;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 5
    :pswitch_1
    sget v0, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    and-int/lit8 v3, v0, 0x5

    xor-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 1
    goto :goto_5

    :cond_3
    const/4 v1, 0x1

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 2
    :pswitch_2
    invoke-virtual {p0}, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->isUseDSV()Z

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lccsansan/ad/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/f/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 5
    sget v0, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x1d

    and-int/lit8 v0, v0, 0x1d

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    :cond_4
    :goto_6
    iget-object v0, p0, Lccsansan/f/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 3
    sget v1, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    xor-int/lit8 v3, v1, 0x4b

    and-int/lit8 v1, v1, 0x4b

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    .line 5
    return-object v0

    .line 3
    :catchall_0
    move-exception v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 3
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lccsansan/f/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/f/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/da/removeDownloadListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    or-int/lit8 v5, v4, 0x76

    shl-int/2addr v5, v3

    xor-int/lit8 v4, v4, 0x76

    sub-int/2addr v5, v4

    xor-int/lit8 v4, v5, -0x1

    and-int/lit8 v5, v5, -0x1

    shl-int/2addr v5, v3

    add-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 3
    sget v1, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    xor-int/lit8 v2, v1, 0x27

    and-int/lit8 v1, v1, 0x27

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :cond_1
    const-string v1, ""

    goto :goto_4

    :cond_2
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2
    :pswitch_1
    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 3
    :goto_2
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    nop

    .line 2
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/f/getDownloadStatusByUrl;->getDownloadedCount:I

    xor-int/lit8 v2, v1, 0x1b

    and-int/lit8 v4, v1, 0x1b

    or-int/2addr v2, v4

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v1, v1, 0x1b

    and-int/2addr v1, v4

    neg-int v1, v1

    or-int v4, v2, v1

    shl-int/lit8 v3, v4, 0x1

    xor-int/2addr v1, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/getDownloadStatusByUrl;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
