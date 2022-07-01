.class Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/getDownloadedRecordByUrl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/cy/getDownloadedRecordByUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/cy/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
