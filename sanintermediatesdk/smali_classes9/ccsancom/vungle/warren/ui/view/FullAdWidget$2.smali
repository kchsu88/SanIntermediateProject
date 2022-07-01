.class Lccsancom/vungle/warren/ui/view/FullAdWidget$2;
.super Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullAdWidget.java"


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

    .line 193
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$2;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Lccsanandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Lccsanandroid/view/MotionEvent;

    .line 197
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$2;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$200(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$2;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$100(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroid/view/View$OnClickListener;->onClick(Lccsanandroid/view/View;)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method
