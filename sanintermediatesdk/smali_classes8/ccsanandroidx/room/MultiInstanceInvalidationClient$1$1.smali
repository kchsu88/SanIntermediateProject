.class Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/room/MultiInstanceInvalidationClient$1;->onInvalidation([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/room/MultiInstanceInvalidationClient$1;

.field final synthetic val$tables:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationClient$1;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/room/MultiInstanceInvalidationClient$1;

    .line 84
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;->this$1:Lccsanandroidx/room/MultiInstanceInvalidationClient$1;

    iput-object p2, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;->val$tables:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;->this$1:Lccsanandroidx/room/MultiInstanceInvalidationClient$1;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;->val$tables:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroidx/room/InvalidationTracker;->notifyObserversByTableNames([Ljava/lang/String;)V

    .line 88
    return-void
.end method
