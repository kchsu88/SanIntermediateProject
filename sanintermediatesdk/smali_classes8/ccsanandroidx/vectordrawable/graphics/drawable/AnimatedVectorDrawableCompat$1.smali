.class Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Lccsanandroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 733
    iput-object p1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 736
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 737
    return-void
.end method

.method public scheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 741
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2, p3, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 742
    return-void
.end method

.method public unscheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 746
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 747
    return-void
.end method
