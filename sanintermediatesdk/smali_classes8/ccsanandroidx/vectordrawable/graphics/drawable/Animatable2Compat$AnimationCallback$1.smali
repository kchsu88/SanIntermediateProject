.class Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;
.super Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 78
    iput-object p1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method