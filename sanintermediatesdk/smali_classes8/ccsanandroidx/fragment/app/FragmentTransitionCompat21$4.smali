.class Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;
.super Lccsanandroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$epicenter:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentTransitionCompat21;Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentTransitionCompat21;

    .line 306
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;->this$0:Lccsanandroidx/fragment/app/FragmentTransitionCompat21;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Lccsanandroid/graphics/Rect;

    invoke-direct {p0}, Lccsanandroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Lccsanandroid/transition/Transition;)Lccsanandroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 309
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Lccsanandroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;->val$epicenter:Lccsanandroid/graphics/Rect;

    return-object v0

    .line 310
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
