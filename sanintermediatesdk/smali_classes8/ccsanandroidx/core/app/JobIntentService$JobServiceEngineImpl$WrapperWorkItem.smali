.class final Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Lccsanandroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Lccsanandroid/app/job/JobWorkItem;

.field final synthetic this$0:Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;Lccsanandroid/app/job/JobWorkItem;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;
    .param p2, "jobWork"    # Lccsanandroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "jobWork"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Lccsanandroid/app/job/JobWorkItem;

    .line 261
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .line 270
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v0, v0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Lccsanandroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Lccsanandroid/app/job/JobParameters;

    iget-object v2, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Lccsanandroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Lccsanandroid/app/job/JobParameters;->completeWork(Lccsanandroid/app/job/JobWorkItem;)V

    .line 274
    :cond_0
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 1

    .line 265
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Lccsanandroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Lccsanandroid/app/job/JobWorkItem;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
