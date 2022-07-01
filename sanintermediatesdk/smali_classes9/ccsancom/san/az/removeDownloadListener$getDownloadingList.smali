.class final Lccsancom/san/az/removeDownloadListener$getDownloadingList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/az/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x57

    or-int/lit8 v0, v0, 0x57

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const-string v2, "san_content_file_not_exist"

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method
