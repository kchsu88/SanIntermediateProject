.class Lccsanandroidx/transition/ChangeBounds$7;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/ChangeBounds;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mViewBounds:Lccsanandroidx/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Lccsanandroidx/transition/ChangeBounds;

.field final synthetic val$viewBounds:Lccsanandroidx/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroidx/transition/ChangeBounds$ViewBounds;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeBounds;

    .line 326
    iput-object p1, p0, Lccsanandroidx/transition/ChangeBounds$7;->this$0:Lccsanandroidx/transition/ChangeBounds;

    iput-object p2, p0, Lccsanandroidx/transition/ChangeBounds$7;->val$viewBounds:Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    iput-object p2, p0, Lccsanandroidx/transition/ChangeBounds$7;->mViewBounds:Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    return-void
.end method
