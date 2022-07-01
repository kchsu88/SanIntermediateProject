.class Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
.super Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final mA:Lccsanandroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Lccsanandroid/graphics/drawable/Animatable;)V
    .locals 1
    .param p1, "a"    # Lccsanandroid/graphics/drawable/Animatable;

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 371
    iput-object p1, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Lccsanandroid/graphics/drawable/Animatable;

    .line 372
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 376
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Lccsanandroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Lccsanandroid/graphics/drawable/Animatable;->start()V

    .line 377
    return-void
.end method

.method public stop()V
    .locals 1

    .line 381
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Lccsanandroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Lccsanandroid/graphics/drawable/Animatable;->stop()V

    .line 382
    return-void
.end method
