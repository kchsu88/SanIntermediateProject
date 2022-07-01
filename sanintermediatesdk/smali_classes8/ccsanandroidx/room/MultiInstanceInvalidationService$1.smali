.class Lccsanandroidx/room/MultiInstanceInvalidationService$1;
.super Lccsanandroid/os/RemoteCallbackList;
.source "MultiInstanceInvalidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/MultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/RemoteCallbackList<",
        "Lccsanandroidx/room/IMultiInstanceInvalidationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationService;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/MultiInstanceInvalidationService;

    .line 52
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationService$1;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Lccsanandroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Lccsanandroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/room/MultiInstanceInvalidationService$1;->onCallbackDied(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Lccsanandroidx/room/IMultiInstanceInvalidationCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService$1;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
