.class Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field addDownloadListener:J

.field final synthetic removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->addDownloadListener:J

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 9

    .line 6
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    or-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0xf

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    iget-wide v7, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->addDownloadListener:J

    packed-switch v1, :pswitch_data_0

    cmp-long v1, v7, v5

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    cmp-long v1, v7, v5

    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 6
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    const/16 v1, 0x4a

    goto :goto_3

    :cond_2
    const/16 v1, 0x56

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 6
    :goto_4
    add-int/lit8 v0, v0, 0x6d

    sub-int/2addr v0, v2

    or-int/lit8 v1, v0, -0x1

    shl-int/2addr v1, v2

    xor-int/2addr v0, v4

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1
    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    const-wide/16 v5, 0x3e8

    packed-switch v0, :pswitch_data_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->addDownloadListener:J

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-gez v7, :cond_4

    goto :goto_6

    .line 6
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->addDownloadListener:J

    div-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-gez v7, :cond_4

    .line 1
    :goto_6
    nop

    .line 6
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    and-int/lit8 v0, p1, 0x7

    xor-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 3
    :cond_4
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1
    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    packed-switch v0, :pswitch_data_4

    :goto_8
    goto :goto_b

    .line 6
    :pswitch_3
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x31

    and-int/lit8 v0, v0, 0x31

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 3
    :cond_6
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1
    const/16 v0, 0xe

    goto :goto_9

    :cond_7
    const/16 v0, 0x32

    :goto_9
    packed-switch v0, :pswitch_data_5

    goto :goto_8

    :pswitch_4
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x2b

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x2b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 4
    :cond_8
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v1, "landpage"

    invoke-virtual {v0, p1, v1, v2, v4}, Lccsansan/bv/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;ZI)V

    .line 1
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    and-int/lit8 v0, p1, 0x25

    or-int/lit8 p1, p1, 0x25

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v3, 0x1

    :goto_a
    packed-switch v3, :pswitch_data_6

    goto :goto_8

    .line 6
    :pswitch_5
    nop

    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->addDownloadListener:J

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x48

    sub-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xe
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
