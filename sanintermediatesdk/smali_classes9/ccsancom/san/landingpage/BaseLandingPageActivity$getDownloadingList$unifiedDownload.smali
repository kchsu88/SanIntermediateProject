.class Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 2
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x60

    or-int/lit8 v0, v0, 0x60

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    const/16 v1, 0x33

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$000(Lccsancom/san/landingpage/BaseLandingPageActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$000(Lccsancom/san/landingpage/BaseLandingPageActivity;)Z

    move-result v1

    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_7

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 2
    :pswitch_1
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v4, v1, 0x4d

    or-int/lit8 v1, v1, 0x4d

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 1
    :cond_3
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$200(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_3

    .line 2
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 1
    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_4

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$300(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    goto :goto_6

    :pswitch_2
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$300(Lccsancom/san/landingpage/BaseLandingPageActivity;)V

    goto :goto_7

    :goto_6
    const/4 v1, 0x1

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_7
    :pswitch_3
    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v4, v1, 0x6d

    xor-int/lit8 v1, v1, 0x6d

    or-int/2addr v1, v4

    neg-int v1, v1

    neg-int v1, v1

    or-int v5, v4, v1

    shl-int/2addr v5, v0

    xor-int/2addr v1, v4

    sub-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 1
    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_5

    .line 2
    goto :goto_9

    :pswitch_4
    return-void

    :goto_9
    :try_start_2
    array-length v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :catchall_2
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public execute()V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x27

    xor-int/lit8 v0, v0, 0x27

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->getDownloadingList:Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$002(Lccsancom/san/landingpage/BaseLandingPageActivity;Z)Z

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x79

    or-int/lit8 v0, v0, 0x79

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingList$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
