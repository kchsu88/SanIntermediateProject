.class Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errorHappened:Z

.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 168
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 178
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->errorHappened:Z

    .line 181
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 183
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 184
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$100(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    .line 186
    return-void
.end method

.method public onSaved()V
    .locals 0

    .line 174
    return-void
.end method
