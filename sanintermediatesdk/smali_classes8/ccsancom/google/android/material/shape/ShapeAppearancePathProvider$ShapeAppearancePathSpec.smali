.class final Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShapeAppearancePathSpec"
.end annotation


# instance fields
.field public final bounds:Lccsanandroid/graphics/RectF;

.field public final interpolation:F

.field public final path:Lccsanandroid/graphics/Path;

.field public final pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field public final shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Lccsanandroid/graphics/Path;)V
    .locals 0
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "interpolation"    # F
    .param p3, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p4, "pathListener"    # Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .param p5, "path"    # Lccsanandroid/graphics/Path;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p4, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 350
    iput-object p1, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 351
    iput p2, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    .line 352
    iput-object p3, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Lccsanandroid/graphics/RectF;

    .line 353
    iput-object p5, p0, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Lccsanandroid/graphics/Path;

    .line 354
    return-void
.end method
