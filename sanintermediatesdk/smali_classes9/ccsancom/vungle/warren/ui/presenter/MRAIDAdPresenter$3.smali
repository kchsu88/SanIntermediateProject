.class Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 370
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iput-object p2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .locals 3
    .param p1, "isExist"    # Z

    .line 373
    if-nez p1, :cond_0

    .line 375
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 377
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 378
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$300(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    .line 379
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$300(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$400(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    .line 384
    return-void
.end method
