.class final Lccsansan/cx/getDownloadingList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cx/getDownloadingList;->addDownloadListener(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/os/AsyncTask;

.field final synthetic unifiedDownload:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cx/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsanandroid/os/AsyncTask;

    iput-object p2, p0, Lccsansan/cx/getDownloadingList$getDownloadingList;->unifiedDownload:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/cx/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsanandroid/os/AsyncTask;

    invoke-static {}, Lccsansan/cx/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cx/getDownloadingList$getDownloadingList;->unifiedDownload:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    return-void
.end method
