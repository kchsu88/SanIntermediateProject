.class Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errorHappened:Z

.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 143
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->errorHappened:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 153
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->errorHappened:Z

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->errorHappened:Z

    .line 156
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 158
    const-class v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 160
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$100(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    .line 163
    return-void
.end method

.method public onSaved()V
    .locals 0

    .line 149
    return-void
.end method
