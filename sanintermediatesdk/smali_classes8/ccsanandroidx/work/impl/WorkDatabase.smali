.class public abstract Lccsanandroidx/work/impl/WorkDatabase;
.super Lccsanandroidx/room/RoomDatabase;
.source "WorkDatabase.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "androidx.work.workdb"

.field private static final PRUNE_SQL_FORMAT_PREFIX:Ljava/lang/String; = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

.field private static final PRUNE_SQL_FORMAT_SUFFIX:Ljava/lang/String; = " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

.field private static final PRUNE_THRESHOLD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsanandroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lccsanandroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static create(Lccsanandroid/content/Context;Ljava/util/concurrent/Executor;Z)Lccsanandroidx/work/impl/WorkDatabase;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "queryExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "useTestDatabase"    # Z

    .line 99
    const-class v0, Lccsanandroidx/work/impl/WorkDatabase;

    if-eqz p2, :cond_0

    .line 100
    invoke-static {p0, v0}, Lccsanandroidx/room/Room;->inMemoryDatabaseBuilder(Lccsanandroid/content/Context;Ljava/lang/Class;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .local v0, "builder":Lccsanandroidx/room/RoomDatabase$Builder;, "Lccsanandroidx/room/RoomDatabase$Builder<Lccsanandroidx/work/impl/WorkDatabase;>;"
    goto :goto_0

    .line 103
    .end local v0    # "builder":Lccsanandroidx/room/RoomDatabase$Builder;, "Lccsanandroidx/room/RoomDatabase$Builder<Lccsanandroidx/work/impl/WorkDatabase;>;"
    :cond_0
    const-string v1, "androidx.work.workdb"

    invoke-static {p0, v0, v1}, Lccsanandroidx/room/Room;->databaseBuilder(Lccsanandroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lccsanandroidx/room/RoomDatabase$Builder;->setQueryExecutor(Ljava/util/concurrent/Executor;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 107
    .restart local v0    # "builder":Lccsanandroidx/room/RoomDatabase$Builder;, "Lccsanandroidx/room/RoomDatabase$Builder<Lccsanandroidx/work/impl/WorkDatabase;>;"
    :goto_0
    invoke-static {}, Lccsanandroidx/work/impl/WorkDatabase;->generateCleanupCallback()Lccsanandroidx/room/RoomDatabase$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/room/RoomDatabase$Builder;->addCallback(Lccsanandroidx/room/RoomDatabase$Callback;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lccsanandroidx/room/migration/Migration;

    sget-object v4, Lccsanandroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_1_2:Lccsanandroidx/room/migration/Migration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 108
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomDatabase$Builder;->addMigrations([Lccsanandroidx/room/migration/Migration;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v3, v2, [Lccsanandroidx/room/migration/Migration;

    new-instance v4, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, p0, v6, v7}, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;-><init>(Lccsanandroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 109
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomDatabase$Builder;->addMigrations([Lccsanandroidx/room/migration/Migration;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v3, v2, [Lccsanandroidx/room/migration/Migration;

    sget-object v4, Lccsanandroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_3_4:Lccsanandroidx/room/migration/Migration;

    aput-object v4, v3, v5

    .line 111
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomDatabase$Builder;->addMigrations([Lccsanandroidx/room/migration/Migration;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v3, v2, [Lccsanandroidx/room/migration/Migration;

    sget-object v4, Lccsanandroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_4_5:Lccsanandroidx/room/migration/Migration;

    aput-object v4, v3, v5

    .line 112
    invoke-virtual {v1, v3}, Lccsanandroidx/room/RoomDatabase$Builder;->addMigrations([Lccsanandroidx/room/migration/Migration;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v2, v2, [Lccsanandroidx/room/migration/Migration;

    new-instance v3, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;

    const/4 v4, 0x5

    const/4 v6, 0x6

    invoke-direct {v3, p0, v4, v6}, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;-><init>(Lccsanandroid/content/Context;II)V

    aput-object v3, v2, v5

    .line 113
    invoke-virtual {v1, v2}, Lccsanandroidx/room/RoomDatabase$Builder;->addMigrations([Lccsanandroidx/room/migration/Migration;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lccsanandroidx/room/RoomDatabase$Builder;->build()Lccsanandroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/WorkDatabase;

    .line 107
    return-object v1
.end method

.method static generateCleanupCallback()Lccsanandroidx/room/RoomDatabase$Callback;
    .locals 1

    .line 120
    new-instance v0, Lccsanandroidx/work/impl/WorkDatabase$1;

    invoke-direct {v0}, Lccsanandroidx/work/impl/WorkDatabase$1;-><init>()V

    return-object v0
.end method

.method static getPruneDate()J
    .locals 4

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lccsanandroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static getPruneSQL()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroidx/work/impl/WorkDatabase;->getPruneDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;
.end method

.method public abstract systemIdInfoDao()Lccsanandroidx/work/impl/model/SystemIdInfoDao;
.end method

.method public abstract workNameDao()Lccsanandroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract workTagDao()Lccsanandroidx/work/impl/model/WorkTagDao;
.end method
