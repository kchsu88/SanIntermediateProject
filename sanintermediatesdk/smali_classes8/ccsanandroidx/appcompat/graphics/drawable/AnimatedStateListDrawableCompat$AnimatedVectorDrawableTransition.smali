.class Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;
.super Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 1
    .param p1, "avd"    # Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 434
    iput-object p1, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 435
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 439
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 440
    return-void
.end method

.method public stop()V
    .locals 1

    .line 444
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 445
    return-void
.end method
