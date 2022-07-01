.class Lccsansan/f/removeDownloadListener$deleteDownItem;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v1, v1

    and-int v2, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    sget v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->unifiedDownload:I

    and-int/lit8 v2, v0, 0x67

    xor-int/lit8 v0, v0, 0x67

    or-int/2addr v0, v2

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x5c

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
