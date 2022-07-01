.class Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;
.super Lccsanandroid/support/v4/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Lccsanandroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Lccsanandroid/support/v4/os/ResultReceiver;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Lccsanandroid/support/v4/os/ResultReceiver;->mHandler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Lccsanandroid/support/v4/os/ResultReceiver;ILccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/os/ResultReceiver;->onReceiveResult(ILccsanandroid/os/Bundle;)V

    .line 75
    :goto_0
    return-void
.end method
