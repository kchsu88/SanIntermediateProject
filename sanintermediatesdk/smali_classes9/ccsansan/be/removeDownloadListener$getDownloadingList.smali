.class final Lccsansan/be/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/be/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/be/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/be/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/be/unifiedDownload;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/be/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/be/unifiedDownload;

    iput-object p2, p0, Lccsansan/be/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(ILjava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-static {p1, p2, v0}, Lccsansan/be/removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Lccsansan/be/unifiedDownload;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsansan/be/unifiedDownload;

    invoke-static {v0}, Lccsansan/be/removeDownloadListener;->getDownloadingList(Lccsansan/be/unifiedDownload;)V

    .line 3
    iget-object v0, p0, Lccsansan/be/removeDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method
