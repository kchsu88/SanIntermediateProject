.class Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showGDPR(Lccsancom/vungle/warren/model/Cookie;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

.field final synthetic val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Lccsancom/vungle/warren/model/Cookie;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 412
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Lccsanandroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 416
    const-string v0, "opted_out_by_timeout"

    .line 417
    .local v0, "consented":Ljava/lang/String;
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 418
    const-string v0, "opted_out"

    goto :goto_0

    .line 419
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 420
    const-string v0, "opted_in"

    .line 423
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;

    const-string v2, "consent_status"

    invoke-virtual {v1, v2, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;

    const-string v2, "consent_source"

    const-string v3, "vungle_modal"

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$600(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lccsancom/vungle/warren/model/Cookie;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 428
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-virtual {v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V

    .line 429
    return-void
.end method
