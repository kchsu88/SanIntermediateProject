.class Lccsanandroidx/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Lccsanandroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/lifecycle/MediatorLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsanandroidx/lifecycle/Observer<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final mLiveData:Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/LiveData<",
            "TV;>;"
        }
    .end annotation
.end field

.field final mObserver:Lccsanandroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/Observer<",
            "-TV;>;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TV;>;",
            "Lccsanandroidx/lifecycle/Observer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lccsanandroidx/lifecycle/MediatorLiveData$Source;, "Lccsanandroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "liveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<TV;>;"
    .local p2, "observer":Lccsanandroidx/lifecycle/Observer;, "Lccsanandroidx/lifecycle/Observer<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 136
    iput-object p1, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    .line 137
    iput-object p2, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mObserver:Lccsanandroidx/lifecycle/Observer;

    .line 138
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsanandroidx/lifecycle/MediatorLiveData$Source;, "Lccsanandroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Lccsanandroidx/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 152
    iget-object v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mObserver:Lccsanandroidx/lifecycle/Observer;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method plug()V
    .locals 1

    .line 141
    .local p0, "this":Lccsanandroidx/lifecycle/MediatorLiveData$Source;, "Lccsanandroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/LiveData;->observeForever(Lccsanandroidx/lifecycle/Observer;)V

    .line 142
    return-void
.end method

.method unplug()V
    .locals 1

    .line 145
    .local p0, "this":Lccsanandroidx/lifecycle/MediatorLiveData$Source;, "Lccsanandroidx/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/MediatorLiveData$Source;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/LiveData;->removeObserver(Lccsanandroidx/lifecycle/Observer;)V

    .line 146
    return-void
.end method
