.class public final Lccsansan/aq/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsansan/aq/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private deleteDownItem:Z

.field private deleteDownList:Z

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:Z

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:Ljava/lang/String;

.field private getDownloadingList:I

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private getPackageNameByRecord:Z

.field private pause:I

.field private removeDownloadListener:Z

.field private resume:Z

.field private trackReportShow:I

.field private unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/aq/addDownloadListener$getDownloadingList;

    invoke-direct {v0}, Lccsansan/aq/addDownloadListener$getDownloadingList;-><init>()V

    sput-object v0, Lccsansan/aq/addDownloadListener;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lccsansan/aq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadingList:I

    .line 6
    const/4 v1, 0x1

    iput v1, p0, Lccsansan/aq/addDownloadListener;->unifiedDownload:I

    .line 7
    const/4 v1, -0x1

    iput v1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    .line 8
    iput v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    .line 14
    const/high16 v1, -0x80000000

    iput v1, p0, Lccsansan/aq/addDownloadListener;->pause:I

    .line 17
    iput v0, p0, Lccsansan/aq/addDownloadListener;->trackReportShow:I

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 1
    iput p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    return p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->deleteDownItem:Z

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/aq/addDownloadListener;->pause:I

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic addDownloadListener(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedCount:Z

    return p1
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->getPackageNameByRecord:Z

    return p1
.end method

.method static synthetic getDownloadedList(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/aq/addDownloadListener;->trackReportShow:I

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/aq/addDownloadListener;->unifiedDownload:I

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic getDownloadingList(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->deleteDownList:Z

    return p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadingList:I

    return p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->removeDownloadListener:Z

    return p1
.end method

.method static synthetic unifiedDownload(Lccsansan/aq/addDownloadListener;I)I
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    return p1
.end method

.method static synthetic unifiedDownload(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic unifiedDownload(Lccsansan/aq/addDownloadListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/aq/addDownloadListener;->resume:Z

    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 4
    iget v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    return v0
.end method

.method public addDownloadListener(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 5
    iput p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    :cond_0
    return-void
.end method

.method public deleteDownItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/addDownloadListener;->deleteDownList:Z

    return v0
.end method

.method public deleteDownList()I
    .locals 1

    .line 4
    iget v0, p0, Lccsansan/aq/addDownloadListener;->trackReportShow:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedCount()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lccsansan/aq/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadedCount:Z

    return v0
.end method

.method public getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingCount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/addDownloadListener;->getPackageNameByRecord:Z

    return v0
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/addDownloadListener;->removeDownloadListener:Z

    return v0
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lccsansan/aq/addDownloadListener;->resume:Z

    return v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/aq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 4
    iput p1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityConfig{portal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/aq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isRemote="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsansan/aq/addDownloadListener;->removeDownloadListener:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", businessType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingList:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/aq/addDownloadListener;->unifiedDownload:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", style="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", titleText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isNewTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsansan/aq/addDownloadListener;->deleteDownItem:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isGpExit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsansan/aq/addDownloadListener;->deleteDownList:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", quitOption=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/aq/addDownloadListener;->pause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAddCenterProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/addDownloadListener;->getDownloadedCount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableNavigator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/addDownloadListener;->resume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 4
    iget v0, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->removeDownloadListener:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingList:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lccsansan/aq/addDownloadListener;->unifiedDownload:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadedList:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->deleteDownItem:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->deleteDownList:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lccsansan/aq/addDownloadListener;->pause:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->getDownloadedCount:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->resume:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lccsansan/aq/addDownloadListener;->trackReportShow:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Lccsansan/aq/addDownloadListener;->getPackageNameByRecord:Z

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lccsansan/aq/addDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
