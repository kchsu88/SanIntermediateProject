.class Lccsanandroidx/work/impl/WorkManagerImpl$2;
.super Ljava/lang/Object;
.source "WorkManagerImpl.java"

# interfaces
.implements Lccsanandroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkInfoByIdLiveData(Ljava/util/UUID;)Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/arch/core/util/Function<",
        "Ljava/util/List<",
        "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;",
        "Lccsanandroidx/work/WorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 464
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkManagerImpl$2;->this$0:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lccsanandroidx/work/WorkInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;)",
            "Lccsanandroidx/work/WorkInfo;"
        }
    .end annotation

    .line 467
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    const/4 v0, 0x0

    .line 468
    .local v0, "workInfo":Lccsanandroidx/work/WorkInfo;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 469
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Lccsanandroidx/work/WorkInfo;

    move-result-object v0

    .line 471
    :cond_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 464
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/WorkManagerImpl$2;->apply(Ljava/util/List;)Lccsanandroidx/work/WorkInfo;

    move-result-object p1

    return-object p1
.end method
