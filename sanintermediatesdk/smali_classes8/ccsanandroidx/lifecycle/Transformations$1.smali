.class final Lccsanandroidx/lifecycle/Transformations$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Lccsanandroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/lifecycle/Transformations;->map(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;)Lccsanandroidx/lifecycle/LiveData;
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
.field final synthetic val$mapFunction:Lccsanandroidx/arch/core/util/Function;

.field final synthetic val$result:Lccsanandroidx/lifecycle/MediatorLiveData;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/MediatorLiveData;Lccsanandroidx/arch/core/util/Function;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lccsanandroidx/lifecycle/Transformations$1;->val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lccsanandroidx/lifecycle/Transformations$1;->val$mapFunction:Lccsanandroidx/arch/core/util/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 75
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/Transformations$1;->val$result:Lccsanandroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lccsanandroidx/lifecycle/Transformations$1;->val$mapFunction:Lccsanandroidx/arch/core/util/Function;

    invoke-interface {v1, p1}, Lccsanandroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
