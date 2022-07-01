.class Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;
.super Lccsanandroid/content/BroadcastReceiver;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    .line 39
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;, "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;"
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;->this$0:Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 42
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;, "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;"
    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;->this$0:Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->onBroadcastReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    .line 45
    :cond_0
    return-void
.end method
