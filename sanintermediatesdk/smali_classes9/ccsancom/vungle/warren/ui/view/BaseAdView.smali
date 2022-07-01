.class public abstract Lccsancom/vungle/warren/ui/view/BaseAdView;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/ui/contract/AdContract$AdView<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

.field protected final context:Lccsanandroid/content/Context;

.field protected currentDialog:Lccsanandroid/app/Dialog;

.field protected handler:Lccsanandroid/os/Handler;

.field private final orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

.field protected final view:Lccsancom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "view"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p3, "orientationDelegate"    # Lccsancom/vungle/warren/ui/OrientationDelegate;
    .param p4, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;

    .line 40
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->handler:Lccsanandroid/os/Handler;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->TAG:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 42
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->context:Lccsanandroid/content/Context;

    .line 43
    iput-object p3, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

    .line 44
    iput-object p4, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 60
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->closeDelegate:Lccsancom/vungle/warren/ui/CloseDelegate;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/CloseDelegate;->close()V

    .line 61
    return-void
.end method

.method public destroyAdView(J)V
    .locals 1
    .param p1, "webViewDestroyDelay"    # J

    .line 65
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1, p2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->release(J)V

    .line 66
    return-void
.end method

.method protected getDialogDismissListener()Lccsanandroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 125
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    new-instance v0, Lccsancom/vungle/warren/ui/view/BaseAdView$2;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/view/BaseAdView$2;-><init>(Lccsancom/vungle/warren/ui/view/BaseAdView;)V

    return-object v0
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .locals 1

    .line 55
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .locals 1

    .line 208
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->hasWebView()Z

    move-result v0

    return v0
.end method

.method public isDialogVisible()Z
    .locals 1

    .line 164
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "leftApplicationCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 75
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->context:Lccsanandroid/content/Context;

    invoke-static {p1, v0, p2}, Lccsancom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method public pauseWeb()V
    .locals 1

    .line 140
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->pauseWeb()V

    .line 141
    return-void
.end method

.method public refreshDialogIfVisible()V
    .locals 2

    .line 150
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/BaseAdView;->isDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    new-instance v1, Lccsancom/vungle/warren/ui/view/BaseAdView$3;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/BaseAdView$3;-><init>(Lccsancom/vungle/warren/ui/view/BaseAdView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Dialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 158
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->show()V

    .line 161
    :cond_0
    return-void
.end method

.method public removeWebView()V
    .locals 3

    .line 203
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->destroyWebView(J)V

    .line 204
    return-void
.end method

.method public resumeWeb()V
    .locals 1

    .line 135
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->resumeWeb()V

    .line 136
    return-void
.end method

.method public setImmersiveMode()V
    .locals 1

    .line 145
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setImmersiveMode()V

    .line 146
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 50
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->orientationDelegate:Lccsancom/vungle/warren/ui/OrientationDelegate;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/ui/OrientationDelegate;->setOrientation(I)V

    .line 51
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .line 70
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->showCloseButton(Z)V

    .line 71
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .param p1, "dialogTitle"    # Ljava/lang/String;
    .param p2, "dialogBody"    # Ljava/lang/String;
    .param p3, "dialogContinue"    # Ljava/lang/String;
    .param p4, "dialogClose"    # Ljava/lang/String;
    .param p5, "responseListener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 88
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView;, "Lccsancom/vungle/warren/ui/view/BaseAdView<TT;>;"
    new-instance v0, Lccsanandroid/app/AlertDialog$Builder;

    new-instance v1, Lccsanandroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->context:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v1, v2, v3}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    invoke-direct {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    .line 90
    .local v0, "dialogBuilder":Lccsanandroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/BaseAdView;->getDialogDismissListener()Lccsanandroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    .line 92
    .local v1, "dismissListener":Lccsanandroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Lccsancom/vungle/warren/ui/view/BaseAdView$1;

    invoke-direct {v2, p0, p5}, Lccsancom/vungle/warren/ui/view/BaseAdView$1;-><init>(Lccsancom/vungle/warren/ui/view/BaseAdView;Lccsanandroid/content/DialogInterface$OnClickListener;)V

    .line 102
    .local v2, "onClickListenerProxy":Lccsanandroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;

    invoke-direct {v3, v2, v1}, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;-><init>(Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    .local v3, "listener":Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    .line 108
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    invoke-virtual {v0, p2}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    .line 112
    :cond_1
    invoke-virtual {v0, p3, v3}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0, p4, v3}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog$Builder;->create()Lccsanandroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    .line 118
    invoke-static {v3, v4}, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->access$000(Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;Lccsanandroid/app/Dialog;)V

    .line 120
    iget-object v4, p0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    invoke-virtual {v4}, Lccsanandroid/app/Dialog;->show()V

    .line 121
    return-void
.end method
