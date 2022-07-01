.class final Lccsansan/bj/getDownloadingList$IncentiveDownloadUtils;
.super Lccsansan/bk/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bj/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/bj/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsansan/bk/IncentiveDownloadUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/bj/IncentiveDownloadUtils;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bj/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bj/IncentiveDownloadUtils;

    throw v0
.end method
