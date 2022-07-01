.class final Lccsancom/san/az/addDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field final synthetic getDownloadingList:Lccsansan/bh/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 9
    sget v0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x54

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    .line 2
    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/bh/IncentiveDownloadUtils;

    .line 8
    invoke-virtual {v0}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "Open"

    invoke-static/range {v1 .. v7}, Lccsansan/aa/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    .line 2
    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/bh/IncentiveDownloadUtils;

    .line 8
    invoke-virtual {v0}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "Open"

    invoke-static/range {v1 .. v7}, Lccsansan/aa/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method
