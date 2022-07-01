.class public Lccsanandroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field public static final INITIAL_ID:I = 0x0

.field static final NEXT_ALARM_MANAGER_ID_KEY:Ljava/lang/String; = "next_alarm_manager_id"

.field static final NEXT_JOB_SCHEDULER_ID_KEY:Ljava/lang/String; = "next_job_scheduler_id"

.field static final PREFERENCE_FILE_KEY:Ljava/lang/String; = "androidx.work.util.id"


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private mLoadedPreferences:Z

.field private mSharedPrefs:Lccsanandroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mContext:Lccsanandroid/content/Context;

    .line 52
    return-void
.end method

.method private loadPreferencesIfNecessary()V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mContext:Lccsanandroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "androidx.work.util.id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Lccsanandroid/content/SharedPreferences;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    .line 102
    :cond_0
    return-void
.end method

.method private nextId(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Lccsanandroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lccsanandroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "id":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 89
    .local v1, "nextId":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lccsanandroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    .line 90
    return v0
.end method

.method private update(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 94
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method


# virtual methods
.method public nextAlarmManagerId()I
    .locals 2

    .line 74
    const-class v0, Lccsanandroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    .line 76
    const-string v1, "next_alarm_manager_id"

    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextJobSchedulerIdWithRange(II)I
    .locals 4
    .param p1, "minInclusive"    # I
    .param p2, "maxInclusive"    # I

    .line 58
    const-class v0, Lccsanandroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    .line 60
    const-string v1, "next_job_scheduler_id"

    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "id":I
    if-lt v1, p1, :cond_0

    if-le v1, p2, :cond_1

    .line 63
    :cond_0
    move v1, p1

    .line 64
    const-string v2, "next_job_scheduler_id"

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v2, v3}, Lccsanandroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    .line 66
    :cond_1
    monitor-exit v0

    return v1

    .line 67
    .end local v1    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
