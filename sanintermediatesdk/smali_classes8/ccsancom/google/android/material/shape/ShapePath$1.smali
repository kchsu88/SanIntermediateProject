.class Lccsancom/google/android/material/shape/ShapePath$1;
.super Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Lccsanandroid/graphics/Matrix;)Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/shape/ShapePath;

.field final synthetic val$operations:Ljava/util/List;

.field final synthetic val$transformCopy:Lccsanandroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/shape/ShapePath;Ljava/util/List;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/shape/ShapePath;

    .line 258
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapePath$1;->this$0:Lccsancom/google/android/material/shape/ShapePath;

    iput-object p2, p0, Lccsancom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    iput-object p3, p0, Lccsancom/google/android/material/shape/ShapePath$1;->val$transformCopy:Lccsanandroid/graphics/Matrix;

    invoke-direct {p0}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lccsancom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 262
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$1;->val$operations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 263
    .local v1, "op":Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    iget-object v2, p0, Lccsancom/google/android/material/shape/ShapePath$1;->val$transformCopy:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v1, v2, p2, p3, p4}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lccsanandroid/graphics/Matrix;Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V

    .line 264
    .end local v1    # "op":Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method
