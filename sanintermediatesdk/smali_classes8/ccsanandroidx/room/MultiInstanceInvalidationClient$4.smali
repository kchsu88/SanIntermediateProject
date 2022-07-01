.class Lccsanandroidx/room/MultiInstanceInvalidationClient$4;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/MultiInstanceInvalidationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/MultiInstanceInvalidationClient;

    .line 134
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$4;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$4;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$4;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Lccsanandroidx/room/InvalidationTracker;->removeObserver(Lccsanandroidx/room/InvalidationTracker$Observer;)V

    .line 138
    return-void
.end method
