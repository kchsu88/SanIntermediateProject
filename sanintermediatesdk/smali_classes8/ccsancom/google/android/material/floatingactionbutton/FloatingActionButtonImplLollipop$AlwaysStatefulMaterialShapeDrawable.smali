.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;
.super Lccsancom/google/android/material/shape/MaterialShapeDrawable;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlwaysStatefulMaterialShapeDrawable"
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 256
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 257
    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .line 261
    const/4 v0, 0x1

    return v0
.end method