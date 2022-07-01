.class Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 357
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .locals 3
    .param p1, "isExist"    # Z

    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$200(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showWebsite(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$400(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/analytics/AdAnalytics;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$300(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/model/Advertisement;

    move-result-object v1

    const-string v2, "postroll_view"

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$502(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 370
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$000(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;I)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#playPost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v1, "Error Rendering Postroll"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$100(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    .line 376
    :goto_0
    return-void
.end method
