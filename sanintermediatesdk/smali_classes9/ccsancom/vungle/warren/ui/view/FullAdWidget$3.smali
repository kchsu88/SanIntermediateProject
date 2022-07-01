.class Lccsancom/vungle/warren/ui/view/FullAdWidget$3;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListeners()V
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

    .line 212
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$3;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 215
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$3;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$300(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/view/GestureDetector;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    .line 216
    const/4 v0, 0x1

    return v0
.end method
