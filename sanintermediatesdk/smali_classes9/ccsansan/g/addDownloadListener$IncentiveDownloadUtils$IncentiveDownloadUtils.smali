.class Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lccsansan/bn/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
