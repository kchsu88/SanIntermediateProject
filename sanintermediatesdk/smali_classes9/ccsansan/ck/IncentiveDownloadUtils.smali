.class public Lccsansan/ck/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public IncentiveDownloadUtils:I

.field public addDownloadListener:Lccsansan/dt/removeDownloadListener;

.field public deleteDownItem:I

.field public getDownloadStatusByUrl:I

.field public getDownloadedList:Z

.field public getDownloadingList:Ljava/lang/String;

.field public getDownloadingRecordByUrl:Ljava/lang/String;

.field public removeDownloadListener:Ljava/lang/String;

.field public unifiedDownload:I


# direct methods
.method public constructor <init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->unifiedDownload:I

    .line 3
    iput v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    .line 4
    const-string v1, "none"

    iput-object v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 6
    iput v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    .line 10
    iput-object p1, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 11
    iput-object p2, p0, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 13
    iput p4, p0, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionParam{mAdData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeepLink=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLandingPage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mActionType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mViewCenterX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mViewCenterY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSoureceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mForceGpAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadedList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
