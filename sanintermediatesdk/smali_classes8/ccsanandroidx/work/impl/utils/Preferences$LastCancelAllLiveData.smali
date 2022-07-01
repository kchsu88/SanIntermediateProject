.class Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
.super Lccsanandroidx/lifecycle/MutableLiveData;
.source "Preferences.java"

# interfaces
.implements Lccsanandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/utils/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastCancelAllLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/lifecycle/MutableLiveData<",
        "Ljava/lang/Long;",
        ">;",
        "Lccsanandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private mLastCancelAllTimeMillis:J

.field private mSharedPreferences:Lccsanandroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lccsanandroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "sharedPreferences"    # Lccsanandroid/content/SharedPreferences;

    .line 116
    invoke-direct {p0}, Lccsanandroidx/lifecycle/MutableLiveData;-><init>()V

    .line 117
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    .line 118
    const-string v0, "last_cancel_all_time_ms"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lccsanandroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->postValue(Ljava/lang/Object;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 135
    invoke-super {p0}, Lccsanandroidx/lifecycle/MutableLiveData;->onActive()V

    .line 136
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Lccsanandroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Lccsanandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 141
    invoke-super {p0}, Lccsanandroidx/lifecycle/MutableLiveData;->onInactive()V

    .line 142
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Lccsanandroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Lccsanandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 143
    return-void
.end method

.method public onSharedPreferenceChanged(Lccsanandroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Lccsanandroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 124
    const-string v0, "last_cancel_all_time_ms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Lccsanandroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 126
    .local v0, "lastCancelAllTimeMillis":J
    iget-wide v2, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 127
    iput-wide v0, p0, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsanandroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->setValue(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "lastCancelAllTimeMillis":J
    :cond_0
    return-void
.end method
