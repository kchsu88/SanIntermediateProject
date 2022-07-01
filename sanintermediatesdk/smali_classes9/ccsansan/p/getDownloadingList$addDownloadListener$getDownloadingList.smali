.class Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadingList$addDownloadListener;->handleMessage(Lccsanandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/p/getDownloadingList$addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadingList$addDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/p/getDownloadingList$addDownloadListener;

    iput-object p2, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/p/getDownloadingList$addDownloadListener;

    iget-object v0, v0, Lccsansan/p/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/p/getDownloadingList;

    iget-object v1, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/p/getDownloadingList$addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lccsansan/p/getDownloadingList;->getDownloadingList(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
