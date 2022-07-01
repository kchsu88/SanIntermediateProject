.class final Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(JLccsanandroid/app/NotificationManager;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:Lccsanandroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 2
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x39

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:Lccsanandroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 2
    const/16 v3, 0x61

    goto :goto_0

    :cond_1
    const/16 v3, 0x37

    :goto_0
    packed-switch v3, :pswitch_data_0

    xor-int/lit8 v3, v2, 0x2d

    and-int/lit8 v2, v2, 0x2d

    shl-int/2addr v2, v1

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_1

    const/16 v1, 0x88a

    :goto_1
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 1
    :pswitch_0
    const/16 v1, 0x1002

    .line 2
    goto :goto_1

    :goto_2
    :pswitch_1
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x7

    or-int/lit8 v0, v0, 0x7

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 2

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6a

    xor-int/lit8 v1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
