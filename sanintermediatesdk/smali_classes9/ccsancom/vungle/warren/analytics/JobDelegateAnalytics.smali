.class public Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;
.super Ljava/lang/Object;
.source "JobDelegateAnalytics.java"

# interfaces
.implements Lccsancom/vungle/warren/analytics/AdAnalytics;


# instance fields
.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/tasks/JobRunner;)V
    .locals 0
    .param p1, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 16
    return-void
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lccsancom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x1

    invoke-static {v1, v2, p1, v1}, Lccsancom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    return-object v0
.end method

.method public retryUnsent()[Ljava/lang/String;
    .locals 4

    .line 32
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v2, v3}, Lccsancom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public ri(Lccsancom/google/gson/JsonObject;)V
    .locals 5
    .param p1, "body"    # Lccsancom/google/gson/JsonObject;

    .line 27
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/JobDelegateAnalytics;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-virtual {p1}, Lccsancom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lccsancom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 28
    return-void
.end method

.method public saveVungleUrls([Ljava/lang/String;)V
    .locals 0
    .param p1, "urls"    # [Ljava/lang/String;

    .line 39
    return-void
.end method
