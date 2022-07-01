.class final Lccsancom/san/proaz/deleteDownItem$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 4
    sget v0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->getDownloadingList:I

    and-int/lit8 v1, v0, -0xe

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0xd

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v3, v1, v0

    shl-int/2addr v3, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v3, p0, Lccsancom/san/proaz/deleteDownItem$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1, v3, v2, v0}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
