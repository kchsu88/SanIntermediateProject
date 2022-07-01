.class public Lccsancom/google/android/material/animation/ImageMatrixProperty;
.super Lccsanandroid/util/Property;
.source "ImageMatrixProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/widget/ImageView;",
        "Lccsanandroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final matrix:Lccsanandroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    const-class v0, Lccsanandroid/graphics/Matrix;

    const-string v1, "imageMatrixProperty"

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/animation/ImageMatrixProperty;->matrix:Lccsanandroid/graphics/Matrix;

    .line 32
    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;
    .locals 2
    .param p1, "object"    # Lccsanandroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lccsancom/google/android/material/animation/ImageMatrixProperty;->matrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getImageMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->set(Lccsanandroid/graphics/Matrix;)V

    .line 43
    iget-object v0, p0, Lccsancom/google/android/material/animation/ImageMatrixProperty;->matrix:Lccsanandroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/animation/ImageMatrixProperty;->get(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "object"    # Lccsanandroid/widget/ImageView;
    .param p2, "value"    # Lccsanandroid/graphics/Matrix;

    .line 36
    invoke-virtual {p1, p2}, Lccsanandroid/widget/ImageView;->setImageMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 37
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lccsanandroid/widget/ImageView;

    check-cast p2, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/animation/ImageMatrixProperty;->set(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V

    return-void
.end method
