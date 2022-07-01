.class final Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Lccsanandroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Lccsanandroid/app/job/JobInfo;

.field private final mJobScheduler:Lccsanandroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cn"    # Lccsanandroid/content/ComponentName;
    .param p3, "jobId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cn",
            "jobId"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p2}, Lccsanandroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Lccsanandroid/content/ComponentName;)V

    .line 337
    invoke-virtual {p0, p3}, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    .line 338
    new-instance v0, Lccsanandroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->mComponentName:Lccsanandroid/content/ComponentName;

    invoke-direct {v0, p3, v1}, Lccsanandroid/app/job/JobInfo$Builder;-><init>(ILccsanandroid/content/ComponentName;)V

    .line 339
    .local v0, "b":Lccsanandroid/app/job/JobInfo$Builder;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Lccsanandroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/app/job/JobInfo$Builder;->build()Lccsanandroid/app/job/JobInfo;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Lccsanandroid/app/job/JobInfo;

    .line 340
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/job/JobScheduler;

    iput-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    .line 342
    return-void
.end method


# virtual methods
.method enqueueWork(Lccsanandroid/content/Intent;)V
    .locals 3
    .param p1, "work"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "work"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Lccsanandroid/app/job/JobScheduler;

    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Lccsanandroid/app/job/JobInfo;

    new-instance v2, Lccsanandroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Lccsanandroid/app/job/JobWorkItem;-><init>(Lccsanandroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/job/JobScheduler;->enqueue(Lccsanandroid/app/job/JobInfo;Lccsanandroid/app/job/JobWorkItem;)I

    .line 348
    return-void
.end method
