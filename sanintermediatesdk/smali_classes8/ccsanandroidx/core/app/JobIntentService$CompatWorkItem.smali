.class final Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Lccsanandroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Lccsanandroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Lccsanandroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/JobIntentService;Lccsanandroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/app/JobIntentService;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "intent",
            "startId"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Lccsanandroid/content/Intent;

    .line 369
    iput p3, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    .line 370
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 380
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Lccsanandroidx/core/app/JobIntentService;

    iget v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/JobIntentService;->stopSelf(I)V

    .line 381
    return-void
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 1

    .line 374
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Lccsanandroid/content/Intent;

    return-object v0
.end method
