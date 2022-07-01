.class Lccsancom/san/landingpage/widget/LandingReserveButton$3;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field reserveInfo:Lccsansan/aj/getDownloadingList;

.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    invoke-static {v0, v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$200(Lccsancom/san/landingpage/widget/LandingReserveButton;Lccsansan/aj/getDownloadingList;)V

    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x1d

    xor-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public execute()V
    .locals 11

    .line 19
    nop

    .line 11
    sget v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x29

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x29

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    iget-object v3, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v3}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$100(Lccsancom/san/landingpage/widget/LandingReserveButton;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v4}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v5}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    const/16 v3, 0x1f

    const-string v4, "landingPage"

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lccsansan/aj/getDownloadingList;

    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v5}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v5

    invoke-static {v5}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Lccsanorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5, v4, v2}, Lccsansan/aj/getDownloadingList;-><init>(Lccsanorg/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    .line 19
    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    and-int/lit8 v5, v1, 0x1f

    xor-int/2addr v1, v3

    or-int/2addr v1, v5

    neg-int v1, v1

    neg-int v1, v1

    and-int v6, v5, v1

    or-int/2addr v1, v5

    add-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 11
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 19
    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList()V

    .line 19
    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x26

    xor-int/lit8 v5, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v2

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v0

    if-nez v5, :cond_3

    .line 11
    const/16 v1, 0x47

    goto :goto_1

    :cond_3
    const/16 v1, 0x39

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 19
    :goto_2
    :pswitch_0
    nop

    .line 9
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$300(Lccsancom/san/landingpage/widget/LandingReserveButton;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    const/16 v1, 0x50

    goto :goto_3

    :cond_4
    const/16 v1, 0x4a

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 19
    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    and-int/lit8 v5, v1, -0x66

    xor-int/lit8 v6, v1, -0x1

    and-int/lit8 v6, v6, 0x65

    or-int/2addr v5, v6

    and-int/lit8 v1, v1, 0x65

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v0

    const/4 v1, 0x0

    if-nez v5, :cond_5

    .line 11
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    :goto_4
    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_3

    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    iget-wide v7, v5, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gez v5, :cond_7

    goto :goto_6

    :pswitch_1
    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    iget-wide v7, v5, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v5, v7, v9

    const/4 v7, 0x0

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    const/4 v5, 0x1

    :goto_5
    packed-switch v5, :pswitch_data_4

    goto :goto_8

    .line 19
    :catchall_0
    move-exception v0

    throw v0

    .line 11
    :goto_6
    const/16 v5, 0xa

    goto :goto_7

    :cond_7
    const/16 v5, 0x46

    :goto_7
    packed-switch v5, :pswitch_data_5

    :goto_8
    goto :goto_c

    .line 13
    :pswitch_2
    iget-object v5, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    iget-object v5, v5, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 11
    const/4 v5, 0x0

    goto :goto_9

    :cond_8
    const/4 v5, 0x1

    :goto_9
    packed-switch v5, :pswitch_data_6

    sget v5, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x5a

    or-int/lit8 v7, v5, -0x1

    shl-int/2addr v7, v2

    xor-int/lit8 v5, v5, -0x1

    sub-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    rem-int/2addr v7, v0

    if-eqz v7, :cond_a

    goto :goto_a

    .line 13
    :pswitch_3
    nop

    .line 19
    sget v3, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    and-int/lit8 v5, v3, 0xb

    or-int/lit8 v3, v3, 0xb

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    rem-int/2addr v5, v0

    if-eqz v5, :cond_9

    :cond_9
    const/4 v6, 0x1

    goto :goto_d

    .line 13
    :cond_a
    :goto_a
    nop

    .line 19
    and-int/lit8 v7, v5, 0x13

    xor-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v7

    neg-int v5, v5

    neg-int v5, v5

    xor-int v8, v7, v5

    and-int/2addr v5, v7

    shl-int/2addr v5, v2

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x80

    sput v5, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v8, v0

    if-nez v8, :cond_b

    .line 11
    const/4 v3, 0x3

    goto :goto_b

    :cond_b
    nop

    :goto_b
    packed-switch v3, :pswitch_data_7

    .line 19
    :pswitch_4
    nop

    .line 18
    const/4 v6, 0x2

    goto :goto_d

    .line 19
    :goto_c
    sget v3, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    and-int/lit8 v5, v3, 0x35

    xor-int/lit8 v7, v3, 0x35

    or-int/2addr v7, v5

    neg-int v7, v7

    neg-int v7, v7

    and-int v8, v5, v7

    or-int/2addr v5, v7

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x80

    sput v5, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v8, v0

    if-nez v8, :cond_c

    .line 11
    :cond_c
    nop

    .line 19
    add-int/lit8 v3, v3, 0x73

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_d

    .line 18
    :cond_d
    :goto_d
    iget-object v3, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->reserveInfo:Lccsansan/aj/getDownloadingList;

    invoke-static {v3, v4, v6}, Lccsansan/aj/addDownloadListener;->addDownloadListener(Lccsansan/aj/getDownloadingList;Ljava/lang/String;I)V

    .line 19
    iget-object v3, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v3, v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$302(Lccsancom/san/landingpage/widget/LandingReserveButton;Z)Z

    .line 11
    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    and-int/lit8 v3, v1, 0x57

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v1, v1, 0x57

    and-int/2addr v1, v4

    shl-int/2addr v3, v2

    xor-int/lit8 v3, v3, -0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 19
    :cond_e
    nop

    :pswitch_5
    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->addDownloadListener:I

    const/16 v3, 0x53

    and-int/lit8 v4, v1, -0x54

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    and-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int v3, v4, v1

    and-int/2addr v1, v4

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$3;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v0

    return-void

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_5
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
    .packed-switch 0x46
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch
.end method
