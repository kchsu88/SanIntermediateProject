.class Lccsansan/cv/getDownloadedList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadedList;->getDownloadingList(Lccsansan/cv/pause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cv/pause;

.field final synthetic removeDownloadListener:Lccsansan/cv/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->removeDownloadListener:Lccsansan/cv/getDownloadedList;

    iput-object p2, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1, p2, p3}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveDownloadUtils(J)V

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Z)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 3
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 4
    iget-object v0, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->removeDownloadListener:Lccsansan/cv/getDownloadedList;

    iget-object v1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {v1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v2

    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getPackageNameByRecord()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1, p2, p3}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 2
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 3
    iget-object v0, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->removeDownloadListener:Lccsansan/cv/getDownloadedList;

    iget-object v1, p0, Lccsansan/cv/getDownloadedList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    move-wide v2, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    return-void
.end method
