.class final Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/common/offline/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/dt/removeDownloadListener;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsancom/san/common/offline/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/san/common/offline/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    iput-object p2, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->unifiedDownload:Lccsancom/san/common/offline/getDownloadedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lccsansan/l/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$getDownloadingList;->unifiedDownload:Lccsancom/san/common/offline/getDownloadedList;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
