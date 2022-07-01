.class Lccsancom/vungle/warren/ui/view/BaseAdView$3;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/BaseAdView;->refreshDialogIfVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/BaseAdView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/BaseAdView;

    .line 152
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$3;, "Lccsancom/vungle/warren/ui/view/BaseAdView$3;"
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;

    .line 155
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$3;, "Lccsancom/vungle/warren/ui/view/BaseAdView$3;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    iget-object v0, v0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    invoke-virtual {v1}, Lccsancom/vungle/warren/ui/view/BaseAdView;->getDialogDismissListener()Lccsanandroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Dialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    return-void
.end method
