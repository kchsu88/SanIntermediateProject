.class public Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;
.super Ljava/lang/Object;
.source "SystemJobScheduler.java"

# interfaces
.implements Lccsanandroidx/work/impl/Scheduler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mIdGenerator:Lccsanandroidx/work/impl/utils/IdGenerator;

.field private final mJobScheduler:Lccsanandroid/app/job/JobScheduler;

.field private final mSystemJobInfoConverter:Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;

.field private final mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 65
    nop

    .line 67
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/job/JobScheduler;

    new-instance v1, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    invoke-direct {v1, p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;-><init>(Lccsanandroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1, p2, v0, v1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Lccsanandroid/app/job/JobScheduler;Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;Lccsanandroid/app/job/JobScheduler;Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p3, "jobScheduler"    # Lccsanandroid/app/job/JobScheduler;
    .param p4, "systemJobInfoConverter"    # Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mContext:Lccsanandroid/content/Context;

    .line 78
    iput-object p2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 79
    iput-object p3, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    .line 80
    new-instance v0, Lccsanandroidx/work/impl/utils/IdGenerator;

    invoke-direct {v0, p1}, Lccsanandroidx/work/impl/utils/IdGenerator;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mIdGenerator:Lccsanandroidx/work/impl/utils/IdGenerator;

    .line 81
    iput-object p4, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mSystemJobInfoConverter:Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    .line 82
    return-void
.end method

.method public static cancelAll(Lccsanandroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 242
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/job/JobScheduler;

    .line 243
    .local v0, "jobScheduler":Lccsanandroid/app/job/JobScheduler;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0, v0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v1

    .line 245
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/job/JobInfo;

    .line 247
    .local v3, "jobInfo":Lccsanandroid/app/job/JobInfo;
    invoke-virtual {v3}, Lccsanandroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-static {v0, v4}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Lccsanandroid/app/job/JobScheduler;I)V

    .line 248
    .end local v3    # "jobInfo":Lccsanandroid/app/job/JobInfo;
    goto :goto_0

    .line 251
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    :cond_0
    return-void
.end method

.method public static cancelInvalidJobs(Lccsanandroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 262
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/job/JobScheduler;

    .line 263
    .local v0, "jobScheduler":Lccsanandroid/app/job/JobScheduler;
    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0, v0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/job/JobInfo;

    .line 267
    .local v3, "jobInfo":Lccsanandroid/app/job/JobInfo;
    invoke-static {v3}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getWorkSpecIdFromJobInfo(Lccsanandroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 268
    invoke-virtual {v3}, Lccsanandroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-static {v0, v4}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Lccsanandroid/app/job/JobScheduler;I)V

    .line 270
    .end local v3    # "jobInfo":Lccsanandroid/app/job/JobInfo;
    :cond_0
    goto :goto_0

    .line 273
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    :cond_1
    return-void
.end method

.method private static cancelJobById(Lccsanandroid/app/job/JobScheduler;I)V
    .locals 8
    .param p0, "jobScheduler"    # Lccsanandroid/app/job/JobScheduler;
    .param p1, "id"    # I

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    .line 227
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 228
    const-string v6, "Exception while trying to cancel job (%d)"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v7

    .line 227
    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 234
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static getPendingJobIds(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "jobScheduler"    # Lccsanandroid/app/job/JobScheduler;
    .param p2, "workSpecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    if-nez v0, :cond_0

    .line 320
    const/4 v1, 0x0

    return-object v1

    .line 324
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v1, "jobIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/job/JobInfo;

    .line 327
    .local v3, "jobInfo":Lccsanandroid/app/job/JobInfo;
    invoke-static {v3}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getWorkSpecIdFromJobInfo(Lccsanandroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v3}, Lccsanandroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v3    # "jobInfo":Lccsanandroid/app/job/JobInfo;
    :cond_1
    goto :goto_0

    .line 332
    :cond_2
    return-object v1
.end method

.method private static getPendingJobs(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "jobScheduler"    # Lccsanandroid/app/job/JobScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    .line 284
    .local v0, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 289
    goto :goto_0

    .line 285
    :catchall_0
    move-exception v1

    .line 287
    .local v1, "exception":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v5, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v2, v3, v5, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    return-object v1

    .line 296
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    new-instance v2, Lccsanandroid/content/ComponentName;

    const-class v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v2, p0, v3}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v2, "jobServiceComponent":Lccsanandroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/app/job/JobInfo;

    .line 299
    .local v4, "jobInfo":Lccsanandroid/app/job/JobInfo;
    invoke-virtual {v4}, Lccsanandroid/app/job/JobInfo;->getService()Lccsanandroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v4    # "jobInfo":Lccsanandroid/app/job/JobInfo;
    :cond_1
    goto :goto_1

    .line 303
    :cond_2
    return-object v1
.end method

.method private static getWorkSpecIdFromJobInfo(Lccsanandroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "jobInfo"    # Lccsanandroid/app/job/JobInfo;

    .line 337
    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Lccsanandroid/app/job/JobInfo;->getExtras()Lccsanandroid/os/PersistableBundle;

    move-result-object v1

    .line 339
    .local v1, "extras":Lccsanandroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Lccsanandroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {v1, v0}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0

    .line 345
    :cond_0
    nop

    .line 346
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 4
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobIds(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "jobIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    .local v2, "jobId":I
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    invoke-static {v3, v2}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Lccsanandroid/app/job/JobScheduler;I)V

    .line 213
    .end local v2    # "jobId":I
    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v1

    .line 218
    invoke-interface {v1, p1}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Ljava/lang/String;)V

    .line 220
    :cond_1
    return-void
.end method

.method public varargs schedule([Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 13
    .param p1, "workSpecs"    # [Lccsanandroidx/work/impl/model/WorkSpec;

    .line 86
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 88
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 89
    .local v4, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 91
    :try_start_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v5

    iget-object v6, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v5, "currentDbWorkSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_0

    .line 93
    :try_start_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v7

    sget-object v8, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s no longer in the DB"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v6, v9}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_1
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    goto/16 :goto_4

    .line 102
    :cond_0
    :try_start_2
    iget-object v7, v5, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v8, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v7, v8, :cond_1

    .line 103
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v7

    sget-object v8, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because it is no longer enqueued"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v6, v9}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v6

    iget-object v7, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 115
    invoke-interface {v6, v7}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Lccsanandroidx/work/impl/model/SystemIdInfo;

    move-result-object v6

    .line 117
    .local v6, "info":Lccsanandroidx/work/impl/model/SystemIdInfo;
    if-eqz v6, :cond_2

    iget v7, v6, Lccsanandroidx/work/impl/model/SystemIdInfo;->systemId:I

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mIdGenerator:Lccsanandroidx/work/impl/utils/IdGenerator;

    iget-object v8, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 118
    invoke-virtual {v8}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lccsanandroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v8

    iget-object v9, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 119
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Lccsanandroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v9

    .line 117
    invoke-virtual {v7, v8, v9}, Lccsanandroidx/work/impl/utils/IdGenerator;->nextJobSchedulerIdWithRange(II)I

    move-result v7

    .line 121
    .local v7, "jobId":I
    :goto_2
    if-nez v6, :cond_3

    .line 122
    new-instance v8, Lccsanandroidx/work/impl/model/SystemIdInfo;

    iget-object v9, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Lccsanandroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v8, "newSystemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    iget-object v9, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v9

    .line 124
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v9

    .line 125
    invoke-interface {v9, v8}, Lccsanandroidx/work/impl/model/SystemIdInfoDao;->insertSystemIdInfo(Lccsanandroidx/work/impl/model/SystemIdInfo;)V

    .line 128
    .end local v8    # "newSystemIdInfo":Lccsanandroidx/work/impl/model/SystemIdInfo;
    :cond_3
    invoke-virtual {p0, v4, v7}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->scheduleInternal(Lccsanandroidx/work/impl/model/WorkSpec;I)V

    .line 135
    sget v8, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_6

    .line 138
    iget-object v8, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mContext:Lccsanandroid/content/Context;

    iget-object v9, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    iget-object v10, v4, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobIds(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 143
    .local v8, "jobIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_6

    .line 145
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 146
    .local v9, "index":I
    if-ltz v9, :cond_4

    .line 147
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 153
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "nextJobId":I
    goto :goto_3

    .line 156
    .end local v10    # "nextJobId":I
    :cond_5
    iget-object v10, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mIdGenerator:Lccsanandroidx/work/impl/utils/IdGenerator;

    iget-object v11, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 157
    invoke-virtual {v11}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Lccsanandroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v11

    iget-object v12, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 158
    invoke-virtual {v12}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Lccsanandroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v12

    .line 156
    invoke-virtual {v10, v11, v12}, Lccsanandroidx/work/impl/utils/IdGenerator;->nextJobSchedulerIdWithRange(II)I

    move-result v10

    .line 160
    .restart local v10    # "nextJobId":I
    :goto_3
    invoke-virtual {p0, v4, v10}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->scheduleInternal(Lccsanandroidx/work/impl/model/WorkSpec;I)V

    .line 163
    .end local v8    # "jobIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "index":I
    .end local v10    # "nextJobId":I
    :cond_6
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .end local v5    # "currentDbWorkSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    .end local v6    # "info":Lccsanandroidx/work/impl/model/SystemIdInfo;
    .end local v7    # "jobId":I
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 166
    nop

    .line 88
    .end local v4    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 165
    .restart local v4    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 166
    throw v1

    .line 168
    .end local v4    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_7
    return-void
.end method

.method public scheduleInternal(Lccsanandroidx/work/impl/model/WorkSpec;I)V
    .locals 10
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;
    .param p2, "jobId"    # I

    .line 177
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mSystemJobInfoConverter:Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convert(Lccsanandroidx/work/impl/model/WorkSpec;I)Lccsanandroid/app/job/JobInfo;

    move-result-object v0

    .line 178
    .local v0, "jobInfo":Lccsanandroid/app/job/JobInfo;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "Scheduling work ID %s Job ID %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    .line 178
    invoke-virtual {v1, v2, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Lccsanandroid/app/job/JobScheduler;->schedule(Lccsanandroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v1

    .line 203
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const-string v5, "Unable to schedule %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Throwable;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 205
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mContext:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    invoke-static {v2, v4}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Lccsanandroid/content/Context;Lccsanandroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/app/job/JobInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 189
    .local v4, "numWorkManagerJobs":I
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 194
    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v9

    invoke-interface {v9}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getScheduledWork()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 195
    invoke-virtual {v7}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    .line 189
    const-string v3, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    invoke-static {v5, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "message":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v7, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v3, v6}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 200
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
