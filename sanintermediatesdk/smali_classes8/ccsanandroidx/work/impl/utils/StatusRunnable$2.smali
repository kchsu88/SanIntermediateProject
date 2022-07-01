.class final Lccsanandroidx/work/impl/utils/StatusRunnable$2;
.super Lccsanandroidx/work/impl/utils/StatusRunnable;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/StatusRunnable;->forUUID(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)Lccsanandroidx/work/impl/utils/StatusRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/utils/StatusRunnable<",
        "Lccsanandroidx/work/WorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()Lccsanandroidx/work/WorkInfo;
    .locals 3

    .line 99
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 100
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    nop

    .line 101
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoForId(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-result-object v1

    .line 103
    .local v1, "workInfoPojo":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Lccsanandroidx/work/WorkInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method bridge synthetic runInternal()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable$2;->runInternal()Lccsanandroidx/work/WorkInfo;

    move-result-object v0

    return-object v0
.end method
