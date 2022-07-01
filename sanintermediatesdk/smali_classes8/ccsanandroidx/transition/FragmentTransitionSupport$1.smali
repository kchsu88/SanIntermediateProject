.class Lccsanandroidx/transition/FragmentTransitionSupport$1;
.super Lccsanandroidx/transition/Transition$EpicenterCallback;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/FragmentTransitionSupport;Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/FragmentTransitionSupport;

    .line 91
    iput-object p1, p0, Lccsanandroidx/transition/FragmentTransitionSupport$1;->this$0:Lccsanandroidx/transition/FragmentTransitionSupport;

    iput-object p2, p0, Lccsanandroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Lccsanandroid/graphics/Rect;

    invoke-direct {p0}, Lccsanandroidx/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Lccsanandroidx/transition/Transition;)Lccsanandroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 94
    iget-object v0, p0, Lccsanandroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Lccsanandroid/graphics/Rect;

    return-object v0
.end method
