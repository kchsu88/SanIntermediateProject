.class Lccsansan/aq/getDownloadingList$getDownloadingList;
.super Lccsansan/an/removeDownloadListener$addDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aq/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;


# direct methods
.method constructor <init>(Lccsansan/aq/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/aq/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsansan/an/removeDownloadListener$addDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

    invoke-interface {v0, p1, p2}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
