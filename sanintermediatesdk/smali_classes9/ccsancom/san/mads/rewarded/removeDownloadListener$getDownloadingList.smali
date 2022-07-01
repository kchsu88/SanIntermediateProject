.class Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/rewarded/removeDownloadListener;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/rewarded/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/rewarded/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;)V

    return-void
.end method
