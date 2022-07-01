.class abstract Lccsancom/google/android/material/progressindicator/DrawingDelegate;
.super Ljava/lang/Object;
.source "DrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

.field spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/android/material/progressindicator/DrawingDelegate;, "Lccsancom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    .local p1, "spec":Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 32
    return-void
.end method


# virtual methods
.method abstract adjustCanvas(Lccsanandroid/graphics/Canvas;F)V
.end method

.method abstract fillIndicator(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFI)V
.end method

.method abstract fillTrack(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V
.end method

.method abstract getPreferredHeight()I
.end method

.method abstract getPreferredWidth()I
.end method

.method protected registerDrawable(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .locals 0
    .param p1, "drawable"    # Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 85
    .local p0, "this":Lccsancom/google/android/material/progressindicator/DrawingDelegate;, "Lccsancom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 86
    return-void
.end method

.method validateSpecAndAdjustCanvas(Lccsanandroid/graphics/Canvas;F)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "trackThicknessFraction"    # F

    .line 90
    .local p0, "this":Lccsancom/google/android/material/progressindicator/DrawingDelegate;, "Lccsancom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->validateSpec()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->adjustCanvas(Lccsanandroid/graphics/Canvas;F)V

    .line 92
    return-void
.end method
