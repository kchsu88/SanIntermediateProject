.class Lccsanandroidx/constraintlayout/motion/widget/TouchResponse$1;
.super Ljava/lang/Object;
.source "TouchResponse.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/motion/widget/TouchResponse;->setupTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/motion/widget/TouchResponse;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/motion/widget/TouchResponse;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/motion/widget/TouchResponse;

    .line 410
    iput-object p1, p0, Lccsanandroidx/constraintlayout/motion/widget/TouchResponse$1;->this$0:Lccsanandroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "motionEvent"    # Lccsanandroid/view/MotionEvent;

    .line 413
    const/4 v0, 0x0

    return v0
.end method
