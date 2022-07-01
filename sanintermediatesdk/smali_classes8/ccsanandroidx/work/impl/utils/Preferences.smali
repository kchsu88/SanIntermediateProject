.class public Lccsanandroidx/work/impl/utils/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
    }
.end annotation


# static fields
.field private static final KEY_LAST_CANCEL_ALL_TIME_MS:Ljava/lang/String; = "last_cancel_all_time_ms"

.field private static final KEY_RESCHEDULE_NEEDED:Ljava/lang/String; = "reschedule_needed"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "androidx.work.util.preferences"


# instance fields
.field private mContext:Lccsanandroid/content/Context;

.field private mSharedPreferences:Lccsanandroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mContext:Lccsanandroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Lccsanandroid/content/SharedPreferences;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    .line 53
    return-void
.end method

.method private getSharedPreferences()Lccsanandroid/content/SharedPreferences;
    .locals 4

    .line 96
    const-class v0, Lccsanandroidx/work/impl/utils/Preferences;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mContext:Lccsanandroid/content/Context;

    const-string v2, "androidx.work.util.preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    .line 102
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/Preferences;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLastCancelAllTimeMillis()J
    .locals 4

    .line 59
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/Preferences;->getSharedPreferences()Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_cancel_all_time_ms"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lccsanandroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCancelAllTimeMillisLiveData()Lccsanandroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;

    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/Preferences;->getSharedPreferences()Lccsanandroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;-><init>(Lccsanandroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public needsReschedule()Z
    .locals 3

    .line 85
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/Preferences;->getSharedPreferences()Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reschedule_needed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lccsanandroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLastCancelAllTimeMillis(J)V
    .locals 2
    .param p1, "timeMillis"    # J

    .line 76
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/Preferences;->getSharedPreferences()Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_cancel_all_time_ms"

    invoke-interface {v0, v1, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public setNeedsReschedule(Z)V
    .locals 2
    .param p1, "needsReschedule"    # Z

    .line 92
    invoke-direct {p0}, Lccsanandroidx/work/impl/utils/Preferences;->getSharedPreferences()Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reschedule_needed"

    invoke-interface {v0, v1, p1}, Lccsanandroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    return-void
.end method
