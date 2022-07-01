.class Lccsanandroidx/core/view/DragStartHelper$2;
.super Ljava/lang/Object;
.source "DragStartHelper.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/DragStartHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/DragStartHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/DragStartHelper;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/view/DragStartHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lccsanandroidx/core/view/DragStartHelper$2;->this$0:Lccsanandroidx/core/view/DragStartHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lccsanandroidx/core/view/DragStartHelper$2;->this$0:Lccsanandroidx/core/view/DragStartHelper;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/DragStartHelper;->onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
