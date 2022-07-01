.class final Lccsansan/cx/unifiedDownload$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cx/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cx/unifiedDownload;


# direct methods
.method private constructor <init>(Lccsansan/cx/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cx/unifiedDownload$getDownloadingList;->addDownloadListener:Lccsansan/cx/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/cx/unifiedDownload;Lccsansan/cx/unifiedDownload$addDownloadListener;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/cx/unifiedDownload$getDownloadingList;-><init>(Lccsansan/cx/unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cx/unifiedDownload$getDownloadingList;->addDownloadListener:Lccsansan/cx/unifiedDownload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/cx/unifiedDownload;->unifiedDownload(Lccsansan/cx/unifiedDownload;Z)V

    return-void
.end method
