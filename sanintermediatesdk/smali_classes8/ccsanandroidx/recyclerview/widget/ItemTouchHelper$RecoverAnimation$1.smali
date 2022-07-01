.class Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 2411
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 2414
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2415
    return-void
.end method
