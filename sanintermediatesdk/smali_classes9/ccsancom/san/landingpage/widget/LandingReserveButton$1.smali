.class Lccsancom/san/landingpage/widget/LandingReserveButton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/LandingReserveButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/LandingReserveButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 10
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 18
    .end local p1    # "v":Lccsanandroid/view/View;
    nop

    .line 1
    new-instance v0, Lccsansan/aj/getDownloadingList;

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-static {v1}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v2, "landingPage"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsansan/aj/getDownloadingList;-><init>(Lccsanorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1, v4}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    goto :goto_2

    .line 18
    :pswitch_0
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    and-int/lit8 v1, p1, 0x1b

    xor-int/lit8 p1, p1, 0x1b

    or-int/2addr p1, v1

    neg-int p1, p1

    neg-int p1, p1

    xor-int v4, v1, p1

    and-int/2addr p1, v1

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 15
    const/16 p1, 0x24

    goto :goto_1

    :cond_1
    const/16 p1, 0x51

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-virtual {p1}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {p1, v1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 5
    invoke-static {v0, v2, v5}, Lccsansan/aj/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;Ljava/lang/String;I)V

    .line 18
    return-void

    .line 15
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/16 v1, 0x27

    :goto_3
    const/16 v6, 0x2b

    const/4 v7, 0x0

    const/16 v8, 0x2c

    packed-switch v1, :pswitch_data_2

    sget v1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x7a

    xor-int/lit8 v9, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    shl-int/2addr v1, v3

    add-int/2addr v9, v1

    rem-int/lit16 v1, v9, 0x80

    sput v1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    rem-int/2addr v9, v5

    if-nez v9, :cond_3

    const/16 v1, 0x2c

    goto :goto_4

    :cond_3
    const/16 v1, 0x19

    :goto_4
    packed-switch v1, :pswitch_data_3

    .line 9
    invoke-virtual {v0}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    .line 15
    :pswitch_2
    invoke-virtual {v0}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v1

    :try_start_0
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_5

    :cond_4
    const/16 v1, 0x52

    :goto_5
    packed-switch v1, :pswitch_data_4

    goto :goto_8

    :catchall_0
    move-exception p1

    throw p1

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_5
    const/4 v1, 0x1

    :goto_7
    packed-switch v1, :pswitch_data_5

    goto :goto_9

    .line 10
    :goto_8
    :pswitch_3
    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->startDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V

    .line 11
    invoke-static {v0, v2, v5}, Lccsansan/aj/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;Ljava/lang/String;I)V

    .line 15
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    and-int/lit8 v0, p1, -0x2c

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    and-int/2addr p1, v6

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_9

    goto/16 :goto_10

    .line 13
    :goto_9
    :pswitch_4
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-static {p1, v1, v4, v2}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    const/4 p1, 0x1

    goto :goto_a

    :cond_6
    const/4 p1, 0x0

    :goto_a
    packed-switch p1, :pswitch_data_6

    .line 5
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    xor-int/lit8 v0, p1, 0xb

    and-int/lit8 v1, p1, 0xb

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    and-int/lit8 v1, p1, -0xc

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0xb

    or-int/2addr p1, v1

    neg-int p1, p1

    and-int v1, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v5

    if-nez v1, :cond_7

    .line 15
    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    const/4 p1, 0x1

    :goto_b
    packed-switch p1, :pswitch_data_7

    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$100(Lccsancom/san/landingpage/widget/LandingReserveButton;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v9}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v9

    invoke-virtual {v9}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v0, v1, v9}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    goto :goto_d

    :pswitch_5
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$100(Lccsancom/san/landingpage/widget/LandingReserveButton;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {v9}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$000(Lccsancom/san/landingpage/widget/LandingReserveButton;)Lccsansan/dt/removeDownloadListener;

    move-result-object v9

    invoke-virtual {v9}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v0, v1, v9}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    :goto_c
    move-object v0, p1

    goto :goto_e

    :goto_d
    const/16 v0, 0x52

    :try_start_1
    div-int/2addr v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_c

    .line 18
    :goto_e
    nop

    .line 17
    :pswitch_6
    iget-object p1, p0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->this$0:Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-static {p1, v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->access$200(Lccsancom/san/landingpage/widget/LandingReserveButton;Lccsansan/aj/getDownloadingList;)V

    .line 18
    invoke-static {v0, v2, v3}, Lccsansan/aj/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;Ljava/lang/String;I)V

    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    xor-int/lit8 v0, p1, 0x33

    and-int/lit8 v1, p1, 0x33

    or-int/2addr v0, v1

    shl-int/2addr v0, v3

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x33

    and-int/2addr p1, v1

    neg-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_8

    .line 15
    goto :goto_f

    :cond_8
    const/4 v4, 0x1

    :goto_f
    packed-switch v4, :pswitch_data_8

    .line 18
    :cond_9
    :goto_10
    :pswitch_7
    nop

    .line 15
    sget p1, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x38

    or-int/lit8 p1, p1, 0x38

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/2addr p1, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/LandingReserveButton$1;->getDownloadingList:I

    rem-int/2addr p1, v5

    if-eqz p1, :cond_a

    goto :goto_11

    :cond_a
    const/16 v6, 0x2c

    :goto_11
    packed-switch v6, :pswitch_data_9

    goto :goto_12

    .line 18
    :pswitch_8
    return-void

    .line 15
    :goto_12
    :try_start_2
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    .line 5
    :catchall_2
    move-exception p1

    goto :goto_14

    :goto_13
    throw p1

    :goto_14
    goto :goto_13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x52
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2c
        :pswitch_8
    .end packed-switch
.end method
