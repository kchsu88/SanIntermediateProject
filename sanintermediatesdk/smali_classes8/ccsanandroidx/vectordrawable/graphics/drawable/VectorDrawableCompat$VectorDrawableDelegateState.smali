.class Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 975
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 976
    iput-object p1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 977
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 1003
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1008
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 981
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 982
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 983
    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 988
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 989
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 990
    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 995
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 996
    .local v0, "drawableCompat":Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 997
    invoke-virtual {v1, p1, p2}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 998
    return-object v0
.end method
