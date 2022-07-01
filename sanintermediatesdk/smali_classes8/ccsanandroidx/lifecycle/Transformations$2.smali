.class final Lccsanandroidx/lifecycle/Transformations$2;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Lccsanandroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/lifecycle/Transformations;->switchMap(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;)Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/lifecycle/Observer<",
        "TX;>;"
    }
.end annotation


# instance fields
.field mSource:Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

.field final synthetic val$switchMapFunction:Lccsanandroidx/arch/core/util/Function;


# direct methods
.method constructor <init>(Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lccsanandroidx/lifecycle/Transformations$2;->val$switchMapFunction:Lccsanandroidx/arch/core/util/Function;

    iput-object p2, p0, Lccsanandroidx/lifecycle/Transformations$2;->val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 141
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/Transformations$2;->val$switchMapFunction:Lccsanandroidx/arch/core/util/Function;

    invoke-interface {v0, p1}, Lccsanandroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/lifecycle/LiveData;

    .line 142
    .local v0, "newLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<TY;>;"
    iget-object v1, p0, Lccsanandroidx/lifecycle/Transformations$2;->mSource:Lccsanandroidx/lifecycle/LiveData;

    if-ne v1, v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    if-eqz v1, :cond_1

    .line 146
    iget-object v2, p0, Lccsanandroidx/lifecycle/Transformations$2;->val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v2, v1}, Lccsanandroidx/lifecycle/MediatorLiveData;->removeSource(Lccsanandroidx/lifecycle/LiveData;)V

    .line 148
    :cond_1
    iput-object v0, p0, Lccsanandroidx/lifecycle/Transformations$2;->mSource:Lccsanandroidx/lifecycle/LiveData;

    .line 149
    if-eqz v0, :cond_2

    .line 150
    iget-object v1, p0, Lccsanandroidx/lifecycle/Transformations$2;->val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

    new-instance v2, Lccsanandroidx/lifecycle/Transformations$2$1;

    invoke-direct {v2, p0}, Lccsanandroidx/lifecycle/Transformations$2$1;-><init>(Lccsanandroidx/lifecycle/Transformations$2;)V

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/lifecycle/MediatorLiveData;->addSource(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 157
    :cond_2
    return-void
.end method
