.class public Lccsancom/san/cpi/xz/AdXzParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/cpi/xz/AdXzParams$Builder;
    }
.end annotation


# instance fields
.field public hasReportedTracker:Z

.field public mActionType:I

.field public mAdData:Lccsansan/dt/removeDownloadListener;

.field public mAdId:Ljava/lang/String;

.field public mAmpAppId:Ljava/lang/String;

.field public mApkSize:J

.field public mAppData:Ljava/lang/String;

.field public mAutoStart:Z

.field public mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

.field public mCpiparam:Ljava/lang/String;

.field public mCreativeId:Ljava/lang/String;

.field public mDeepLinkUrl:Ljava/lang/String;

.field public mDid:Ljava/lang/String;

.field public mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFileSize:J

.field public mGpUrl:Ljava/lang/String;

.field public mIconUrl:Ljava/lang/String;

.field public mIsBook:I

.field public mIsForceGpXz:Z

.field public mIsInnerXz:Z

.field public mMinVersionCode:I

.field public mName:Ljava/lang/String;

.field public mP2pAzEnable:I

.field public mPid:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mPlacementId:Ljava/lang/String;

.field public mPortal:Ljava/lang/String;

.field public mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

.field public mRid:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mSourceType:Ljava/lang/String;

.field public mSplitNames:Ljava/lang/String;

.field public mSubPortal:Ljava/lang/String;

.field public mTaskType:Ljava/lang/String;

.field public mTrackUrls:[Ljava/lang/String;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public mXzUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/san/cpi/xz/AdXzParams$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsInnerXz:Z

    .line 3
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsBook:I

    .line 5
    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mP2pAzEnable:I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsForceGpXz:Z

    .line 16
    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->hasReportedTracker:Z

    .line 20
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->gpUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mGpUrl:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->xzUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->trackUrls:[Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mTrackUrls:[Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    .line 26
    iget-wide v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->fileSize:J

    iput-wide v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    .line 27
    iget-wide v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->apkSize:J

    iput-wide v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mApkSize:J

    .line 28
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    .line 29
    iget v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->versionCode:I

    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    .line 30
    iget-boolean v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart:Z

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    .line 31
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->callback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    .line 32
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->resultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    .line 33
    iget v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType:I

    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    .line 34
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->splitNames:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSplitNames:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->placementId:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPlacementId:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->adId:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->pid:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mPid:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->sourceType:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    .line 40
    iget v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->minVersionCode:I

    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mMinVersionCode:I

    .line 41
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->subPortal:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mSubPortal:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->deepLinkUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mDeepLinkUrl:Ljava/lang/String;

    .line 44
    iget v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->p2pAzEnable:I

    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mP2pAzEnable:I

    .line 46
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->did:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mDid:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->cpiparam:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mCpiparam:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->rid:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mRid:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->creativeId:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mCreativeId:Ljava/lang/String;

    .line 51
    iget-boolean v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isInnerXz:Z

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsInnerXz:Z

    .line 53
    iget v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isBook:I

    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsBook:I

    .line 55
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->adData:Lccsansan/dt/removeDownloadListener;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    .line 57
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->ampAppId:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAmpAppId:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->taskType:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mTaskType:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIconUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appData:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mAppData:Ljava/lang/String;

    .line 61
    iget-boolean v0, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isForceGpXz:Z

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams;->mIsForceGpXz:Z

    .line 62
    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams$Builder;->extraInfo:Ljava/util/HashMap;

    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams;->mExtraInfo:Ljava/util/HashMap;

    return-void
.end method
