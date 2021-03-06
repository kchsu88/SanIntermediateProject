.class public final Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;
.source "CircularProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/progressindicator/CircularProgressIndicator$IndicatorDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final INDICATOR_DIRECTION_CLOCKWISE:I = 0x0

.field public static final INDICATOR_DIRECTION_COUNTERCLOCKWISE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_CircularProgressIndicator:I

    sput v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 66
    sget v0, Lccsancom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    sget v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 73
    invoke-direct {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->initializeDrawables()V

    .line 74
    return-void
.end method

.method private initializeDrawables()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->setIndeterminateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/DeterminateDrawable;->createCircularDrawable(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lccsancom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->setProgressDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method


# virtual methods
.method bridge synthetic createSpec(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->createSpec(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    move-result-object p1

    return-object p1
.end method

.method createSpec(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 80
    new-instance v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getIndicatorDirection()I
    .locals 1

    .line 173
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    return v0
.end method

.method public getIndicatorInset()I
    .locals 1

    .line 116
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 143
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    return v0
.end method

.method public setIndicatorDirection(I)V
    .locals 1
    .param p1, "indicatorDirection"    # I

    .line 185
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    .line 186
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    .line 187
    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 1
    .param p1, "indicatorInset"    # I

    .line 128
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    if-eq v0, p1, :cond_0

    .line 129
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 130
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    .line 132
    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 1
    .param p1, "indicatorSize"    # I

    .line 157
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    if-eq v0, p1, :cond_0

    .line 158
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 159
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    .line 160
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    .line 162
    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 1
    .param p1, "trackThickness"    # I

    .line 103
    invoke-super {p0, p1}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    .line 104
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    .line 105
    return-void
.end method
