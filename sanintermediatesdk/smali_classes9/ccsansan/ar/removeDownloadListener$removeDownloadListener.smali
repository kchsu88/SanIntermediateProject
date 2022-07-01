.class Lccsansan/ar/removeDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/ar/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    iput-object p2, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/ar/getDownloadingList$addDownloadListener;

    iput-object p3, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/ar/removeDownloadListener;

    iget-object v1, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/ar/getDownloadingList$addDownloadListener;

    iget-object v2, p0, Lccsansan/ar/removeDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/ar/removeDownloadListener;->addDownloadListener(Lccsansan/ar/removeDownloadListener;Lccsansan/ar/getDownloadingList$addDownloadListener;Ljava/lang/String;)Z

    return-void
.end method
