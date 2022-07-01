.class public final Lccsansan/cv/getDownloadedRecordByUrl;
.super Lccsansan/cv/getDownloadingList;
.source ""


# instance fields
.field private deleteDownItem:Z

.field private getDownloadStatusByUrl:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/cv/getDownloadingList;-><init>(II)V

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/cv/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Z

    .line 5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/cv/getDownloadedRecordByUrl;->deleteDownItem:Z

    return-void
.end method


# virtual methods
.method public final IncentiveDownloadUtils(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cv/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iput-boolean p1, p0, Lccsansan/cv/getDownloadedRecordByUrl;->deleteDownItem:Z

    return-void
.end method

.method public final IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/cv/getDownloadedRecordByUrl;->deleteDownItem:Z

    return v0
.end method

.method public final addDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/cv/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Z

    return v0
.end method

.method public final removeDownloadListener()I
    .locals 1

    .line 3
    iget v0, p0, Lccsansan/cv/getDownloadingList;->removeDownloadListener:I

    return v0
.end method
