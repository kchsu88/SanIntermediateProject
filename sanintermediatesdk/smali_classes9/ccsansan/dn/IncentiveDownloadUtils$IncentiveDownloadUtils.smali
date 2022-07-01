.class public abstract Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dn/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private addDownloadListener:J

.field private removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/List;

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:J

    .line 4
    iput-wide v0, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    return-void
.end method


# virtual methods
.method public abstract IncentiveDownloadUtils()V
.end method

.method public final IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/List;

    new-instance v1, Lccsanandroid/util/Pair;

    invoke-direct {v1, p1, p2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDownloadingList()Lccsanandroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lccsanandroid/util/Pair;

    iget-wide v1, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final unifiedDownload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/List;

    return-object v0
.end method

.method public final unifiedDownload(JJ)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:J

    .line 3
    iput-wide p3, p0, Lccsansan/dn/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:J

    return-void
.end method
