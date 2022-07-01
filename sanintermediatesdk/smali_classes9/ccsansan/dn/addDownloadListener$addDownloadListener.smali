.class Lccsansan/dn/addDownloadListener$addDownloadListener;
.super Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dn/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "addDownloadListener"
.end annotation


# instance fields
.field private removeDownloadListener:Lccsanokhttp3/Request$Builder;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsansan/dn/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>()V

    .line 2
    new-instance p1, Lccsanokhttp3/Request$Builder;

    invoke-direct {p1}, Lccsanokhttp3/Request$Builder;-><init>()V

    iput-object p1, p0, Lccsansan/dn/addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsanokhttp3/Request$Builder;

    .line 7
    iput-object p2, p0, Lccsansan/dn/addDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsanokhttp3/Request$Builder;

    invoke-virtual {v0}, Lccsanokhttp3/Request$Builder;->delete()Lccsanokhttp3/Request$Builder;

    return-void
.end method

.method removeDownloadListener()Lccsanokhttp3/Request$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dn/addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsanokhttp3/Request$Builder;

    return-object v0
.end method
