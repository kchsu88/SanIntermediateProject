.class Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 548
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 549
    iput-object p1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 550
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 586
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 3

    .line 554
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 556
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 557
    iget-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 558
    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 563
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 565
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 566
    iget-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 567
    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 572
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 574
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 575
    iget-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 576
    return-object v0
.end method
