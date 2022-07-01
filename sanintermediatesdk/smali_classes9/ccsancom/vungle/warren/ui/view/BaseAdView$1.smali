.class Lccsancom/vungle/warren/ui/view/BaseAdView$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/BaseAdView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

.field final synthetic val$responseListener:Lccsanandroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/BaseAdView;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/BaseAdView;

    .line 92
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$1;, "Lccsancom/vungle/warren/ui/view/BaseAdView$1;"
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    iput-object p2, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$1;->val$responseListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 95
    .local p0, "this":Lccsancom/vungle/warren/ui/view/BaseAdView$1;, "Lccsancom/vungle/warren/ui/view/BaseAdView$1;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/BaseAdView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/vungle/warren/ui/view/BaseAdView;->currentDialog:Lccsanandroid/app/Dialog;

    .line 96
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$1;->val$responseListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/DialogInterface$OnClickListener;->onClick(Lccsanandroid/content/DialogInterface;I)V

    .line 99
    :cond_0
    return-void
.end method
