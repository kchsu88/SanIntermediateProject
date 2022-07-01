.class final Lccsanandroidx/work/impl/utils/StatusRunnable$1;
.super Lccsanandroidx/work/impl/utils/StatusRunnable;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/StatusRunnable;->forStringIds(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Lccsanandroidx/work/impl/utils/StatusRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/utils/StatusRunnable<",
        "Ljava/util/List<",
        "Lccsanandroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$1;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$1;->val$ids:Ljava/util/List;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable$1;->runInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runInternal()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$1;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 76
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    nop

    .line 77
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$1;->val$ids:Ljava/util/List;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "workInfoPojos":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    invoke-interface {v2, v1}, Lccsanandroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2
.end method
