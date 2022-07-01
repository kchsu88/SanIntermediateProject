.class Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/reserve/service/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "You have cancelled the booked ad successfully!"

    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    sget v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:I

    or-int/lit8 v2, v0, 0x1f

    shl-int/2addr v2, v1

    xor-int/lit8 v0, v0, 0x1f

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
