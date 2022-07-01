.class Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;
.super Lccsanandroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V
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

    .line 81
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;->this$0:Lccsanandroidx/fragment/app/FragmentTransitionCompat21;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;->val$epicenter:Lccsanandroid/graphics/Rect;

    invoke-direct {p0}, Lccsanandroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Lccsanandroid/transition/Transition;)Lccsanandroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 84
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;->val$epicenter:Lccsanandroid/graphics/Rect;

    return-object v0
.end method
