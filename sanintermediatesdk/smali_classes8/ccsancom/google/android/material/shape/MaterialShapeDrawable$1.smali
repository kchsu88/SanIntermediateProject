.class Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 215
    iput-object p1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCornerPathCreated(Lccsancom/google/android/material/shape/ShapePath;Lccsanandroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "cornerPath"    # Lccsancom/google/android/material/shape/ShapePath;
    .param p2, "transform"    # Lccsanandroid/graphics/Matrix;
    .param p3, "count"    # I

    .line 219
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->access$000(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 220
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->access$100(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v0

    invoke-virtual {p1, p2}, Lccsancom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Lccsanandroid/graphics/Matrix;)Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v1

    aput-object v1, v0, p3

    .line 221
    return-void
.end method

.method public onEdgePathCreated(Lccsancom/google/android/material/shape/ShapePath;Lccsanandroid/graphics/Matrix;I)V
    .locals 3
    .param p1, "edgePath"    # Lccsancom/google/android/material/shape/ShapePath;
    .param p2, "transform"    # Lccsanandroid/graphics/Matrix;
    .param p3, "count"    # I

    .line 225
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->access$000(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapePath;->containsIncompatibleShadowOp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 226
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->access$200(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v0

    invoke-virtual {p1, p2}, Lccsancom/google/android/material/shape/ShapePath;->createShadowCompatOperation(Lccsanandroid/graphics/Matrix;)Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    move-result-object v1

    aput-object v1, v0, p3

    .line 227
    return-void
.end method
