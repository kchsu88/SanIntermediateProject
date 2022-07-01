.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->unifiedDownload(Z)V

    :cond_0
    return-void
.end method
