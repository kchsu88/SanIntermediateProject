.class Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lccsancom/vungle/warren/ui/state/OptionsState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 338
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$202(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;Z)Z

    .line 342
    return-void
.end method
