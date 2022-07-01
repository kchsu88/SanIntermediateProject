.class Lccsancom/san/az/AdAppOperator$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/AdAppOperator;->removeDownloadListener(Lccsanandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

.field final synthetic addDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/az/AdAppOperator;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    iput-object p2, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 4

    .line 2
    sget p1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    or-int/lit8 v0, p1, 0x27

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x27

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 p1, 0x61

    goto :goto_0

    :cond_0
    const/16 p1, 0x47

    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-virtual {p1, v0, v0}, Lccsanandroid/app/Activity;->overridePendingTransition(II)V

    :goto_1
    sget p1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    and-int/lit8 v2, p1, 0x75

    xor-int/lit8 v3, v2, -0x1

    or-int/lit8 p1, p1, 0x75

    and-int/2addr p1, v3

    shl-int/lit8 v1, v2, 0x1

    and-int v2, p1, v1

    or-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 p1, 0xb

    goto :goto_2

    :cond_1
    const/16 p1, 0x50

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x5a

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    sget v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x71

    and-int/lit8 v0, v0, 0x71

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v1

    const/16 v3, 0xf

    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 4
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/16 v3, 0x8

    goto :goto_3

    :cond_2
    const/16 v3, 0x51

    :goto_3
    packed-switch v3, :pswitch_data_2

    :pswitch_1
    goto :goto_6

    .line 3
    :goto_4
    :pswitch_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/AdAppOperator;

    invoke-static {v4}, Lccsancom/san/az/AdAppOperator;->IncentiveDownloadUtils(Lccsancom/san/az/AdAppOperator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v3

    .line 4
    const-string v4, "promotion_notification"

    invoke-static {v1, v4, v2, v3}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    sget v1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    and-int/lit8 v3, v1, 0x55

    xor-int/lit8 v1, v1, 0x55

    or-int/2addr v1, v3

    and-int v4, v3, v1

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 1
    const/4 v0, 0x1

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 4
    :pswitch_3
    nop

    :goto_6
    sget v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x4b

    and-int/lit8 v0, v0, 0x4b

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/AdAppOperator$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
