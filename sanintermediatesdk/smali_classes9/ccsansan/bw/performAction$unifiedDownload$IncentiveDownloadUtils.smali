.class Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/performAction$unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:I

.field private final addDownloadListener:I

.field private final deleteDownItem:I

.field private final getDownloadedRecordByUrl:I

.field private final getDownloadingList:[I

.field private final removeDownloadListener:I

.field private final unifiedDownload:I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:[I

    .line 3
    iput p2, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 4
    iput p3, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    .line 5
    iput p4, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:I

    .line 6
    iput p5, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    .line 7
    iput p6, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:I

    .line 8
    iput p7, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    return-void
.end method


# virtual methods
.method public addDownloadListener()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:[I

    iget v1, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    iget v2, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:I

    iget v3, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:I

    iget v4, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    iget v5, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:I

    iget v6, p0, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    invoke-static/range {v0 .. v6}, Lccsansan/bw/performAction$unifiedDownload;->addDownloadListener([IIIIIII)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
