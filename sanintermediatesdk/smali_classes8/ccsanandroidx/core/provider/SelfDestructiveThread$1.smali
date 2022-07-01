.class Lccsanandroidx/core/provider/SelfDestructiveThread$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/provider/SelfDestructiveThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;


# direct methods
.method constructor <init>(Lccsanandroidx/core/provider/SelfDestructiveThread;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/provider/SelfDestructiveThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$1;->this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Lccsanandroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 65
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 73
    return v1

    .line 67
    :pswitch_0
    iget-object v0, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$1;->this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;

    iget-object v2, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lccsanandroidx/core/provider/SelfDestructiveThread;->onInvokeRunnable(Ljava/lang/Runnable;)V

    .line 68
    return v1

    .line 70
    :pswitch_1
    iget-object v0, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$1;->this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;

    invoke-virtual {v0}, Lccsanandroidx/core/provider/SelfDestructiveThread;->onDestruction()V

    .line 71
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
