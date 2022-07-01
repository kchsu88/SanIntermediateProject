.class Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

.field final synthetic getDownloadingList:I

.field final synthetic unifiedDownload:Lccsansan/i/addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:I

    iput-object p3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/i/addDownloadListener;

    iput-object p4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 8

    .line 5
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v0, 0x76

    or-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/i/addDownloadListener;

    if-eqz v1, :cond_1

    .line 5
    const/16 v2, 0x4f

    goto :goto_0

    :cond_1
    const/16 v2, 0x60

    :goto_0
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    or-int/lit8 v2, v0, 0x79

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, 0x79

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 1
    :cond_2
    nop

    .line 2
    invoke-virtual {v1, v4}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    .line 5
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    const/16 v1, 0x55

    and-int/lit8 v2, v0, -0x56

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v1

    or-int/2addr v2, v5

    and-int/2addr v0, v1

    shl-int/2addr v0, v3

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v0, 0x14

    goto :goto_1

    :cond_3
    const/16 v0, 0xd

    goto :goto_1

    .line 4
    :goto_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    if-eqz v0, :cond_4

    .line 5
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    :goto_4
    goto :goto_7

    :pswitch_1
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    const/16 v5, 0x77

    or-int/lit8 v6, v1, 0x77

    shl-int/2addr v6, v3

    and-int/lit8 v7, v1, -0x78

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v7

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->IncentiveDownloadUtils()V

    packed-switch v1, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    throw v0

    :goto_6
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x21

    xor-int/lit8 v5, v1, -0x1

    or-int/lit8 v0, v0, 0x21

    and-int/2addr v0, v5

    shl-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :goto_7
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6a

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/4 v3, 0x0

    :cond_7
    packed-switch v3, :pswitch_data_3

    return-void

    :pswitch_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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

.method public addDownloadListener()V
    .locals 7

    .line 5
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0xd

    or-int/lit8 v2, v0, 0xd

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/i/addDownloadListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 5
    and-int/lit8 v4, v0, 0xd

    xor-int/lit8 v5, v4, -0x1

    or-int/lit8 v0, v0, 0xd

    and-int/2addr v0, v5

    shl-int/2addr v4, v3

    xor-int/lit8 v4, v4, -0x1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 1
    nop

    .line 2
    invoke-virtual {v1, v3}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    goto :goto_2

    .line 5
    :pswitch_0
    nop

    .line 2
    invoke-virtual {v1, v2}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    .line 5
    :goto_2
    nop

    .line 4
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    if-eqz v0, :cond_3

    .line 2
    const/16 v1, 0x13

    goto :goto_3

    :cond_3
    const/16 v1, 0xb

    :goto_3
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_2

    .line 5
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v5, v1, 0x9

    xor-int/lit8 v6, v5, -0x1

    or-int/lit8 v1, v1, 0x9

    and-int/2addr v1, v6

    shl-int/2addr v5, v3

    or-int v6, v1, v5

    shl-int/2addr v6, v3

    xor-int/2addr v1, v5

    sub-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    .line 2
    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_3

    .line 5
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->addDownloadListener()V

    goto :goto_5

    :pswitch_2
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->addDownloadListener()V

    :try_start_0
    array-length v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    throw v0

    :goto_5
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x2b

    xor-int/lit8 v0, v0, 0x2b

    or-int/2addr v0, v1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 2
    goto :goto_6

    :cond_5
    const/4 v2, 0x1

    :goto_6
    packed-switch v2, :pswitch_data_4

    .line 5
    goto :goto_7

    :pswitch_4
    return-void

    :goto_7
    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_3
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

.method public removeDownloadListener()V
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x68

    or-int/lit8 v0, v0, 0x68

    add-int/2addr v1, v0

    const/4 v0, 0x0

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:I

    and-int/lit8 v3, v1, -0x2

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    and-int/2addr v1, v2

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    invoke-static {v3}, Lccsansan/bt/getDownloadingList;->getDownloadingList(I)V

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->getDownloadingList:I

    mul-int/lit8 v1, v1, 0x0

    invoke-static {v1}, Lccsansan/bt/getDownloadingList;->getDownloadingList(I)V

    :goto_1
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v3, v1, 0x17

    or-int/lit8 v1, v1, 0x17

    and-int v4, v3, v1

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 v1, 0x42

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
