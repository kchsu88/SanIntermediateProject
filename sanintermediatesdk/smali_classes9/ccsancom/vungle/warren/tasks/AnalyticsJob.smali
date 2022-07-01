.class public Lccsancom/vungle/warren/tasks/AnalyticsJob;
.super Ljava/lang/Object;
.source "AnalyticsJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/tasks/AnalyticsJob$Action;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:J = 0x7d0L

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action_extra"

.field private static final EXTRA_BODY:Ljava/lang/String; = "extra_body"

.field private static final EXTRA_URLS:Ljava/lang/String; = "extra_urls"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lccsancom/vungle/warren/tasks/AnalyticsJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/analytics/AdAnalytics;)V
    .locals 0
    .param p1, "adAnalytics"    # Lccsancom/vungle/warren/analytics/AdAnalytics;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    .line 38
    return-void
.end method

.method public static makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 5
    .param p0, "action"    # I
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "urls"    # [Ljava/lang/String;
    .param p3, "networkType"    # I

    .line 23
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "action_extra"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    const-string v1, "extra_body"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "extra_urls"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    new-instance v1, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v2, Lccsancom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 31
    const-wide/16 v2, 0x7d0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p3}, Lccsancom/vungle/warren/tasks/JobInfo;->setRequiredNetworkType(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 33
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 28
    return-object v1
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 6
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 43
    const-string v0, "action_extra"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 45
    const-string v1, "extra_body"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "body":Ljava/lang/String;
    new-instance v2, Lccsancom/google/gson/Gson;

    invoke-direct {v2}, Lccsancom/google/gson/Gson;-><init>()V

    .line 47
    .local v2, "gson":Lccsancom/google/gson/Gson;
    const-class v3, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v2, v1, v3}, Lccsancom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/gson/JsonElement;

    .line 48
    .local v3, "element":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v3}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v4

    .line 49
    .local v4, "jsonObj":Lccsancom/google/gson/JsonObject;
    iget-object v5, p0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v5, v4}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ri(Lccsancom/google/gson/JsonObject;)V

    .line 50
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "gson":Lccsancom/google/gson/Gson;
    .end local v3    # "element":Lccsancom/google/gson/JsonElement;
    .end local v4    # "jsonObj":Lccsancom/google/gson/JsonObject;
    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "extra_urls"

    if-ne v0, v1, :cond_2

    .line 51
    invoke-virtual {p1, v3}, Lccsanandroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "urls":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 53
    iget-object v4, p0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v4, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "failed":[Ljava/lang/String;
    array-length v5, v4

    if-eqz v5, :cond_1

    .line 55
    invoke-virtual {p1, v3, v4}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    return v2

    .line 59
    .end local v1    # "urls":[Ljava/lang/String;
    .end local v4    # "failed":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_4

    .line 60
    iget-object v1, p0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->retryUnsent()[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "failed":[Ljava/lang/String;
    array-length v4, v1

    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {p1, v3, v1}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    return v2

    .line 61
    .end local v1    # "failed":[Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 65
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 66
    invoke-virtual {p1, v3}, Lccsanandroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "urls":[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 68
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v2, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->saveVungleUrls([Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_5
    :goto_0
    nop

    .line 72
    :cond_6
    :goto_1
    const/4 v1, 0x0

    return v1
.end method
