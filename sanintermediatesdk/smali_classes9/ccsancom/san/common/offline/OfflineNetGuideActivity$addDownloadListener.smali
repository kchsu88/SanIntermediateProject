.class Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/common/offline/OfflineNetGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;


# direct methods
.method constructor <init>(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p2, "OfflineNetGuideActivity"

    const-string v0, "onListenerChange() "

    invoke-static {p2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p2, "connectivity_change"

    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadingList(Lccsancom/san/common/offline/OfflineNetGuideActivity;Z)Z

    .line 4
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->getDownloadingList(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$addDownloadListener;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
