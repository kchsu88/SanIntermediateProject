.class Lccsansan/bk/getDownloadStatusByUrl$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bk/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bk/getDownloadStatusByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/bk/getDownloadStatusByUrl;


# direct methods
.method constructor <init>(Lccsansan/bk/getDownloadStatusByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bk/getDownloadStatusByUrl$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bk/getDownloadStatusByUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload(Lccsansan/bk/getDownloadingList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bk/getDownloadStatusByUrl;

    invoke-virtual {v0, p1}, Lccsansan/bk/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    return-void
.end method
