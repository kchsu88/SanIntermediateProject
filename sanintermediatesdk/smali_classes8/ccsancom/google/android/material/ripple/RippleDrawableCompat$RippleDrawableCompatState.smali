.class final Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/ripple/RippleDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RippleDrawableCompatState"
.end annotation


# instance fields
.field delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field shouldDrawDelegate:Z


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V
    .locals 1
    .param p1, "orig"    # Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    .line 180
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 181
    iget-object v0, p1, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iput-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 182
    iget-boolean v0, p1, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    iput-boolean v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 1
    .param p1, "delegate"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 175
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 176
    iput-object p1, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    .line 178
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->newDrawable()Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable()Lccsancom/google/android/material/ripple/RippleDrawableCompat;
    .locals 3

    .line 188
    new-instance v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    new-instance v1, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;Lccsancom/google/android/material/ripple/RippleDrawableCompat$1;)V

    return-object v0
.end method
