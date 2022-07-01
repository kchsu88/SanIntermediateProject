.class Lccsancom/vungle/warren/ui/view/FullAdWidget$8;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 385
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 388
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$1000(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$1000(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v1, p1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$1100(Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsanandroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;->onItemClicked(I)V

    .line 391
    :cond_0
    return-void
.end method
