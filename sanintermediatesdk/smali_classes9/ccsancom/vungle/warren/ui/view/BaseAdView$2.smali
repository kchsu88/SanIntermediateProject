.class Lccsancom/vungle/warren/ui/view/BaseAdView$2;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/BaseAdView;->getDialogDismissListener()Lccsanandroid/content/DialogInterface$OnDismissListener;
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

    .line 125
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$2;, "Lccsancom/vungle/warren/ui/view/BaseAdView$2;"
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;

    .line 128
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$2;, "Lccsancom/vungle/warren/ui/view/BaseAdView$2;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    .line 129
    return-void
.end method
