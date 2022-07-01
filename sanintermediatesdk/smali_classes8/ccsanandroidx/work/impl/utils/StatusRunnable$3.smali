.class final Lccsanandroidx/work/impl/utils/StatusRunnable$3;
.super Lccsanandroidx/work/impl/utils/StatusRunnable;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/StatusRunnable;->forTag(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lccsanandroidx/work/impl/utils/StatusRunnable;
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
.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$3;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable$3;->runInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method runInternal()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$3;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 124
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    nop

    .line 125
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$3;->val$tag:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "workInfoPojos":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    invoke-interface {v2, v1}, Lccsanandroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2
.end method
