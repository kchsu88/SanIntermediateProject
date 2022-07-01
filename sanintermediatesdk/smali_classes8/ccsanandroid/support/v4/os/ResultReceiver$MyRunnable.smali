.class Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final mResultCode:I

.field final mResultData:Lccsanandroid/os/Bundle;

.field final synthetic this$0:Lccsanandroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/os/ResultReceiver;ILccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "resultCode",
            "resultData"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p2, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->mResultCode:I

    .line 58
    iput-object p3, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->mResultData:Lccsanandroid/os/Bundle;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->this$0:Lccsanandroid/support/v4/os/ResultReceiver;

    iget v1, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->mResultCode:I

    iget-object v2, p0, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;->mResultData:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/support/v4/os/ResultReceiver;->onReceiveResult(ILccsanandroid/os/Bundle;)V

    .line 64
    return-void
.end method
