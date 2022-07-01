.class public Lccsanandroidx/work/impl/utils/LiveDataUtils;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;
    .locals 3
    .param p2, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<In:",
            "Ljava/lang/Object;",
            "Out:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TIn;>;",
            "Lccsanandroidx/arch/core/util/Function<",
            "TIn;TOut;>;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TOut;>;"
        }
    .end annotation

    .line 56
    .local p0, "inputLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<TIn;>;"
    .local p1, "mappingMethod":Lccsanandroidx/arch/core/util/Function;, "Lccsanandroidx/arch/core/util/Function<TIn;TOut;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .local v0, "lock":Ljava/lang/Object;
    new-instance v1, Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Lccsanandroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 59
    .local v1, "outputLiveData":Lccsanandroidx/lifecycle/MediatorLiveData;, "Lccsanandroidx/lifecycle/MediatorLiveData<TOut;>;"
    new-instance v2, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;

    invoke-direct {v2, p2, v0, p1, v1}, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;-><init>(Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Object;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v1, p0, v2}, Lccsanandroidx/lifecycle/MediatorLiveData;->addSource(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 83
    return-object v1
.end method
