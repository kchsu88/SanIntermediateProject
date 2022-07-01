.class Lccsancom/san/mads/webview/getDownloadedRecordByUrl$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
    .locals 1

    .line 1
    const-string p1, "Mads.MraidWeb"

    const-string v0, "MRAID html load ready"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
