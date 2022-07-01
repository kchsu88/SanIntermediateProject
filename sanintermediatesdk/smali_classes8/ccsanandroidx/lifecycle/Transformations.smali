.class public Lccsanandroidx/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static map(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;)Lccsanandroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lccsanandroidx/arch/core/util/Function<",
            "TX;TY;>;)",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 71
    .local p0, "source":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<TX;>;"
    .local p1, "mapFunction":Lccsanandroidx/arch/core/util/Function;, "Lccsanandroidx/arch/core/util/Function<TX;TY;>;"
    new-instance v0, Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lccsanandroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 72
    .local v0, "result":Lccsanandroidx/lifecycle/MediatorLiveData;, "Lccsanandroidx/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Lccsanandroidx/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Lccsanandroidx/lifecycle/Transformations$1;-><init>(Lccsanandroidx/lifecycle/MediatorLiveData;Lccsanandroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Lccsanandroidx/lifecycle/MediatorLiveData;->addSource(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 78
    return-object v0
.end method

.method public static switchMap(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;)Lccsanandroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lccsanandroidx/arch/core/util/Function<",
            "TX;",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TY;>;>;)",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 135
    .local p0, "source":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<TX;>;"
    .local p1, "switchMapFunction":Lccsanandroidx/arch/core/util/Function;, "Lccsanandroidx/arch/core/util/Function<TX;Lccsanandroidx/lifecycle/LiveData<TY;>;>;"
    new-instance v0, Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Lccsanandroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 136
    .local v0, "result":Lccsanandroidx/lifecycle/MediatorLiveData;, "Lccsanandroidx/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Lccsanandroidx/lifecycle/Transformations$2;

    invoke-direct {v1, p1, v0}, Lccsanandroidx/lifecycle/Transformations$2;-><init>(Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p0, v1}, Lccsanandroidx/lifecycle/MediatorLiveData;->addSource(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 159
    return-object v0
.end method
