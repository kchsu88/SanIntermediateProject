.class final Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/common/offline/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/dt/removeDownloadListener;

.field final synthetic removeDownloadListener:Lccsancom/san/common/offline/getDownloadedList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/common/offline/getDownloadedList;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/common/offline/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    iput-object p3, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/common/offline/getDownloadedList;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadingRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lccsansan/l/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
