.class public abstract Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.super Ljava/lang/Object;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimationCallback"
.end annotation


# instance fields
.field mPlatformCallback:Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPlatformCallback()Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 90
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object v0
.end method

.method public onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method
